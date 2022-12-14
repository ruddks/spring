$(document).ready(function () {
	$(".mySlideDiv3").not(".active3").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
	
	setInterval(nextSlide3, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
});

//이전 슬라이드
function prevSlide3() {
	$(".mySlideDiv3").hide(); //모든 div 숨김
	var allSlide3 = $(".mySlideDiv3"); //모든 div 객체를 변수에 저장
	var currentIndex3 = 0; //현재 나타난 슬라이드의 인덱스 변수
	
	//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
	$(".mySlideDiv3").each(function(index,item){ 
		if($(this).hasClass("active3")) {
			currentIndex3 = index;
		}
        
	});
	
	//새롭게 나타낼 div의 index
	var newIndex3 = 0;
    
	if(currentIndex3 <= 0) {
		//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
		newIndex3 = allSlide3.length-1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
		newIndex3 = currentIndex3-1;
	}

	//모든 div에서 active 클래스 제거
	$(".mySlideDiv3").removeClass("active3");
    
	//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
	$(".mySlideDiv3").eq(newIndex3).addClass("active3");
	$(".mySlideDiv3").eq(newIndex3).show();

}

//다음 슬라이드
function nextSlide3() {
	$(".mySlideDiv3").hide();
	var allSlide3 = $(".mySlideDiv3");
	var currentIndex3 = 0;
	
	$(".mySlideDiv3").each(function(index,item){
		if($(this).hasClass("active3")) {
			currentIndex3 = index;
		}
        
	});
	
	var newIndex3 = 0;
	
	if(currentIndex3 >= allSlide3.length-1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex3 = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex3 = currentIndex3+1;
	}

	$(".mySlideDiv3").removeClass("active3");
	$(".mySlideDiv3").eq(newIndex3).addClass("active3");
	$(".mySlideDiv3").eq(newIndex3).show();
	
}