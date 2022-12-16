/**
 * 
 */
 
 
 
 $(document).ready(function(){
	
	//$('img[usemap]').rwdImageMaps();
	$("#img").width("100%");
	
	$(window).on('scroll',function(){
		
		if($(document).scrollTop()>=$('#headerBox').height()){
			$('#mainMenuBox').addClass('mainMenuFixed mainMenuShadow');
		}else{
			$('#mainMenuBox').removeClass('mainMenuFixed mainMenuShadow');
		}
	});

	$('#fesAllBtn').on('click',function(){
		window.location.href="/festival/festivalListAll";
	});
	
	$('#fesBtn').on('click',function(){
		window.location.href="/festival/festivalSearchForm";
	});
	
	$('#speAllBtn').on('click',function(){
		window.location.href="/specialties/specialtiesListAll";
	});
	
	$('#speBtn').on('click',function(){
		window.location.href="/specialties/specialtiesSearchForm";
	});
	
	$('#moveToTop').on('click',function(){
		$('html, body').animate({scrollTop:0},500);
	});
	
	
	
});


