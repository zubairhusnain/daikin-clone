var _DATA_ = {};



(function(window, $) {
    var G = {};


    G.init = function()
    {
        /*set Palameter*/
        _DATA_.headHeight = $('#HeaderShrinking').height();

        /*init*/
        pageCarousel.init();
        imageAlignment.init();
        G.setWindowStatus();
        

        $(window).resize(function(){G.setWindowStatus()});


    };

    /*-------------------------------
    first view for IE8
    -------------------------------*/
    G.visibleTopUniquely = function()
    {
        $('#Top_Uniquely').css({visibility:'visible'});
    };
    /*-------------------------------
    set WINDOW STATUS
    -------------------------------*/
    G.setWindowStatus = function()
    {
        _DATA_.winHeight = $(window).height();
        _DATA_.winWidth = $(window).width();
        _DATA_.browserHieght = _DATA_.winHeight - _DATA_.headHeight;
        imageAlignment.setVisualHeight();
        pageCarousel.resize();
    };

    window.careerMain = G;

})(window, jQuery);








jQuery(window).ready(function()
{
    careerMain.init();
});

jQuery(window).load(function()
{
     imageAlignment.init();
     careerMain.visibleTopUniquely();
});



function log() {
    if(typeof console == "undefined") return;

    var args = jQuery.makeArray(arguments);
    console.log.apply(console, args);
}


