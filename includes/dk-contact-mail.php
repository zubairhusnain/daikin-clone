<?php
declare(strict_types=1);

require_once __DIR__ . '/dk-contact-config.php';
require_once __DIR__ . '/dk-smtp.php';

function dk_contact_send_mail(string $username, string $email, string $subject, string $message): array
{
    if (!dk_contact_smtp_ready()) {
        return [
            'ok' => false,
            'message' => 'Email is not configured. Copy includes/contact-mail.local.php.example to includes/contact-mail.local.php and add your SMTP settings.',
        ];
    }

    $config = dk_contact_mail_config();
    $to = trim((string)($config['recipient'] ?? ''));
    if ($to === '' || !filter_var($to, FILTER_VALIDATE_EMAIL)) {
        return ['ok' => false, 'message' => 'Invalid recipient in contact-mail.local.php.'];
    }

    $fromEmail = trim((string)($config['from_email'] ?? ''));
    $fromName = trim((string)($config['from_name'] ?? 'Daikin Contact Form'));

    $safeName = trim($username);
    $safeEmail = trim($email);
    $safeSubject = str_replace(["\r", "\n"], '', trim($subject));
    $safeMessage = trim($message);

    if (!filter_var($safeEmail, FILTER_VALIDATE_EMAIL)) {
        return ['ok' => false, 'message' => 'Invalid sender email.'];
    }

    $mailSubject = 'Contact: ' . $safeSubject;
    $body = "Contact form submission\n\n"
        . "Name: {$safeName}\n"
        . "Email: {$safeEmail}\n"
        . "Subject: {$safeSubject}\n\n"
        . "Message:\n{$safeMessage}\n";

    $client = new DkSmtpClient();
    $ok = $client->send(
        $config['smtp'],
        $to,
        $fromEmail !== '' ? $fromEmail : (string)$config['smtp']['username'],
        $fromName,
        $safeEmail,
        $safeName,
        $mailSubject,
        $body
    );

    if ($ok) {
        return ['ok' => true, 'message' => 'Thank you. Your message has been sent.'];
    }

    return [
        'ok' => false,
        'message' => 'Could not send email. ' . $client->getLastError(),
    ];
}
