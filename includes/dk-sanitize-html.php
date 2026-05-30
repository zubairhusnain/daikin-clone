<?php
declare(strict_types=1);

function dk_third_party_url(string $url): bool
{
    $u = strtolower($url);

    $parts = [
        'googletagmanager.com',
        'google-analytics.com',
        'mieru-ca.com',
        'hm.mieru-ca.com',
        'hpjp.mieru-ca.com',
        'stormcaster.js',
        'cookielaw.org',
        'onetrust.com',
        'ot-sdk',
        'adobedtm.com',
        'demdex.net',
        'doubleclick.net',
    ];

    foreach ($parts as $part) {
        if (str_contains($u, $part)) {
            return true;
        }
    }

    return false;
}

function dk_sanitize_html(string $html): string
{
    $html = preg_replace_callback(
        '~<script\b[^>]*\bsrc=(["\'])(?:https?:)?//[^"\']+\1[^>]*>\s*</script>~i',
        static function (array $m): string {
            if (preg_match('~\bsrc=(["\'])([^"\']+)\1~i', $m[0], $src) && dk_third_party_url($src[2])) {
                return '';
            }
            return $m[0];
        },
        $html
    ) ?? $html;

    $html = preg_replace(
        '~<!--\s*Google Tag Manager\s*-->[\s\S]*?<!--\s*End Google Tag Manager\s*-->~i',
        '',
        $html
    ) ?? $html;

    return $html;
}
