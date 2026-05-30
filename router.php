<?php
declare(strict_types=1);

@ini_set('memory_limit', '512M');
@ini_set('max_execution_time', '120');

require_once __DIR__ . '/includes/dk-php-polyfill.php';
require_once __DIR__ . '/base-url.php';

$uri = $_SERVER['REQUEST_URI'] ?? '/';
$path = parse_url($uri, PHP_URL_PATH);
if (!is_string($path) || $path === '') {
    $path = '/';
}

$path = dk_normalize_request_path($path);
$rootReal = realpath(__DIR__);

if (str_starts_with($path, '/assets/')) {
    $localFs = __DIR__ . $path;
    if (is_file($localFs)) {
        $contentType = 'application/octet-stream';
        if (function_exists('mime_content_type')) {
            $mt = mime_content_type($localFs);
            if (is_string($mt) && $mt !== '') {
                $contentType = $mt;
            }
        }
        header('Content-Type: ' . $contentType);
        header('Cache-Control: public, max-age=86400');
        readfile($localFs);
        exit;
    }
    http_response_code(404);
    exit;
}

if (str_ends_with($path, '.php')) {
    $candidate = realpath(__DIR__ . $path);
    if (
        is_string($rootReal) &&
        is_string($candidate) &&
        str_starts_with($candidate, $rootReal . DIRECTORY_SEPARATOR) &&
        is_file($candidate)
    ) {
        dk_start_output_rewrite();
        include $candidate;
        exit;
    }
}

$route = trim($path, '/');

if ($route === 'index.php' || $route === 'index.html') {
    header('Location: ' . DK_BASE_URL . '/', true, 301);
    exit;
}

if ($route === '') {
    $target = __DIR__ . '/index.php';
} else {
    $target = __DIR__ . '/' . $route . '/index.php';
}

if (!is_file($target)) {
    if ($route !== 'no-page') {
        $from = $path === '' ? '/' : $path;
        header('Location: ' . DK_BASE_URL . '/no-page/?from=' . rawurlencode($from), true, 302);
        exit;
    }
    $target = __DIR__ . '/no-page/index.php';
}

dk_start_output_rewrite();
include $target;
