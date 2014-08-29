jQuery(document).ready(function(){

	jQuery(".hentry, .widget").fitVids();
	jQuery('table').addClass('table');
	jQuery('table').wrap('<div class="table-responsive" />');

	//Sidebar Height Fix
	var sidebarHeightFix = function() {
		var contentHeight = jQuery('#primary').outerHeight();
		var sidebarHeight = jQuery('#secondary').outerHeight();

		if( contentHeight > sidebarHeight ) {
			jQuery('#secondary').css('min-height', contentHeight);
		} else {
			jQuery('#secondary').css('min-height', '0');
			jQuery('#secondary').css('min-height', contentHeight);
		}
	}

	jQuery(window).load(function(){
  		sidebarHeightFix();

		setTimeout(function (){
			sidebarHeightFix();
		}, 800);
	});

	jQuery(window).resize(function() {
		sidebarHeightFix();

		//masonry fix
		setTimeout(function (){
			sidebarHeightFix();
		}, 800);
	});

	//Grid hentry visibility
	var makeGridVisible = function() {
		var gridContainer = jQuery('.grid-row');
		if( gridContainer.length ) {
			gridContainer.find('.hentry').each(function() {
				jQuery(this).addClass('visible-hentry');
			});
		}
	}

	jQuery('.grid-row').imagesLoaded( function() {
		makeGridVisible();
	});

	//Blog Layout
	jQuery(function() {
		if( jQuery('.blog-row').length ) {
			var blogContainer = jQuery('.blog-row');
			blogContainer.imagesLoaded( function() {
				blogContainer.masonry({
					itemSelector: '.hentry-column'
				});
			});

			jQuery( document.body ).on( 'post-load', function () {
				var newItems = jQuery('.infinite-wrap .infinite-scroll-item');
				blogContainer.append( newItems );
				blogContainer.masonry( 'appended', newItems );
				sidebarHeightFix();
				blogContainer.imagesLoaded( function() {

					makeGridVisible();

					setTimeout(function (){
						blogContainer.masonry();
						sidebarHeightFix();
					}, 800);
				});
    		});
		} else {
			jQuery( document.body ).on( 'post-load', function () {
				setTimeout(function (){
					sidebarHeightFix();
				}, 800);
    		});
		}
	});

	//GoTop Button
	jQuery(function(){
		jQuery(window).scroll(function() {
			if(jQuery(this).scrollTop() > 300) {
				jQuery('#gotop').fadeIn().addClass('visible');
			} else {
				jQuery('#gotop').fadeOut().removeClass('visible');
			}
		});

		jQuery('#gotop').click(function () {
			jQuery('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

	//Breaking News
	jQuery(function() {
		if( jQuery('#breaking-news').length ) {
			var breakingNewsContainer = jQuery('#breaking-news');
			var breakingNewsLeft = breakingNewsContainer.find('.breaking-news-title').outerWidth() + 48;
			jQuery('.breaking-news-items .bxslider').bxSlider({
				mode: 'vertical',
				pager: false,
				controls: false,
				auto: true,
				useCSS: false,
				autoHover: true,
				pause: 4000,
				onSliderLoad: function() {
					breakingNewsContainer.find('.bxslider').css("visibility", "visible");
					breakingNewsContainer.find('.bx-viewport').css({'left': breakingNewsLeft + 'px', 'right': breakingNewsLeft + 'px'});
				}
			});
		}
	});

	//Mobile Menu
	jQuery(function(){
		jQuery(".nav-bar").slicknav({
			prependTo:'#mobile-site-navigation',
			allowParentLinks: true,
			label: jQuery('#site-navigation').data('small-nav-title')
      	});
	});

	jQuery(function(){
    	if( jQuery('.share-section').length ) {
    		jQuery('a.facebook, a.twitter, a.googleplus, a.linkedin, a.pinterest').on('click', function(e) {
    			e.preventDefault();
    			var left  = (jQuery(window).width()/2)-(900/2),
					top   = (jQuery(window).height()/2)-(600/2);
    			var newwindow=window.open(jQuery(this).attr('href'),'',"height=400,width=600,top="+top+", left="+left+"");
        		if (window.focus) {newwindow.focus()}
    		});
    	}
    });

	//Homepage slideshow
	jQuery(function() {
		if( jQuery('#home-featured-slideshow').length ) {
			var homepageSlideshowContainer = jQuery('#home-featured-slideshow .bxslider');

			homepageSlideshowContainer.imagesLoaded(function(){
				homepageSlideshowContainer.bxSlider({
					mode: 'fade',
					pager: true,
					auto: true,
					useCSS: false,
					autoHover: true,
					pause: 5000,
					preloadImages:'all',
					adaptiveHeight: true,
					prevText: '<i class="fa fa-long-arrow-left"></i>',
					nextText: '<i class="fa fa-long-arrow-right"></i>',
					onSliderLoad: function() {
						homepageSlideshowContainer.css("visibility", "visible").fadeTo(200, 1);
					}
				});
			});
		}

		jQuery('.hentry .bxslider').imagesLoaded(function(){
			jQuery('.hentry .bxslider').bxSlider({
				mode: 'fade',
				pager: true,
				auto: false,
				useCSS: false,
				autoHover: true,
				pause: 5000,
				preloadImages:'all',
				adaptiveHeight: true,
				prevText: '<i class="fa fa-long-arrow-left"></i>',
				nextText: '<i class="fa fa-long-arrow-right"></i>',
				onSliderLoad: function() {
					jQuery('.hentry .bxslider').css("visibility", "visible").fadeTo(200, 1);
				}
			});
		});
	});
});