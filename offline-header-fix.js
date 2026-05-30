/**
 * Offline header fix: one spacer, height synced to fixed header (avoids white gap below nav).
 * Re-runs after Daikin jQuery header init may adjust #HeaderSubstitution.
 */
(function () {
  function syncHeaderSpacer() {
    var shrinking = document.getElementById('HeaderShrinking');
    var substitution = document.getElementById('HeaderSubstitution');
    if (!shrinking || !substitution) return;
    substitution.style.display = 'block';
    substitution.style.height = shrinking.offsetHeight + 'px';
    substitution.style.margin = '0';
    substitution.style.padding = '0';
  }

  function dedupeHeaderSubstitution() {
    var nodes = document.querySelectorAll('#HeaderSubstitution');
    for (var i = 1; i < nodes.length; i++) {
      nodes[i].parentNode.removeChild(nodes[i]);
    }
  }

  function dedupeHeaderShrinking() {
    var nodes = document.querySelectorAll('#HeaderShrinking');
    if (nodes.length <= 1) return;
    var keep = nodes[0];
    for (var i = 1; i < nodes.length; i++) {
      while (nodes[i].firstChild) {
        keep.appendChild(nodes[i].firstChild);
      }
      nodes[i].parentNode.removeChild(nodes[i]);
    }
  }

    function collapseClosedMegaMenu() {
        var wrap = document.querySelector('#GlobalNavWrap .MegaMenuWrap');
        if (!wrap || wrap.classList.contains('is-Active')) return;
        var area = wrap.querySelector('.MegaMenuArea');
        if (!area) return;
        var h = area.style.height;
        if (h === '0' || h === '0px' || area.style.display === 'none') {
            area.style.overflow = 'hidden';
        }
        wrap.style.paddingBottom = '0';
    }

  function removeCookieBanner() {
    var ids = [
      'onetrust-consent-sdk',
      'onetrust-banner-sdk',
      'onetrust-pc-sdk',
      'ot-sdk-btn-floating',
      'ot-sync-ntfy',
    ];
    for (var i = 0; i < ids.length; i++) {
      var el = document.getElementById(ids[i]);
      if (el && el.parentNode) el.parentNode.removeChild(el);
    }
    var filters = document.querySelectorAll('.onetrust-pc-dark-filter');
    for (var j = 0; j < filters.length; j++) {
      if (filters[j].parentNode) filters[j].parentNode.removeChild(filters[j]);
    }
    document.documentElement.classList.remove('ot-hide-scroll');
    document.body.classList.remove('ot-hide-scroll');
  }

  function run() {
    dedupeHeaderShrinking();
    dedupeHeaderSubstitution();
    collapseClosedMegaMenu();
    syncHeaderSpacer();
    removeCookieBanner();
  }

  function schedule() {
    run();
    if (typeof requestAnimationFrame === 'function') {
      requestAnimationFrame(run);
    }
    setTimeout(run, 0);
    setTimeout(run, 50);
    setTimeout(run, 250);
    setTimeout(run, 800);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', schedule);
  } else {
    schedule();
  }
  window.addEventListener('load', schedule);
  window.addEventListener('resize', syncHeaderSpacer);
})();
