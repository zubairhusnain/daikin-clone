/**
 * Careers hero: full-page segment slider (offline).
 */
(function () {
    var ASSET = 'assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/';
    var SEGMENT_COUNT = 6;

    function img(name) {
        return ASSET + name;
    }

    function headHeight() {
        var h = document.getElementById('HeaderShrinking');
        return h ? h.offsetHeight : 0;
    }

    function segmentHeight() {
        if (window._DATA_ && _DATA_.browserHieght && _DATA_.browserHieght >= 500) {
            return _DATA_.browserHieght;
        }
        return Math.max(500, window.innerHeight - headHeight());
    }

    function ensureSegmentHeights() {
        var h = segmentHeight() + 'px';
        document.querySelectorAll('.careerVisualWrap').forEach(function (el) {
            el.style.height = h;
            el.style.minHeight = h;
        });
    }

    function scrollToTop(top, smooth) {
        if (window.jQuery && jQuery.fn.animate && smooth) {
            var $el = jQuery('html, body');
            $el.stop(true).animate({ scrollTop: top }, 700, jQuery.easing && jQuery.easing.easeOutExpo ? 'easeOutExpo' : 'swing');
        } else {
            document.documentElement.scrollTop = top;
            document.body.scrollTop = top;
            window.scrollTo(0, top);
        }
    }

    function setActive(num) {
        var dots = document.querySelectorAll('.pageCarousel .dot');
        for (var i = 0; i < dots.length; i++) {
            var d = dots[i];
            var n = d.getAttribute('data-name');
            var isActive = n === 'segment' + num;
            d.classList.toggle('active', isActive);
            var im = d.querySelector('img');
            if (im) im.src = img(isActive ? 'dot_blue.png' : 'dot_gray.png');
        }
        var up = document.querySelector('.pageCarousel .allow.up img');
        var down = document.querySelector('.pageCarousel .allow.down img');
        if (up) up.src = img('allow_up_gray-png.png');
        if (down) down.src = img('allow_down_gray-png.png');
        var top = document.getElementById('PagetopCareer');
        if (top) top.style.display = num > 1 ? '' : 'none';
    }

    function segmentFromScroll() {
        var y = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        var h = segmentHeight();
        return Math.min(SEGMENT_COUNT, Math.max(1, Math.floor(y / h + 0.4) + 1));
    }

    function releaseNativeWheelLock() {
        if (!window.jQuery) return;
        jQuery(document).off('mousewheel');
    }

    function bind() {
        var carousel = document.querySelector('.pageCarousel');
        if (!carousel) return;
        if (carousel.dataset.offlineBound === '1') return;
        carousel.dataset.offlineBound = '1';

        releaseNativeWheelLock();
        ensureSegmentHeights();

        var current = 1;
        setActive(1);
        scrollToTop(0, false);

        carousel.querySelectorAll('.dot').forEach(function (dot) {
            dot.addEventListener('click', function (e) {
                e.preventDefault();
                e.stopPropagation();
                var name = dot.getAttribute('data-name') || '';
                var m = name.match(/segment(\d)/);
                if (m) {
                    current = parseInt(m[1], 10);
                    ensureSegmentHeights();
                    scrollToTop(segmentHeight() * (current - 1), true);
                    setActive(current);
                }
            });
        });

        var up = carousel.querySelector('.allow.up');
        var down = carousel.querySelector('.allow.down');
        if (up) {
            up.addEventListener('click', function (e) {
                e.preventDefault();
                e.stopPropagation();
                if (current > 1) {
                    current--;
                    ensureSegmentHeights();
                    scrollToTop(segmentHeight() * (current - 1), true);
                    setActive(current);
                }
            });
        }
        if (down) {
            down.addEventListener('click', function (e) {
                e.preventDefault();
                e.stopPropagation();
                if (current < SEGMENT_COUNT) {
                    current++;
                    ensureSegmentHeights();
                    scrollToTop(segmentHeight() * (current - 1), true);
                    setActive(current);
                }
            });
        }

        var wheelLock = false;
        window.addEventListener(
            'wheel',
            function (e) {
                var y = window.pageYOffset || document.documentElement.scrollTop || 0;
                if (y > segmentHeight() * (SEGMENT_COUNT - 0.5)) return;
                e.preventDefault();
                if (wheelLock) return;
                wheelLock = true;
                setTimeout(function () {
                    wheelLock = false;
                }, 750);
                ensureSegmentHeights();
                if (e.deltaY > 0 && current < SEGMENT_COUNT) {
                    current++;
                } else if (e.deltaY < 0 && current > 1) {
                    current--;
                } else {
                    return;
                }
                scrollToTop(segmentHeight() * (current - 1), true);
                setActive(current);
            },
            { passive: false }
        );

        var pt = document.getElementById('PagetopCareer');
        if (pt) {
            pt.addEventListener('click', function (e) {
                e.preventDefault();
                current = 1;
                scrollToTop(0, true);
                setActive(1);
            });
        }

        window.addEventListener('scroll', function () {
            if (wheelLock) return;
            var next = segmentFromScroll();
            if (next !== current) {
                current = next;
                setActive(current);
            }
        });

        if (window.imageAlignment && typeof imageAlignment.setVisualHeight === 'function') {
            imageAlignment.setVisualHeight();
        }
        window.addEventListener('resize', function () {
            ensureSegmentHeights();
            if (window.imageAlignment && imageAlignment.setVisualHeight) {
                imageAlignment.setVisualHeight();
            }
            scrollToTop(segmentHeight() * (current - 1), false);
            setActive(current);
        });
    }

    function run() {
        if (!document.querySelector('.pageCarousel')) return;
        bind();
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', run);
    } else {
        run();
    }
    window.addEventListener('load', function () {
        releaseNativeWheelLock();
        ensureSegmentHeights();
        if (window.imageAlignment && imageAlignment.setVisualHeight) {
            imageAlignment.setVisualHeight();
        }
        run();
        setTimeout(function () {
            releaseNativeWheelLock();
            ensureSegmentHeights();
        }, 300);
    });
})();
