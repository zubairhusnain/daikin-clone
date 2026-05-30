'use strict';

$(function() {
  var useragent = navigator.userAgent;
  var $html = $('html');
  var $win = $(window);
  var win10 = useragent.match(/Win(dows )?NT 10\.0/)
  var win7 = useragent.match(/Win(dows )?NT 6\.1/);
  var isIE8 = $html.hasClass('ie8');

  var timer;
  var $group;
  var $wrapper;
  var $modal;
  var $box;
  var $body;
  var $close;
  var $print;
  var $prev;
  var $next;
  var $pagination;
  var $ctrlInner;
  var $inner;

  var load = function($anchor, data) {
    $html.removeClass('brand-modal-init brand-modal-multi brand-modal-prev brand-modal-next brand-modal-reset');
    $('.brand-m-Wrapper', $body).remove();

    var uri = $anchor[0].href;
    var $iframe = $('<iframe src="' + uri + '" class="brand-modal_if"/>')
      .appendTo($body)
      .one('load', function() {
        var win = this.contentWindow;
        var isSp = getWinWidth() <= 480;
        var duration = (isIE8 || !isSp) ? 500 : 0;
        var $el = $(win.document).find('.brand-m-Wrapper');
        var y;

        if (isSp || Modernizr.touchevents) {
          y = $win.scrollTop();
          $wrapper.css({ overflow: 'hidden', height: $win.height() });
          $win.scrollTop(0);
        }

        $(this).replaceWith($el);

        $box.animate({
            height: $body.outerHeight()
          },
          duration,
          function() {

            $html.addClass('brand-modal-init');
            if ($group.length > 0) {
              var index = $group.index($anchor);

              $pagination.html('<b>' + (index + 1) + '</b>/' + $group.length);

              $html.toggleClass('brand-modal-prev', index !== 0);
              $prev.off().on('click', function() {
                load($group.eq(index - 1));
                $('.brand-m-Wrapper').scrollTop(0);
              });

              $html.toggleClass('brand-modal-next', index !== $group.length - 1);
              $(document).off().on('click', '.brand-modal_next', function() {
                load($group.eq(index + 1));
                $('.brand-modal_wrapper').scrollTop(0);
              });

              $html.toggleClass('brand-modal-reset');
              $html.off().on('click', '.brand-modal_reset', function() {
                var lifeChange = $('#life-change');
                var lifeChangePos = lifeChange.offset().top - $("#HeaderWrap").outerHeight() - $("#GlobalNavWrap").outerHeight();

                $modal.trigger('click');
                $("html, body").animate({
                  scrollTop: lifeChangePos
                }, 1000, "swing");
              });

              $ctrlInner.css('marginRight', $win.width() - $inner.width());

              $html.addClass('brand-modal-multi');
            }
          });

        $modal.off().on('click', function (e2) {
          var el = e2.target;
          if (el === $box[0] || $.contains($box[0], el)) return;
          $modal.remove();
          $html.removeClass('brand-modal brand-modal-init brand-modal-multi brand-modal-prev brand-modal-next brand-modal-reset');
          $('html, body').removeAttr('style');
          if (isSp || Modernizr.touchevents) {
            $wrapper.css({ overflow: 'visible', height: 'auto' });
            $win.scrollTop(y);
          }
        });

        $close.off().on('click', function() {
          $modal.trigger('click');
          $('html, body').removeAttr('style');
        });

        $print.off().on('click', function() {
          var param = (uri.indexOf('?') === -1 ? '?' : '&') + 'print';
          window.open(uri + param, '_blank');
        });
      });

    clearTimeout(timer);
    timer = setTimeout(function() {
      $iframe.trigger('load');
    }, 5000);

    return $iframe;
  };

  function getWinWidth() {
    var w = window.innerWidth;
    return (w !== undefined) ? w : $win.width();
  }

  $('.js-brand-ModalOpen').on('click', function (e) {

    console.log('modal on');

    e.preventDefault();

    var $el = $(this);
    var data = $el.data('modalgroup');
    var group = data;

    $group = group ? $('.js-brand-ModalOpen[data-modalgroup="' + group + '"]') : [];
    $html.addClass('brand-modal');
    $wrapper = $('.brand-wrapper');
    $modal = $('<div class="brand-modal_wrapper"><div class="brand-modal_outer"><div class="brand-modal_inner"><div class="brand-modal_box"><div class="brand-modal_body"></div><div class="brand-modal_close"></div><div class="brand-modal_print"></div><div class="brand-modal_ctrl"><div class="brand-modal_ctrlInner"><div class="brand-modal_prev"></div><div class="brand-modal_next"></div></div></div><div class="brand-modal_pagination"/></div></div></div></div>').appendTo('body');
    $box = $('.brand-modal_box');
    $inner = $('.brand-modal_inner');
    $body = $('.brand-modal_body');
    $close = $('.brand-modal_close');
    $print = $('.brand-modal_print');
    $prev = $('.brand-modal_prev');
    $next = $('.brand-modal_next');
    $pagination = $('.brand-modal_pagination');
    $ctrlInner = $('.brand-modal_ctrlInner');

    load($el, data);
  });
});


$('.js-brand-ModalOpen').on('click', function (e) {
  console.log('modal on');
});