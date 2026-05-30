/**
 * Offline media: promote lazy images, autoplay muted videos, fix broken picture srcset.
 */
(function () {
    var WEB_ROOT = '/daikin-clone/daikin_offline/';

    function toRootAssetUrl(url) {
        if (!url || url.indexOf('assets/') !== 0) return url;
        return WEB_ROOT + url;
    }

    /** Inline style url(assets/...) ignores <base>; resolve from site root. */
    function fixInlineStyleBackgrounds() {
        document.querySelectorAll('[style*="url("], [style*="url(\'"], [style*="url(assets"]').forEach(function (el) {
            var style = el.getAttribute('style');
            if (!style || style.indexOf('assets/') === -1) return;
            var next = style
                .replace(/url\(\s*'assets\//g, "url('" + WEB_ROOT + "assets/")
                .replace(/url\(\s*"assets\//g, 'url("' + WEB_ROOT + 'assets/')
                .replace(/url\(\s*assets\//g, 'url(' + WEB_ROOT + 'assets/');
            if (next !== style) el.setAttribute('style', next);
        });
    }

    function fixDeepPageImgSrc() {
        var depth = (window.location.pathname.match(/\//g) || []).length;
        if (depth < 5) return;
        document.querySelectorAll('img[src^="assets/"]').forEach(function (img) {
            var src = img.getAttribute('src');
            if (src) img.src = toRootAssetUrl(src);
        });
    }

    function promoteLazyImages() {
        document.querySelectorAll('img[data-src]').forEach(function (img) {
            var ds = img.getAttribute('data-src');
            if (ds && !img.getAttribute('src')) img.setAttribute('src', ds);
        });
    }

    function fixPictureSources() {
        document.querySelectorAll('picture source[srcset]').forEach(function (source) {
            var set = source.getAttribute('srcset');
            if (!set || set.indexOf('assets/') === 0 || set.indexOf('/daikin-clone/') === 0) return;
            if (set.indexOf('-/media/') === 0 || set.indexOf('www.daikin.com/') === 0) {
                source.setAttribute(
                    'srcset',
                    '/daikin-clone/daikin_offline/assets/www.daikin.com/' +
                        set.replace(/^\-\/media\//, '-/media/').replace(/^www\.daikin\.com\//, '')
                );
            }
        });
    }

    function playVideos() {
        document.querySelectorAll('video').forEach(function (v) {
            v.muted = true;
            v.setAttribute('playsinline', '');
            v.setAttribute('webkit-playsinline', '');
            var p = v.play();
            if (p && typeof p.catch === 'function') p.catch(function () {});
        });
    }

    function run() {
        fixInlineStyleBackgrounds();
        fixDeepPageImgSrc();
        promoteLazyImages();
        fixPictureSources();
        playVideos();
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', run);
    } else {
        run();
    }
    window.addEventListener('load', playVideos);
})();
