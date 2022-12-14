/**
 * 
 */
 
 
 
 $(document).ready(function(){
	
	$('img[usemap]').rwdImageMaps();
	
	$(window).on('scroll',function(){
		
		if($(document).scrollTop()>=$('#headerBox').height()){
			$('#mainMenuBox').addClass('mainMenuFixed mainMenuShadow');
		}else{
			$('#mainMenuBox').removeClass('mainMenuFixed mainMenuShadow');
		}
	});
	
	
	$('#moveToTop').on('click',function(){
		$('html, body').animate({scrollTop:0},500);
	});
	
	
	
});


