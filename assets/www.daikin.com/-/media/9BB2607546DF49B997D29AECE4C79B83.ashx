(function($){

/** --------------------------------------------------
 * main visual animation
** --------------------------------------------------*/

var mainVisualAnimation = {
  init:function(){
    if(481 > $(window).width()){
      $('#j-hero .hero_inner').addClass('is-active');
    }
    $('#j-hero').addClass('is-active');
    setTimeout(function(){
      $('#j-hero .hero_inner').fadeIn();
    },1400);
  }
}

/** --------------------------------------------------
 * 実行
** --------------------------------------------------*/

$(function(){
  mainVisualAnimation.init();
});

}(jQuery));
