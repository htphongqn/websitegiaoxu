(function(a){a.fn.scrollToTop=function(c){var d={speed:800};c&&a.extend(d,{speed:c});return this.each(function(){var b=a(this);a(window).scroll(function(){100<a(this).scrollTop()?b.fadeIn():b.fadeOut()});b.click(function(b){b.preventDefault();a("body, html").animate({scrollTop:0},d.speed)})})}})(jQuery);

//menu mobile
var width_win = $(window).width();
$(function () {
     $(".navx").prepend("<i class='fa fa-align-justify btn_navx'></i>");
	 $(".btn_navx").on('click', function (e) {
		 var hs=$(this).hasClass("fa-align-justify");
		  
		 if( hs )
		 {
			 $(this).closest(".navx").children("ul").slideDown();
			 $(this).removeClass("fa-align-justify").addClass("fa-remove");
		 }
		 else
		 {
			 $(this).closest(".navx").children("ul").slideUp();
			 $(this).removeClass("fa-remove").addClass("fa-align-justify");
		 }
	 });
    $( ".navx > ul   li" ).has( "ul" ).addClass("parent");
	$( ".navx > ul  li.parent" ).prepend("<i class='fa fa-plus'></i>");
    $(function () {
 	$('.navx > ul   li> i').on('click', function (e) {
		$(this).parent("li").addClass("active-left");
		$(this).parent("li").children("ul").slideToggle();
		
		$(this).parent("li").addClass("yl");
		if(	$(this).parent("li").children("i").hasClass("fa fa-plus")){
		$(this).parent("li").children("i").removeClass("fa-plus").addClass("fa-minus");
		
		}
		else{
		$(this).parent("li").children("i").removeClass("fa-minus").addClass("fa-plus");
		$(this).parent("li").removeClass("yl");
		}
});
});   
});


$(function () {
	$( ".link-detail" ).append("<i class='fa fa-long-arrow-right'></i>");
	$( ".navx >ul > li> ul>li:first-child" ).append("<span class='caretB'></span>");
	$( ".otherNews ul li" ).prepend("<i class='fa fa-angle-right'></i>");
	$( ".news .media, .navy >ul>li >.lv" ).prepend("<i class='fa fa-angle-right'></i>");
 	//$(".menu>div").append("<i class='fa fa-search tg-search'></i>"); 
	//$( ".tg-search" ).on('click', function () {
//		$(this).parent().children(".search").slideToggle();
//	});	
});

$( ".navx li h3").addClass("lv lv1");
$( ".navx li h4").addClass("lv lv2");
$( ".navx li h5").addClass("lv lv3");



$( ".navx li h4 a").prepend("<i class='fa fa-caret-right' style=' margin-right:5px;  '></i>");
$( ".navx li h5 a").prepend("<i class='fa fa-angle-right' style=' margin-right:5px; '></i>");


$( ".navy li h3").addClass("lv lv1");
$( ".navy li h4").addClass("lv lv2");
$( ".navy li h5").addClass("lv lv3");

$("body").append(" <a href='#top' id='toTop'> <i class='fa fa-chevron-up'></i></a> ");
$(function() {
	$("#toTop").scrollToTop(1000);
});
 

if(width_win>768){
jQuery(function(){
		jQuery('#camera_wrap_1').camera({
			thumbnails: false,
			height: '460px',
			navigation: true,
			pagination:true, 
			thumbnails:true
		});			 
	});
}
if(width_win<768){
jQuery(function(){
		jQuery('#camera_wrap_1').camera({
			thumbnails: false,
			height: '200px',
			navigation: true,
			
		});			 
	});
}

 
	
	if(width_win>768){
jQuery(function(){
		jQuery('#camera_wrap_2').camera({
			thumbnails: false,
			height: '460px',
			navigation: true,
			pagination:false, 
			thumbnails:true,
			  
		});			 
	});
}
if(width_win<768){
jQuery(function(){
		jQuery('#camera_wrap_2').camera({
			thumbnails: false,
			height: '200px',
			navigation: true,
			portrait:true,
			thumbnails			: true,
			
		});			 
	});
}
