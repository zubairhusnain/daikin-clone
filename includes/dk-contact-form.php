<?php
declare(strict_types=1);

require_once __DIR__ . '/dk-forms.php';
require_once __DIR__ . '/dk-contact-mail.php';

const DK_CONTACT_TOPICS = [
    '' => 'Select a topic',
    'Products' => 'Air conditioning & refrigeration products',
    'After Sales Service' => 'After sales service',
    'Corporate' => 'Corporate information',
    'Investor Relations' => 'Investor relations',
    'Sustainability' => 'Sustainability',
    'Other' => 'Other',
];

function dk_contact_form_handle(array $post): array
{
    if (!dk_contact_form_enabled()) {
        return [
            'ok' => false,
            'message' => 'The contact form is temporarily unavailable. Please check back soon.',
            'values' => [],
            'disabled' => true,
        ];
    }

    $values = [
        'username' => trim((string)($post['username'] ?? '')),
        'email' => trim((string)($post['email'] ?? '')),
        'topic' => trim((string)($post['topic'] ?? '')),
        'subject' => trim((string)($post['subject'] ?? '')),
        'message' => trim((string)($post['message'] ?? '')),
    ];

    if ($values['username'] === '') {
        return ['ok' => false, 'message' => 'Please enter your name.', 'values' => $values];
    }
    if ($values['email'] === '' || !filter_var($values['email'], FILTER_VALIDATE_EMAIL)) {
        return ['ok' => false, 'message' => 'Please enter a valid email address.', 'values' => $values];
    }
    if ($values['topic'] === '' || !isset(DK_CONTACT_TOPICS[$values['topic']])) {
        return ['ok' => false, 'message' => 'Please select a topic.', 'values' => $values];
    }
    if ($values['subject'] === '') {
        return ['ok' => false, 'message' => 'Please enter a subject.', 'values' => $values];
    }
    if ($values['message'] === '') {
        return ['ok' => false, 'message' => 'Please enter a message.', 'values' => $values];
    }
    if (strlen($values['message']) > 10000) {
        return ['ok' => false, 'message' => 'Message is too long (max 10,000 characters).', 'values' => $values];
    }

    if (trim((string)($post['website'] ?? '')) !== '') {
        return ['ok' => true, 'message' => 'Thank you. Your message has been sent.', 'values' => []];
    }

    $fullSubject = $values['topic'] . ' — ' . $values['subject'];
    $result = dk_contact_send_mail(
        $values['username'],
        $values['email'],
        $fullSubject,
        $values['message']
    );

    if ($result['ok']) {
        return ['ok' => true, 'message' => $result['message'], 'values' => []];
    }

    return ['ok' => false, 'message' => $result['message'], 'values' => $values];
}

function dk_contact_h(string $value): string
{
    return htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
}

function dk_contact_form_render(array $state): string
{
    $enabled = dk_contact_form_enabled();
    $v = $state['values'] ?? [];
    $ok = !empty($state['ok']);
    $msg = dk_contact_h((string)($state['message'] ?? ''));
    $disabledAttr = $enabled ? '' : ' disabled';

    $disabledNotice = $enabled
        ? ''
        : '<div class="dk-contact-alert dk-contact-alert--info" role="status">'
        . 'Copy <code>includes/contact-mail.local.php.example</code> to '
        . '<code>includes/contact-mail.local.php</code> and add your SMTP username and password.'
        . '</div>';

    $alert = '';
    if ($msg !== '' && ($enabled || !empty($state['disabled']))) {
        $class = $ok ? 'dk-contact-alert dk-contact-alert--success' : 'dk-contact-alert dk-contact-alert--error';
        $alert = '<div class="' . $class . '" role="status">' . $msg . '</div>';
    }

    $topicOptions = '';
    foreach (DK_CONTACT_TOPICS as $value => $label) {
        $selected = (($v['topic'] ?? '') === $value) ? ' selected' : '';
        $topicOptions .= '<option value="' . dk_contact_h($value) . '"' . $selected . '>'
            . dk_contact_h($label) . '</option>';
    }

    $u = dk_contact_h((string)($v['username'] ?? ''));
    $e = dk_contact_h((string)($v['email'] ?? ''));
    $s = dk_contact_h((string)($v['subject'] ?? ''));
    $m = dk_contact_h((string)($v['message'] ?? ''));

    $base = defined('DK_BASE_URL') ? DK_BASE_URL : '';

    return <<<HTML
<link rel="stylesheet" href="{$base}/assets/css/contact-form.css">
<div class="dk-contact-block" id="dk-contact-form">
  <div class="dk-contact-form-wrap">
    {$disabledNotice}
    {$alert}
    <form class="dk-contact-form" method="post" action="#dk-contact-form" novalidate>
      <fieldset class="dk-contact-fieldset"{$disabledAttr}>
        <div class="dk-contact-field">
          <label for="dk-username">Name <span class="dk-contact-required">*</span></label>
          <input type="text" id="dk-username" name="username" required autocomplete="name" maxlength="120" value="{$u}"{$disabledAttr}>
        </div>
        <div class="dk-contact-field">
          <label for="dk-email">Email <span class="dk-contact-required">*</span></label>
          <input type="email" id="dk-email" name="email" required autocomplete="email" maxlength="254" value="{$e}"{$disabledAttr}>
        </div>
        <div class="dk-contact-field">
          <label for="dk-topic">Topic <span class="dk-contact-required">*</span></label>
          <select id="dk-topic" name="topic" required{$disabledAttr}>{$topicOptions}</select>
        </div>
        <div class="dk-contact-field">
          <label for="dk-subject">Subject <span class="dk-contact-required">*</span></label>
          <input type="text" id="dk-subject" name="subject" required maxlength="200" value="{$s}"{$disabledAttr}>
        </div>
        <div class="dk-contact-field">
          <label for="dk-message">Message <span class="dk-contact-required">*</span></label>
          <textarea id="dk-message" name="message" required rows="8" maxlength="10000"{$disabledAttr}>{$m}</textarea>
        </div>
        <div class="dk-contact-hp" aria-hidden="true">
          <label for="dk-website">Website</label>
          <input type="text" id="dk-website" name="website" tabindex="-1" autocomplete="off"{$disabledAttr}>
        </div>
        <button type="submit" class="g-btn g-btn-em dk-contact-submit"{$disabledAttr}>Send message</button>
      </fieldset>
    </form>
  </div>
</div>
HTML;
}
