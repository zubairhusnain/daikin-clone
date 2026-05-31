<?php
declare(strict_types=1);

function dk_contact_mail_config(): array
{
    static $config = null;
    if ($config !== null) {
        return $config;
    }

    $defaults = require __DIR__ . '/contact-mail-config.php';
    $local = __DIR__ . '/contact-mail.local.php';
    if (is_file($local)) {
        $overrides = require $local;
        if (is_array($overrides)) {
            $defaults = array_replace_recursive($defaults, $overrides);
        }
    }

    $config = $defaults;
    return $config;
}

function dk_contact_smtp_ready(?array $config = null): bool
{
    $config ??= dk_contact_mail_config();
    $smtp = $config['smtp'] ?? [];
    if (empty($smtp['enabled'])) {
        return false;
    }

    $host = trim((string)($smtp['host'] ?? ''));
    $user = trim((string)($smtp['username'] ?? ''));
    $pass = (string)($smtp['password'] ?? '');

    return $host !== '' && $user !== '' && $pass !== '';
}
