/**
 * 
 */
 
 
 
 $(document).ready(function(){
	
	var movedIndex=0;
	
	function moveSlide(index){
		
		movedIndex=index;
		
		var moveLeft=-(640*index);
		$('#slidePanel').animate({'left':moveLeft},'slow');
		
	}
	
	$('#prevButton').on('click',function(){
		if(movedIndex!=0){
			movedIndex=movedIndex-1;
		}
		moveSlide(movedIndex);
	});
	
	$('#nextButton').on('click',function(){
		if(movedIndex!=3){
			movedIndex=movedIndex+1;
		}
		moveSlide(movedIndex);
	});
	
	
	
	
	$('.controlButton').each(function(index){
		$(this).hover(
			function(){
				$(this).attr('src','image/controlButton2.png');
			},function(){
				$(this).attr('src','image/controlButton1.png');
			}
		);
		
		$(this).on('click',function(){
			moveSlide(index);
		});
		
		
	});
	
	
	
	
	
	
});






