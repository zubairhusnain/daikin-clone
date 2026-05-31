/**
 * Offline mega menu: hover to open panels; click outside or on dimmed overlay to close.
 */
(function () {
    function initMegaMenu() {
        if (typeof window.jQuery === 'undefined') return;
        var $ = window.jQuery;
        var $wrap = $('#GlobalNavWrap');
        if (!$wrap.length) return;

        var $nav = $('#GlobalNavArea');
        var $mega = $wrap.find('.MegaMenuArea').first();
        var $contents = $wrap.find('.MegaMenu_Content');
        var $overlay = $('#MegaMenu_Overlay');
        if (!$nav.length || !$mega.length || !$contents.length) return;

        var closeTimer = null;

        function isOpen() {
            return $wrap.find('.MegaMenuWrap').hasClass('is-Active');
        }

        function closePanelImmediate() {
            clearTimeout(closeTimer);
            $nav.find('li').removeClass('is-Hover');
            $contents.hide().removeClass('is-Show');
            $mega.stop(true, true).fadeOut(150, function () {
                $mega.css({ height: '0', display: 'none' });
            });
            if ($overlay.length) {
                $overlay.stop(true, true).fadeOut(150, function () {
                    $overlay.hide();
                });
            }
            $wrap.find('.MegaMenuWrap').removeClass('is-Active');
        }

        function closePanel() {
            clearTimeout(closeTimer);
            closeTimer = setTimeout(closePanelImmediate, 180);
        }

        function openPanel(index) {
            if (index < 0 || index >= $contents.length) return;
            clearTimeout(closeTimer);
            $nav.find('li').removeClass('is-Hover').eq(index).addClass('is-Hover');
            $mega.stop(true, true).css({ display: 'block', overflow: 'visible', height: 'auto' });
            $contents.hide().removeClass('is-Show').eq(index).show().addClass('is-Show');
            if ($overlay.length) {
                $overlay.stop(true, true).show().fadeIn(150);
            }
            $wrap.find('.MegaMenuWrap').addClass('is-Active');
        }

        function isMegaMenuTarget(target) {
            if (!target) return false;
            var el = target.nodeType === 1 ? target : target.parentElement;
            if (!el || !el.closest) return false;
            return !!el.closest('#GlobalNavWrap');
        }

        $nav.find('li').not('.js-Disable').each(function (i) {
            var $li = $(this);
            $li.off('mouseenter.offlineMega mouseleave.offlineMega');
            $li.on('mouseenter.offlineMega', function () {
                openPanel(i);
            });
        });

        $mega.off('mouseenter.offlineMega mouseleave.offlineMega');
        $mega.on('mouseenter.offlineMega', function () {
            clearTimeout(closeTimer);
        });
        $mega.on('mouseleave.offlineMega', closePanel);

        $nav.off('mouseleave.offlineMega');
        $nav.on('mouseleave.offlineMega', function (e) {
            if (!$(e.relatedTarget).closest('.MegaMenuArea').length) closePanel();
        });

        $('#Gnav_Overlay').off('mouseenter.offlineMega click.offlineMega');
        $('#Gnav_Overlay').on('mouseenter.offlineMega click.offlineMega', closePanelImmediate);

        if ($overlay.length) {
            $overlay.off('click.offlineMega');
            $overlay.on('click.offlineMega', function (e) {
                e.preventDefault();
                e.stopPropagation();
                closePanelImmediate();
            });
        }

        $(document).off('mousedown.offlineMega click.offlineMega');
        $(document).on('mousedown.offlineMega', function (e) {
            if (!isOpen()) return;
            if (isMegaMenuTarget(e.target)) return;
            closePanelImmediate();
        });

        $(document).off('keydown.offlineMega');
        $(document).on('keydown.offlineMega', function (e) {
            if (!isOpen()) return;
            if (e.key === 'Escape' || e.keyCode === 27) {
                closePanelImmediate();
            }
        });
    }

    function run() {
        initMegaMenu();
    }

    if (typeof window.jQuery !== 'undefined') {
        window.jQuery(run);
    } else {
        window.addEventListener('load', run);
    }
    setTimeout(run, 500);
    setTimeout(run, 1500);
})();
