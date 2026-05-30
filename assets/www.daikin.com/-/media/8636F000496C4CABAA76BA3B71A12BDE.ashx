(function(window, $) {
    var G = {};
    

    G.init = function()
    {
        
    };
    G.setVisualHeight = function()
    {

        var $careerVisualWrap = $('.careerVisualWrap');
        var $bgImage =  $('.bgImage');
        
        var imgW = 1400;
        var imgH = 636;
        var winW = _DATA_.winWidth;
        var winH = _DATA_.browserHieght;
        var scaleW = winW / imgW;
        var scaleH = winH / imgH;
        var fixScale = Math.max(scaleW, scaleH);
        var setW = imgW * fixScale;
        var setH = imgH * fixScale;
        var moveX = Math.floor((winW - setW) / 2);
        var moveY = Math.floor((winH - setH) / 2);


        //if(winH < 500) return false;
        //$careerVisualWrap.css({'height': winH});

        if(winH < 500) {
            $careerVisualWrap.css({'height': '500px'});
        } else {
            $careerVisualWrap.css({'height': winH});
        }

        $bgImage.css({
            'width': setW,
            'height': setH,
            'left' : '50%',
            'margin-left' : -1 * setW/2,
            'top' : moveY
        });  
    };

    window.imageAlignment = G;

})(window, jQuery);