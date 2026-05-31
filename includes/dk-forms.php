<?php
declare(strict_types=1);

require_once __DIR__ . '/dk-contact-config.php';

/** Forms are enabled when contact-mail.local.php exists with valid SMTP credentials. */
function dk_forms_disabled(): bool
{
    if (getenv('DK_ENABLE_FORMS') === '1') {
        return false;
    }

    return !is_file(__DIR__ . '/contact-mail.local.php')
        || !dk_contact_smtp_ready();
}

function dk_contact_form_enabled(): bool
{
    return !dk_forms_disabled();
}
