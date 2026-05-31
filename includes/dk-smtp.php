<?php
declare(strict_types=1);

/**
 * Minimal SMTP client (no Composer). Supports STARTTLS (587) and SMTPS (465).
 */
final class DkSmtpClient
{
    private $socket;
    private string $lastError = '';

    public function getLastError(): string
    {
        return $this->lastError;
    }

    /**
     * @param array{host:string,port:int,encryption:string,username:string,password:string} $smtp
     */
    public function send(
        array $smtp,
        string $to,
        string $fromEmail,
        string $fromName,
        string $replyEmail,
        string $replyName,
        string $subject,
        string $body
    ): bool {
        $host = trim($smtp['host'] ?? 'smtp.gmail.com');
        $port = (int)($smtp['port'] ?? 587);
        $encryption = strtolower(trim($smtp['encryption'] ?? 'tls'));
        $user = trim($smtp['username'] ?? '');
        $pass = (string)($smtp['password'] ?? '');

        if ($host === '' || $user === '' || $pass === '') {
            $this->lastError = 'SMTP host, username, and password are required.';
            return false;
        }

        $remote = $encryption === 'ssl'
            ? 'ssl://' . $host . ':' . $port
            : 'tcp://' . $host . ':' . $port;

        $this->socket = @stream_socket_client(
            $remote,
            $errno,
            $errstr,
            20,
            STREAM_CLIENT_CONNECT,
            stream_context_create(['ssl' => ['verify_peer' => true, 'verify_peer_name' => true]])
        );

        if (!is_resource($this->socket)) {
            $this->lastError = "Could not connect to {$host}:{$port} — {$errstr} ({$errno})";
            return false;
        }

        stream_set_timeout($this->socket, 20);

        try {
            $this->expect(220);

            $this->cmd('EHLO localhost');
            $this->expect(250);

            if ($encryption === 'tls') {
                $this->cmd('STARTTLS');
                $this->expect(220);
                if (!stream_socket_enable_crypto($this->socket, true, STREAM_CRYPTO_METHOD_TLS_CLIENT)) {
                    throw new RuntimeException('STARTTLS failed');
                }
                $this->cmd('EHLO localhost');
                $this->expect(250);
            }

            $this->cmd('AUTH LOGIN');
            $this->expect(334);
            $this->cmd(base64_encode($user));
            $this->expect(334);
            $this->cmd(base64_encode($pass));
            $this->expect(235);

            $fromEmail = $this->sanitizeEmail($fromEmail) ?: $user;
            $to = $this->sanitizeEmail($to);
            if ($to === '') {
                throw new RuntimeException('Invalid recipient email');
            }

            $this->cmd('MAIL FROM:<' . $fromEmail . '>');
            $this->expect(250);
            $this->cmd('RCPT TO:<' . $to . '>');
            $this->expect(250);

            $this->cmd('DATA');
            $this->expect(354);

            $message = $this->buildMessage($fromEmail, $fromName, $to, $replyEmail, $replyName, $subject, $body);
            fwrite($this->socket, $message);
            $this->expect(250);

            $this->cmd('QUIT');
            $this->expect(221);

            return true;
        } catch (Throwable $e) {
            $this->lastError = $e->getMessage();
            return false;
        } finally {
            if (is_resource($this->socket)) {
                fclose($this->socket);
            }
        }
    }

    private function buildMessage(
        string $fromEmail,
        string $fromName,
        string $to,
        string $replyEmail,
        string $replyName,
        string $subject,
        string $body
    ): string {
        $fromHeader = $this->encodeAddress($fromName, $fromEmail);
        $replyHeader = $this->encodeAddress($replyName, $replyEmail);
        $subject = $this->encodeHeader($subject);
        $body = str_replace(["\r\n", "\r"], "\n", $body);
        $body = str_replace("\n.", "\n..", $body);
        $body = preg_replace('/\r?\n/', "\r\n", $body) ?? $body;

        $lines = [
            'Date: ' . gmdate('D, d M Y H:i:s') . ' +0000',
            'From: ' . $fromHeader,
            'To: ' . $to,
            'Reply-To: ' . $replyHeader,
            'Subject: ' . $subject,
            'MIME-Version: 1.0',
            'Content-Type: text/plain; charset=UTF-8',
            'Content-Transfer-Encoding: 8bit',
            '',
            $body,
            '',
        ];

        return implode("\r\n", $lines) . "\r\n.\r\n";
    }

    private function encodeAddress(string $name, string $email): string
    {
        $email = $this->sanitizeEmail($email);
        $name = str_replace(["\r", "\n", '"'], '', trim($name));
        if ($name === '') {
            return $email;
        }
        return '"' . $name . '" <' . $email . '>';
    }

    private function encodeHeader(string $text): string
    {
        $text = str_replace(["\r", "\n"], '', $text);
        if (preg_match('/[^\x20-\x7E]/', $text)) {
            return '=?UTF-8?B?' . base64_encode($text) . '?=';
        }
        return $text;
    }

    private function sanitizeEmail(string $email): string
    {
        $email = filter_var(trim($email), FILTER_SANITIZE_EMAIL);
        return is_string($email) && filter_var($email, FILTER_VALIDATE_EMAIL) ? $email : '';
    }

    private function cmd(string $line): void
    {
        fwrite($this->socket, $line . "\r\n");
    }

    private function expect(int $code): void
    {
        $response = $this->readResponse();
        if (!str_starts_with($response, (string)$code)) {
            throw new RuntimeException(trim($response) ?: "Expected SMTP {$code}");
        }
    }

    private function readResponse(): string
    {
        $data = '';
        while (!feof($this->socket)) {
            $line = fgets($this->socket, 515);
            if ($line === false) {
                break;
            }
            $data .= $line;
            if (isset($line[3]) && $line[3] === ' ') {
                break;
            }
        }
        return $data;
    }
}
