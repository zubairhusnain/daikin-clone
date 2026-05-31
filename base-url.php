<?php
declare(strict_types=1);

require_once __DIR__ . '/includes/dk-php-polyfill.php';
require_once __DIR__ . '/includes/dk-external-urls.php';
require_once __DIR__ . '/includes/dk-sanitize-html.php';

function dk_install_base_path(): string
{
    static $path = null;
    if ($path !== null) {
        return $path;
    }

    $override = getenv('DK_BASE_PATH');
    if (is_string($override)) {
        if ($override === '' || $override === '/') {
            $path = '';
        } else {
            $path = str_starts_with($override, '/') ? $override : '/' . $override;
        }
        return $path;
    }

    $docRoot = $_SERVER['DOCUMENT_ROOT'] ?? '';
    $here = realpath(__DIR__);
    if ($docRoot !== '' && $here !== false) {
        $root = realpath($docRoot);
        if ($root !== false) {
            if ($root === $here) {
                $path = '';
                return $path;
            }
            $rootPrefix = $root . DIRECTORY_SEPARATOR;
            if (str_starts_with($here, $rootPrefix)) {
                $rel = substr($here, strlen($root));
                $path = str_replace('\\', '/', $rel);
                if ($path !== '' && !str_starts_with($path, '/')) {
                    $path = '/' . $path;
                }
                return $path;
            }
        }
    }

    $folder = basename(__DIR__);
    $parent = basename(dirname(__DIR__));
    if ($parent !== '' && !in_array($parent, ['htdocs', 'www', 'public_html', 'httpdocs', 'html', 'web'], true)) {
        $path = '/' . $parent . '/' . $folder;
    } else {
        $path = '/' . $folder;
    }

    return $path;
}

function dk_normalize_request_path(string $path): string
{
    $base = dk_install_base_path();
    if ($base !== '') {
        if ($path === $base) {
            $path = '/';
        } elseif (str_starts_with($path, $base . '/')) {
            $path = substr($path, strlen($base));
        }
    }

    if ($path === '') {
        $path = '/';
    }

    return $path;
}

function dk_request_is_https(): bool
{
    if (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') {
        return true;
    }
    if (($_SERVER['SERVER_PORT'] ?? '') === '443') {
        return true;
    }
    if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && strtolower((string)$_SERVER['HTTP_X_FORWARDED_PROTO']) === 'https') {
        return true;
    }

    return false;
}

function dk_detect_base_url(): string
{
    $override = getenv('DK_BASE_URL');
    if (is_string($override) && $override !== '') {
        return rtrim($override, '/');
    }

    $path = dk_install_base_path();
    $host = '';

    if (isset($_SERVER['HTTP_HOST']) && $_SERVER['HTTP_HOST'] !== '') {
        $host = (string)$_SERVER['HTTP_HOST'];
    } elseif (isset($_SERVER['SERVER_NAME']) && $_SERVER['SERVER_NAME'] !== '') {
        $host = (string)$_SERVER['SERVER_NAME'];
    }

    if ($host !== '') {
        $scheme = dk_request_is_https() ? 'https' : 'http';

        return rtrim($scheme . '://' . $host . $path, '/');
    }

    return $path === '' ? '' : rtrim($path, '/');
}

if (!defined('DK_BASE_URL')) {
    define('DK_BASE_URL', dk_detect_base_url());
}

function dk_legacy_baked_prefixes(): array
{
    static $prefixes = null;
    if ($prefixes !== null) {
        return $prefixes;
    }

    $prefixes = ['/daikin-clone/daikin_offline'];
    $override = getenv('DK_LEGACY_BAKE_PATH');
    if (is_string($override) && $override !== '') {
        $prefixes[] = rtrim($override, '/');
    }

    return $prefixes;
}

function dk_valid_page_routes(): array
{
    static $validRoutes = null;
    if ($validRoutes !== null) {
        return $validRoutes;
    }

    $validRoutes = ['' => true];
    $root = __DIR__;
    $iterator = new RecursiveIteratorIterator(
        new RecursiveDirectoryIterator($root, FilesystemIterator::SKIP_DOTS)
    );
    foreach ($iterator as $file) {
        if (!$file->isFile() || $file->getFilename() !== 'index.php') {
            continue;
        }
        $full = $file->getPathname();
        if (str_contains($full, DIRECTORY_SEPARATOR . 'includes' . DIRECTORY_SEPARATOR)) {
            continue;
        }
        if (str_contains($full, DIRECTORY_SEPARATOR . 'no-page' . DIRECTORY_SEPARATOR)) {
            continue;
        }
        $rel = str_replace('\\', '/', substr($file->getPath(), strlen($root) + 1));
        $validRoutes[$rel] = true;
    }

    return $validRoutes;
}

function dk_resolve_internal_href(string $currentRoute, string $href): ?string
{
    $href = trim($href);
    if (
        $href === '' ||
        str_starts_with($href, '#') ||
        str_starts_with($href, 'mailto:') ||
        str_starts_with($href, 'tel:') ||
        str_starts_with($href, 'javascript:') ||
        preg_match('~^https?://~i', $href)
    ) {
        return null;
    }

    $parts = parse_url($href);
    $path = $parts['path'] ?? '';
    if ($path === '' || dk_is_asset_path($path)) {
        return null;
    }

    $query = isset($parts['query']) ? ('?' . $parts['query']) : '';
    $hash = isset($parts['fragment']) ? ('#' . $parts['fragment']) : '';

    if (str_ends_with($path, '/index.html')) {
        $path = substr($path, 0, -strlen('/index.html'));
    } elseif (str_ends_with($path, '/index.php')) {
        $path = substr($path, 0, -strlen('/index.php'));
    } elseif ($path === 'index.html' || $path === 'index.php') {
        $path = '';
    }

    if (str_starts_with($path, '/')) {
        $resolved = trim($path, '/');
        foreach (dk_legacy_baked_prefixes() as $prefix) {
            $trim = trim($prefix, '/');
            if ($trim !== '' && str_starts_with($resolved, $trim . '/')) {
                $resolved = substr($resolved, strlen($trim) + 1);
                break;
            }
        }
    } else {
        $prefix = $currentRoute === '' ? '' : ($currentRoute . '/');
        if (str_starts_with($path, './')) {
            $path = substr($path, 2);
        }
        $combined = $prefix . $path;
        $segments = [];
        foreach (explode('/', $combined) as $seg) {
            if ($seg === '' || $seg === '.') {
                continue;
            }
            if ($seg === '..') {
                array_pop($segments);
                continue;
            }
            $segments[] = $seg;
        }
        $resolved = implode('/', $segments);
    }

    if (dk_is_asset_path($resolved)) {
        return null;
    }

    $url = DK_BASE_URL;
    if ($resolved !== '') {
        $url .= '/' . $resolved;
    }

    return $url . $query . $hash;
}

function dk_rewrite_baked_paths(string $html): string
{
    $base = DK_BASE_URL;
    $target = $base . '/';

    foreach (dk_legacy_baked_prefixes() as $prefix) {
        if ($prefix === '') {
            continue;
        }
        $quoted = preg_quote($prefix, '~');
        // Only rewrite baked paths at attribute/value starts — not inside http://host/.../prefix/...
        $html = preg_replace(
            '~(?<=["\'\(])' . $quoted . '/~',
            $target,
            $html
        ) ?? $html;
        $html = preg_replace(
            '~(?<=["\'\(])' . $quoted . '(?=["\'\)])~',
            $base,
            $html
        ) ?? $html;
    }

    $html = preg_replace('~<base\s+href=(["\'])#["\']\s*/?>~i', '', $html) ?? $html;

    if (!preg_match('~<base\s+href=~i', $html)) {
        $html = preg_replace('~<head([^>]*)>~i', '<head$1><base href="' . htmlspecialchars($target, ENT_QUOTES, 'UTF-8') . '">', $html, 1) ?? $html;
    } else {
        $html = preg_replace(
            '~<base\s+href=(["\'])[^"\']*\1~i',
            '<base href="' . htmlspecialchars($target, ENT_QUOTES, 'UTF-8') . '"',
            $html,
            1
        ) ?? $html;
    }

    return $html;
}

function dk_fix_mangled_section_hrefs(string $html): string
{
    $sections = 'air|corporate|products|investor|sustainability|careers|news|contact|press';

    return preg_replace_callback(
        '~\bhref=(["\'])/(?:[^"\']+/)+(' . $sections . ')(/[^"\']*)?\1~i',
        static function (array $m): string {
            return 'href=' . $m[1] . '/' . $m[2] . ($m[3] ?? '') . $m[1];
        },
        $html
    ) ?? $html;
}

function dk_rewrite_asset_urls_in_html(string $html): string
{
    $base = DK_BASE_URL;
    $requestPath = $_SERVER['REQUEST_URI'] ?? '/';
    $path = parse_url($requestPath, PHP_URL_PATH);
    if (!is_string($path) || $path === '') {
        $path = '/';
    }
    $path = dk_normalize_request_path($path);
    $currentRoute = trim($path, '/');

    $html = dk_rewrite_baked_paths($html);
    $html = dk_fix_mangled_section_hrefs($html);

    $html = preg_replace(
        '~\b(href|src)=(["\'])(?:\.\./)+(assets/[^"\']*)\2~i',
        '$1=$2' . $base . '/$3$2',
        $html
    ) ?? $html;

    $html = preg_replace(
        '~\b(href|src)=(["\'])\./(assets/[^"\']*)\2~i',
        '$1=$2' . $base . '/$3$2',
        $html
    ) ?? $html;

    $html = preg_replace(
        '~\b(href|src)=(["\'])/(assets/[^"\']*)\2~i',
        '$1=$2' . $base . '/$3$2',
        $html
    ) ?? $html;

    $html = preg_replace(
        "~url\\(([\"']?)(?:\\.\\./)+assets/~i",
        'url($1' . $base . '/assets/',
        $html
    ) ?? $html;

    $html = preg_replace(
        "~url\\(([\"']?)\\.\\/assets/~i",
        'url($1' . $base . '/assets/',
        $html
    ) ?? $html;

    $html = preg_replace(
        "~url\\(([\"']?)(assets/[^\"')]+)\\1\\)~i",
        'url($1' . $base . '/$2$1)',
        $html
    ) ?? $html;

    $offlineFiles = [
        'offline-layout-fix.css',
        'offline-media-fix.js',
        'offline-careers-fix.js',
        'offline-menu-fix.js',
        'offline-header-fix.js',
    ];
    foreach ($offlineFiles as $file) {
        $html = preg_replace(
            '~\b(href|src)=(["\'])[^"\']*' . preg_quote($file, '~') . '\2~i',
            '$1=$2' . $base . '/' . $file . '$2',
            $html
        ) ?? $html;
    }

    $html = dk_rewrite_external_urls($html);

    $html = preg_replace_callback(
        '~\b(href)=(["\'])([^"\']+)\2~i',
        static function (array $m) use ($currentRoute, $base): string {
            if (preg_match('~^/(' . 'air|corporate|products|investor|sustainability|careers|news|contact|press' . ')(/|$)~i', $m[3])) {
                return 'href=' . $m[2] . $base . $m[3] . $m[2];
            }
            $resolved = dk_resolve_internal_href($currentRoute, $m[3]);
            if ($resolved === null) {
                return $m[0];
            }
            return 'href=' . $m[2] . $resolved . $m[2];
        },
        $html
    ) ?? $html;

    $html = preg_replace(
        '~\b(href)=(["\'])' . preg_quote($base, '~') . '/index\.html\2~i',
        'href=$2' . $base . '$2',
        $html
    ) ?? $html;

    $html = preg_replace(
        '~\b(href)=(["\'])' . preg_quote($base, '~') . '/index\.php\2~i',
        'href=$2' . $base . '$2',
        $html
    ) ?? $html;

    $html = preg_replace_callback(
        '~\bhref=(["\'])([^"\']*?)index\.html\1~i',
        static function (array $m) use ($currentRoute): string {
            $resolved = dk_resolve_internal_href($currentRoute, $m[2] . $m[3]);
            if ($resolved !== null) {
                return 'href=' . $m[1] . $resolved . $m[1];
            }
            return 'href=' . $m[1] . $m[2] . $m[3] . $m[1];
        },
        $html
    ) ?? $html;

    $html = dk_sanitize_html($html);

    return $html;
}

function dk_start_output_rewrite(): void
{
    static $started = false;
    if ($started) {
        return;
    }
    $started = true;

    ob_start('dk_rewrite_asset_urls_in_html');
    register_shutdown_function(static function (): void {
        if (ob_get_level() > 0) {
            ob_end_flush();
        }
    });
}
