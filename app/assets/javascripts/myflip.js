jQuery(document).ready(function(){jQuery("#card-1").flip({axis:"y",reverse:false,trigger:"hover",speed:'500',front:jQuery('.other-front'),back:jQuery('.other-back'),autoSize:false});jQuery("#card-2").flip({axis:"y",reverse:false,trigger:"hover",speed:'500',front:jQuery('.other-front2'),back:jQuery('.other-back2'),autoSize:false});jQuery("#card-3").flip({axis:"y",reverse:false,trigger:"hover",speed:'500',front:jQuery('.other-front3'),back:jQuery('.other-back3'),autoSize:false});jQuery("#card-4").flip({axis:"y",reverse:false,trigger:"hover",speed:'500',front:jQuery('.other-front4'),back:jQuery('.other-back4'),autoSize:false});jQuery("#card-5").flip({axis:"y",reverse:false,trigger:"hover",speed:'500',front:jQuery('.other-front5'),back:jQuery('.other-back5'),autoSize:false});jQuery("#card-6").flip({axis:"y",reverse:false,trigger:"hover",speed:'500',front:jQuery('.other-front6'),back:jQuery('.other-back6'),autoSize:false});});jQuery(window).scroll(function(){var scrolls=jQuery(window).scrollTop();var scroll_up=jQuery('.other-back6').offset().top-150;var scroll_up2=jQuery('.services .main_heading').offset().top;if(scrolls>=scroll_up){jQuery("#its_been_7").addClass("animated lightSpeedIn");jQuery("#its_been_7").css("visibility","visible");}else if(scrolls<scroll_up2){jQuery("#its_been_7").removeClass("animated lightSpeedIn");jQuery("#its_been_7").css("visibility","hidden");}});jQuery(window).scroll(function(){var scrolls=jQuery(window).scrollTop();var scroll_up=jQuery('.other-back6').offset().top;var scroll_up3=jQuery('.services .main_heading').offset().top;if(scrolls>=scroll_up){jQuery("#cards-1").addClass("animated fadeInLeft");jQuery("#cards-1").css("visibility","visible");jQuery("#cards-2").addClass("animated fadeIn");jQuery("#cards-2").css("visibility","visible");jQuery("#cards-3").addClass("animated fadeInRight");jQuery("#cards-3").css("visibility","visible");}else if(scrolls<scroll_up3){jQuery("#cards-1").removeClass("animated fadeInLeft");jQuery("#cards-1").css("visibility","hidden");jQuery("#cards-2").removeClass("animated fadeIn");jQuery("#cards-2").css("visibility","hidden");jQuery("#cards-3").removeClass("animated fadeInRight");jQuery("#cards-3").css("visibility","hidden");}});jQuery(window).scroll(function(){var scrolls=jQuery(window).scrollTop();var scroll_up=jQuery('.glyphicon.glyphicon-chevron-right').offset().top;var scroll_class=jQuery('.client').offset().top;if(scrolls>=scroll_up){jQuery(".about-sub.about-sub1").addClass("animated fadeInLeft");jQuery(".about-sub.about-sub1").css("visibility","visible");jQuery(".about-sub.about-sub2").addClass("animated fadeInLeft");jQuery(".about-sub.about-sub2").css("visibility","visible");jQuery(".about-sub.about-sub3").addClass("animated fadeInRight");jQuery(".about-sub.about-sub3").css("visibility","visible");jQuery(".about-sub.about-sub4").addClass("animated fadeInRight");jQuery(".about-sub.about-sub4").css("visibility","visible");}else if(scrolls<scroll_class){jQuery(".about-sub.about-sub1").removeClass("animated fadeInLeft");jQuery(".about-sub.about-sub1").css("visibility","hidden");jQuery(".about-sub.about-sub2").removeClass("animated fadeInLeft");jQuery(".about-sub.about-sub2").css("visibility","hidden");jQuery(".about-sub.about-sub3").removeClass("animated fadeInRight");jQuery(".about-sub.about-sub3").css("visibility","hidden");jQuery(".about-sub.about-sub4").removeClass("animated fadeInRight");jQuery(".about-sub.about-sub4").css("visibility","hidden");}});jQuery(document).ready(function($){jQuery('.tabs .tab-links a').on('click',function(e){var currentAttrValue=jQuery(this).attr('href');jQuery('.tabs '+currentAttrValue).fadeIn(400).siblings().hide();jQuery(this).parent('li').addClass('active').siblings().removeClass('active');e.preventDefault();});function timeing(){var nextLink=jQuery('.tabs .tab-links').find('li.active').next().find('a');if(nextLink.length>0){nextLink.click();}else{jQuery('.tabs .tab-links').find('li:first-of-type a').click();}}var timers=setInterval(function(){timeing();},8000);$('.tabs .tab-links').mouseenter(function(){clearInterval(timers);});});jQuery(window).scroll(function(){var scroll11=jQuery(window).scrollTop();var scroll_up11=jQuery('.fronts3').offset().top;if(scroll11>=scroll_up11){jQuery("#discover-lappyin").css("visibility","visible");jQuery("#discover-lappyright").css("visibility","visible");jQuery("#discover-lappyleft").css("visibility","visible");}else{jQuery("#discover-lappyin").css("visibility","hidden");jQuery("#discover-lappyright").css("visibility","hidden");jQuery("#discover-lappyleft").css("visibility","hidden");}});(function($){if($(".tab").hasClass("active")){$(".image-lappyleft").addClass("animated fadeInRight");$("#discover-lappyin").addClass("animated pulse");$("#discover-lappyright").addClass("animated swing");$("#design-lappyin").addClass("animated fadeInDown");$("#design-lappyright").addClass("animated pulse");$("#develop-lappyin").addClass("animated fadeInUp");$("#develop-lappyright").addClass("animated bounceInRight");$("#develop-lappyin2").addClass("animated zoomIn");$("#market-lappyin").addClass("animated pulse");$("#market-lappyright").addClass("animated swing");$("#analyse-lappyin").addClass("animated bounce");$("#analyse-lappyright").addClass("animated pulse");$("#analyse-lappyin2").addClass("animated zoomIn");}})(jQuery);jQuery(window).scroll(function(){var scrolls=jQuery(window).scrollTop();var scroll_up=jQuery('.blog-1').offset().top-300;var scroll_up22=jQuery('.blog-1').offset().top;var scroll_class=jQuery('.procedure').offset().top;if(scrolls>=scroll_up){jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img0").addClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img0").css("visibility","visible");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img1").addClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img1").css("visibility","visible");}else if(scrolls<scroll_class){jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img0").removeClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img0").css("visibility","hidden");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img1").removeClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img1").css("visibility","hidden");}if(scrolls>=scroll_up22){jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img2").addClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img2").css("visibility","visible");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img3").addClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img3").css("visibility","visible");}else if(scrolls<scroll_class){jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img2").removeClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img2").css("visibility","hidden");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img3").removeClass("animated pulse");jQuery(".col-md-6.col-sm-6.blog_posts_inner_one.img3").css("visibility","hidden");}});