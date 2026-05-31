<?php
declare(strict_types=1);

/** Marketing / analytics hosts and path fragments (not required for layout). */
function dk_marketing_url_fragments(): array
{
    return [
        'googletagmanager.com',
        'google-analytics.com',
        'googleadservices.com',
        'doubleclick.net',
        'mieru-ca.com',
        'hm.mieru-ca.com',
        'hpjp.mieru-ca.com',
        'fast.fonts.net',
        'stormcaster.js',
        '18f5227b-e27b-445a-a53f-f845fbe69b40',
        'validate.perfdrive.com',
        'perfdrive.com',
        'cookielaw.org',
        'onetrust.com',
        'ot-sdk',
        'adobedtm.com',
        'demdex.net',
        'facebook.com/share',
        'twitter.com/share',
        'linkedin.com/sharing',
        'VisitorIdentification.js',
        'layouts/system/VisitorIdentification',
    ];
}

function dk_is_marketing_url(string $url): bool
{
    $u = strtolower(html_entity_decode($url, ENT_QUOTES | ENT_HTML5, 'UTF-8'));
    if ($u === '' || str_starts_with($u, 'javascript:')) {
        return false;
    }

    foreach (dk_marketing_url_fragments() as $part) {
        if (str_contains($u, $part)) {
            return true;
        }
    }

    return false;
}

function dk_inline_script_is_marketing(string $scriptTag): bool
{
    if (preg_match('~\bsrc=(["\'])([^"\']*)\1~i', $scriptTag, $m) && dk_is_marketing_url($m[2])) {
        return true;
    }

    $needles = [
        'gtm.start',
        'googletagmanager',
        'GTM-',
        'dataLayer',
        'mieruca',
        'mierucajs',
        '__fid',
        '__fjsld',
        '__uzdbm_',
        'SSJSConnector',
        'stormcaster',
        'ssConf(',
        'OptanonWrapper',
        'OneTrust',
        'onetrust',
    ];

    foreach ($needles as $needle) {
        if (stripos($scriptTag, $needle) !== false) {
            return true;
        }
    }

    return false;
}

function dk_sanitize_html(string $html): string
{
    $html = preg_replace_callback(
        '~<script\b[^>]*>[\s\S]*?</script>~i',
        static function (array $m): string {
            return dk_inline_script_is_marketing($m[0]) ? '' : $m[0];
        },
        $html
    ) ?? $html;

    $html = preg_replace_callback(
        '~<script\b[^>]*/>~i',
        static function (array $m): string {
            return dk_inline_script_is_marketing($m[0]) ? '' : $m[0];
        },
        $html
    ) ?? $html;

    $html = preg_replace_callback(
        '~<link\b[^>]*>~i',
        static function (array $m): string {
            if (preg_match('~\bhref=(["\'])([^"\']*)\1~i', $m[0], $href) && dk_is_marketing_url($href[2])) {
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

    $html = preg_replace(
        '~<!--\s*Begin Mieruca Embed Code\s*-->[\s\S]*?<!--\s*End Mieruca Embed Code\s*-->~i',
        '',
        $html
    ) ?? $html;

    $html = preg_replace(
        '~<noscript\b[^>]*>[\s\S]*?googletagmanager[\s\S]*?</noscript>~i',
        '',
        $html
    ) ?? $html;

    $html = preg_replace(
        '~\s+onclick=(["\'])dataLayer\.push[\s\S]*?\1~i',
        '',
        $html
    ) ?? $html;

    $html = preg_replace('~<style id="onetrust-style">[\s\S]*?</style>~i', '', $html) ?? $html;
    $html = preg_replace('~<div id="onetrust-consent-sdk"[\s\S]*?</div>\s*(?=<div style="visibility)~)i', '', $html) ?? $html;
    $html = preg_replace('~<div class="onetrust-pc-dark-filter[^"]*"[^>]*>\s*</div>~i', '', $html) ?? $html;

    return $html;
}
