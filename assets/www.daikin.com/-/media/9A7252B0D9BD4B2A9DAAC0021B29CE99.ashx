(function($){

/** --------------------------------------------------
 * Disable Hash Scroll
** --------------------------------------------------*/
var disablHashScroll = {
  init:function(){
    var hash = location.hash;
    if($(hash).length){
      var targetTop = $(hash).offset().top;
      $('html,body').animate({ scrollTop: targetTop }, 0 );
      return false;
    }
  }
}

/** --------------------------------------------------
 * Local Navigation Current
** --------------------------------------------------*/
var localNavCurrent = {
  init:function(){
    var path = location.pathname.replace('index.html','');
    var $nav = $('#j-local_nav_current a');

    $nav.each(function(){
      var href = $(this).attr('href')
      if(href === path){
        $(this).parent('.g-sidebar_lv1_hd').addClass('g-sidebar-cur').next('.g-sidebar_lv2').addClass('g-sidebar-cur');
        $(this).parent('.g-sidebar_lv2_el').addClass('g-sidebar-cur');
        $(this).parents('.g-sidebar_lv2').addClass('g-sidebar-cur');
      }else if(path.match(href)){
        $(this).parent('.g-sidebar_lv1_hd:not(.g-sidebar_accBtn,.g-sidebar_top)').addClass('g-sidebar-cur');
        $(this).parent('.g-sidebar_lv2_el').addClass('g-sidebar-cur');
        $(this).parents('.g-sidebar_lv2').addClass('g-sidebar-cur');
      }
    });
  }
}

/** --------------------------------------------------
 *  Anchor Position
** --------------------------------------------------*/
var anchorPosition = {
  init:function(){
    var $target = $('.anchor-pos');
    if($target.length){
      setTimeout(function(){
        $target.removeClass('-init');
      },500);
    }
  }
}


/** --------------------------------------------------
 * Disable Smooth Scroll
** --------------------------------------------------*/
var disablSmoothScroll = {
  init:function(){
    $('area[href^=#],a[href^=#]').on('click', function (e) {
      if(!$(this).hasClass('j-scroll')){
        e.stopImmediatePropagation();
      }
    });
  }
}

/** --------------------------------------------------
 * OS Judgment
** --------------------------------------------------*/
var osJudgment = {
  init:function(){
    if(navigator.userAgent.toLowerCase().indexOf('windows') != -1){
      $('body').addClass('win');
    }
  }
}

/** --------------------------------------------------
 * Init
 * --------------------------------------------------*/
$(function(){
  disablHashScroll.init();
  localNavCurrent.init();
  anchorPosition.init();
  disablSmoothScroll.init();
  osJudgment.init();
});

}(jQuery));
