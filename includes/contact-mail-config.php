<?php
declare(strict_types=1);

/**
 * Default SMTP settings. Copy contact-mail.local.php.example → contact-mail.local.php
 * and fill in your Gmail (or other) credentials.
 */
return [
    'recipient' => 'your-email@gmail.com',
    'from_email' => 'your-email@gmail.com',
    'from_name' => 'Daikin Contact Form',

    'smtp' => [
        'enabled' => true,
        'host' => 'smtp.gmail.com',
        'port' => 587,
        'encryption' => 'tls',
        'username' => 'your-email@gmail.com',
        'password' => '',
    ],
];
