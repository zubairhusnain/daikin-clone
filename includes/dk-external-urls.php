<?php
declare(strict_types=1);

function dk_decode_attr_url(string $url): string
{
    return html_entity_decode($url, ENT_QUOTES | ENT_HTML5, 'UTF-8');
}

function dk_daikin_hosts(): array
{
    return ['www.daikin.com', 'daikin.com'];
}

function dk_is_asset_path(string $path): bool
{
    return (bool)preg_match('~\.(css|js|mjs|ashx|png|jpe?g|gif|webp|svg|ico|woff2?|ttf|eot|pdf|mp4|webm|map)(\?|#|$)~i', $path);
}

function dk_map_external_url(string $url): string
{
    $url = dk_decode_attr_url(trim($url));
    $base = DK_BASE_URL;

    if (
        $url === '' ||
        preg_match('~^(?:mailto:|tel:|javascript:|data:|blob:|#)~i', $url)
    ) {
        return $url;
    }

    if (str_starts_with($url, '//')) {
        $url = 'https:' . $url;
    }

    if (str_starts_with($url, $base)) {
        return $url;
    }

    if (str_contains($url, '/assets/')) {
        $pos = strpos($url, '/assets/');
        if ($pos !== false) {
            return $base . substr($url, $pos);
        }
    }

    $parts = parse_url($url);
    if ($parts === false || !isset($parts['host'])) {
        return $base . '/';
    }

    $host = strtolower($parts['host']);
    $localHost = parse_url($base, PHP_URL_HOST);
    if (is_string($localHost) && $localHost !== '' && $host === strtolower($localHost)) {
        return $url;
    }

    $path = $parts['path'] ?? '/';
    $query = isset($parts['query']) ? ('?' . $parts['query']) : '';
    $fragment = isset($parts['fragment']) ? ('#' . $parts['fragment']) : '';

    if ($host === 'www.youtube.com' && preg_match('#^/embed/#i', $path)) {
        return $url;
    }

    if (in_array($host, dk_daikin_hosts(), true)) {
        if (preg_match('#^/-/?media/#i', $path) || dk_is_asset_path($path)) {
            return $base . '/assets/www.daikin.com' . $path . $query . $fragment;
        }

        $route = trim($path, '/');
        if ($route === '' || $route === 'index.html' || $route === 'index.php') {
            return $base . '/';
        }
        if (str_ends_with($route, '/index.html')) {
            $route = substr($route, 0, -strlen('/index.html'));
        }
        if (str_ends_with($route, '/index.php')) {
            $route = substr($route, 0, -strlen('/index.php'));
        }

        return $base . '/' . $route . $query . $fragment;
    }

    $mirrored = __DIR__ . '/../assets/' . $host;
    if (is_dir($mirrored)) {
        return $base . '/assets/' . $host . $path . $query . $fragment;
    }

    return $base . '/';
}

function dk_rewrite_external_urls(string $html): string
{
    $html = preg_replace_callback(
        '~\b(href|src|content|action|poster|cite|data-href|data-url|data-src)=(["\'])(https?://[^"\']+)\2~i',
        static function (array $m): string {
            if (str_contains($m[3], '/assets/') || str_contains($m[3], '/daikin-clone/')) {
                return $m[0];
            }
            $next = dk_map_external_url($m[3]);
            return $m[1] . '=' . $m[2] . $next . $m[2];
        },
        $html
    ) ?? $html;

    $html = preg_replace_callback(
        '~\b(href|src|content|action|poster|cite|data-href|data-url|data-src)=(["\'])//([^"\']+)\2~i',
        static function (array $m): string {
            $next = dk_map_external_url('https://' . $m[3]);
            return $m[1] . '=' . $m[2] . $next . $m[2];
        },
        $html
    ) ?? $html;

    return $html;
}
