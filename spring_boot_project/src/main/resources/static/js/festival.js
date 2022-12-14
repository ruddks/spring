/**
 *  slideShow.js
 */
   $(document).ready(function(){
	$(".imgrice").show();
	$(".imgpear").hide();
	$(".imghub").hide();
  $("#rice").click(function(){
	$(".imgrice").show();
	$(".imgpear").hide();
	$(".imghub").hide();
 });
   $("#pear").click(function(){
	$(".imgrice").hide();
	$(".imgpear").show();
	$(".imghub").hide();
 });
   $("#hub").click(function(){
	$(".imgrice").hide();
	$(".imgpear").hide();
	$(".imghub").show();
 });
 
 $('#moveToTop').on('click',function(){
		$('html, body').animate({scrollTop:0},500);
	});
  });
  
  
 