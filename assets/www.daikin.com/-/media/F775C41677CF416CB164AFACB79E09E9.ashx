(function(window, $) {
    var G = {};
    var $carousel = null;
    var $dots = null;
    var $allows = null;
    var $PagetopCareer = null;
    var nowNum = '1';
    

    G.init = function()
    {
        $carousel = $('.pageCarousel');
        $dots = $('.pageCarousel .dot');
        $allows = $('.pageCarousel .allow');
        $PagetopCareer = $('#PagetopCareer');

        G.dotHover();
        G.changeActive(1);
        G.dotClick();
        G.allowHover();
        G.allowClick();

        G.checkMouseScroll();
        G.clickPageTop();


        //To PageTop !important
        // setTimeout(function(){
        //     $($.browser.webkit ? 'body' : 'html').animate({scrollTop: _DATA_.browserHieght * 6}, 0, "easeOutExpo");
        // },700);
        // setTimeout(function(){
        //     $($.browser.webkit ? 'body' : 'html').animate({scrollTop: 0}, 2500, "easeOutQuart");
        // },1000);
    };

    /*----------------------------------------------
    positon
    ----------------------------------------------*/
    G.setPositon = function()
    {
        if(_DATA_.winWidth > 1400)
        {
            $carousel.css({'right':(_DATA_.winWidth-1400)/2 + 40});
        }
        else
        {
            $carousel.css({'right':40});
        }
    };


    /*----------------------------------------------
    hover & active
    ----------------------------------------------*/
    G.allowHover = function()
    {
        $allows.hover(function(){
            if($(this).hasClass('up'))
            {
                $(this).children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/allow_up_blue-png.png');    
            }
            else
            {
                $(this).children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/allow_down_blue-png.png');   
            }
        },function(){
            if($(this).hasClass('up'))
            {
                $(this).children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/allow_up_gray-png.png');    
            }
            else
            {
                $(this).children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/allow_down_gray-png.png');   
            }
        });
    };
    G.dotHover = function()
    {
        $dots.hover(function(){
            if($(this).hasClass('active')) return false;
            $(this).children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/dot_blue.png');
        },function(){
            if($(this).hasClass('active')) return false;
            $(this).children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/dot_gray.png');
        });
    };
    G.changeActive = function(num)
    {
        nowNum = num;
        $dots.each(function(){
            $(this).removeClass('active').children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/dot_gray.png');
        });

        var $dom = $('.pageCarousel .dot[data-name=segment'+ nowNum +']');
        $dom.addClass('active').children(0).attr('src','assets/www.daikin.com/-/media/Project/Daikin/daikin_com/careers/images/dot_blue.png');
    };


    /*----------------------------------------------
    clickEvent
    ----------------------------------------------*/
    G.dotClick = function()
    {
        $dots.click(function(){
            nowNum = $(this).data('name').substr(7,1);
            G.changeActive(nowNum);
            //G.scrollBody(_DATA_.browserHieght * (nowNum-1));
            if (_DATA_.browserHieght < 500){
                G.scrollBody(500 * (nowNum-1));
            } else {
                G.scrollBody(_DATA_.browserHieght * (nowNum-1));
            }
        });
    };
    G.allowClick = function()
    {
        $allows.click(function(){
            if($(this).hasClass('up'))
            {
                G.next();
            }
            else
            {
                G.prev();
            }
        });
    };
    G.next = function()
    {
        if(nowNum <= 1) return false;

        nowNum --;
        G.scrollBody(_DATA_.browserHieght * (nowNum-1));
        G.changeActive(nowNum);
        G.checkPageTop();
    }
    G.prev = function()
    {
        if(nowNum >= 5)
        {
            G.scrollBody(_DATA_.browserHieght * (nowNum));
            G.enableScroll();
        }

        if(nowNum >= 6) return false;

        nowNum ++;
        G.scrollBody(_DATA_.browserHieght * (nowNum-1));
        G.changeActive(nowNum);
        G.checkPageTop();
    }

    /*----------------------------------------------
    pageTop
    ----------------------------------------------*/
    G.checkPageTop = function()
    {
        if(nowNum > 1)
        {
            $PagetopCareer.stop(false,false).fadeIn();
        }
        else
        {
            $PagetopCareer.stop(false,false).fadeOut();
        }
    };

    G.clickPageTop = function()
    {
        $('#Pagetop').remove();
        $PagetopCareer.hide();
        $PagetopCareer.on('click',function(){
            $PagetopCareer.fadeOut(false,false);
             G.scrollBody(1);
             nowNum = 1;
             G.changeActive(nowNum);
        });
    };


    /*----------------------------------------------
    keydown
    ----------------------------------------------*/
    G.keydown = function()
    {
        $(document).on('keydown',function(e){
            switch(e.which){
                case 38:
                    G.next();
                    if($carousel.css('opacity') <= 1)
                    {
                        $carousel.css({display:'block',opacity:1});
                    }
                break;

                case 40:
                    G.prev();
                break;
            }
        });
    }

    /*----------------------------------------------
    MouseScroll
    ----------------------------------------------*/
    G.checkMouseScroll = function()
    {
        
        //scroll OFF
        /* offline: removed global mousewheel preventDefault */

        G.keydown();

        $(document).mousewheel(function(eo, delta, deltaX, deltaY)
        {
            if(delta < 0) {
                if (G.isNotAnimated()) {
                    G.prev();
                }
            } else {
                if (G.isNotAnimated()) {
                    G.next();
                }
            }
        });
    };

    //enableScroll
    G.enableScroll = function(){
        // $carousel.fadeOut();
        $(document).off('mousewheel');
        $(document).off('keydown');
        $(window).on('scroll',function(){scroll()});

        //check scroll Top
        function scroll()
        {
            if(G.getScrollTop() < _DATA_.browserHieght * 4.8 + _DATA_.headHeight)G.checkMouseScroll();

            if(G.getScrollTop() < _DATA_.browserHieght * 5.2 + _DATA_.headHeight)
            {
                $carousel.fadeIn();
            }
            else
            {
                $carousel.fadeOut();
            }
        };
    };


    /*----------------------------------------------
    resize
    ----------------------------------------------*/
    G.resize = function()
    {
        G.scrollBody(_DATA_.browserHieght * (nowNum-1),0);
    };


    /*----------------------------------------------
    pageAnimation
    ----------------------------------------------*/
    G.scrollBody = function(postop,time)
    {
        if(time == undefined)time = 1000;

        $($.browser.webkit ? 'body' : 'html').stop();
        $($.browser.webkit ? 'body' : 'html').animate({
            scrollTop: postop
        }, time, "easeOutExpo");
    };
    ///  verifica el calculo total en pixeles de toda la pagina
    G.getScrollTop = function(){ 
        if(typeof pageYOffset!= 'undefined')
        {
            //most browsers
            return pageYOffset;
        }
        else
        {
            var B= document.body; //IE 'quirks'
            var D= document.documentElement; //IE with doctype
            D= (D.clientHeight)? D: B;
            $('#wirhe').text(D.scrollTop);
            return D.scrollTop;
        }
    }


    /*----------------------------------------------
    check animation 
    ----------------------------------------------*/
    G.isNotAnimated = function() {
        return (!$($.browser.webkit ? 'body' : 'html').is(':animated'))?true:false;
    };

    window.pageCarousel = G;

})(window, jQuery);