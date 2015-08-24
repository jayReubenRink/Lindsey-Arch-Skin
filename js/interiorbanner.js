// JavaScript Document

var SliderUtils = {
    Init: function() {

        jQuery.noConflict();
        (function($) {
            $(function() {

                jQuery('.index-slider > ul > li').each(function() {
                    $imgContainer = $(this).find('img');
                    $imgContainerUrl = $($imgContainer).attr('src');
                    $(this).find('img').css({
                        'display': 'none'
                    });
                    $(this).find('p:empty').remove();
                    $(this).find('p a').unwrap('<p></p>');
                    $(this).css({
                        'background-image': 'url(' + $imgContainerUrl + ')'
                    });
                });

                jQuery(document).ready(function() {
                    jQuery('.index-slider').flexslider({
                        animation: "fade",
                        animationLoop: true,
                        controlNav: true,
                        directionNav: false,
                        prevText: "",
                        nextText: "",
                    });
                });
                
$(window).load(function() {
    
  // The slider being synced must be initialized first
  $('.product-alt-images').flexslider({
    animation: "slide",
    prevText: "",
    nextText: "",
    controlNav: false,
    animationLoop: false,
    controlNav: false,
    directionNav: true,
    slideshow: false,
    itemWidth: 112,
    itemMargin: 8,
    asNavFor: '.panzoom'
  });
   
  $('.panzoom').flexslider({
    animation: "fade",
    controlNav: false,
    directionNav: false,
    animationLoop: false,
    slideshow: false,
    sync: ".product-alt-images"
  });
});
                
                jQuery(document).ready(function() {
                    jQuery('.process-slider').flexslider({
                        animation: "slide",
                        animationLoop: true,
                        itemWidth: 325,
                        itemMargin: 10,
                        controlNav: false,
                        directionNav: true,
                        prevText: "",
                        nextText: "",
                        move: 1
                    });
                });

            });

        })(jQuery);

    }
}



var PageTitleUtils = {
    Init: function() {

        jQuery.noConflict();
        (function($) {
            $(function() {
                jQuery('.featured-image').each(function() {
                    $imgContainer = $(this).find('img');
                    $imgContainerUrl = $($imgContainer).attr('src');
                    $(this).children('p, img').remove();
                    $(this).css({
                        'background-image': 'url(' + $imgContainerUrl + ')'
                    });
                });


                jQuery('.row-img').each(function() {
                    $imgContainer = $(this).find('img');
                    $imgContainerUrl = $($imgContainer).attr('src');
                    $(this).children('img').css({
                        'display': 'none'
                    });
                    $(this).css({
                        'background-image': 'url(' + $imgContainerUrl + ')'
                    });
                });


                jQuery('.index-slider .caption').each(function() {
                    var $url = $(this).find('a').attr('href');
                    $(this).css('cursor', 'pointer')
                    $(this).click(function() {
                        window.location = $url;
                    });
                });

            });
        })(jQuery);

    }


jQuery(function($) {
    PageTitleUtils.Init();
    SliderUtils.Init();
});