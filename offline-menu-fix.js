/**
 * Offline mega menu: ensure dropdown panels open on nav hover (CSS no longer blocks .show()).
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

        function openPanel(index) {
            if (index < 0 || index >= $contents.length) return;
            clearTimeout(closeTimer);
            $nav.find('li').removeClass('is-Hover').eq(index).addClass('is-Hover');
            $mega.stop(true, true).css({ display: 'block', overflow: 'visible', height: 'auto' });
            $contents.hide().removeClass('is-Show').eq(index).show().addClass('is-Show');
            if ($overlay.length) $overlay.show();
            $wrap.find('.MegaMenuWrap').addClass('is-Active');
        }

        function closePanel() {
            closeTimer = setTimeout(function () {
                $nav.find('li').removeClass('is-Hover');
                $contents.hide().removeClass('is-Show');
                $mega.stop(true, true).fadeOut(150, function () {
                    $mega.css({ height: '0', display: 'none' });
                });
                if ($overlay.length) $overlay.hide();
                $wrap.find('.MegaMenuWrap').removeClass('is-Active');
            }, 180);
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

        $('#Gnav_Overlay').off('mouseenter.offlineMega').on('mouseenter.offlineMega', closePanel);
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
