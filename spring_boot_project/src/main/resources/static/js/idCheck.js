/**
 * idCheck.js
 */

 $(document).ready(function(){
 	$('#idCheckBtn').on('click', function(){ 	
 		event.preventDefault(); 		
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"idCheck",
 			data: {"memId":$('#memId').val()},
 			dataType:'text',
 			success:function(result){
 				if(result == "no_use")
 					alert("사용할 수 없는 아이디입니다.");
 				else
 					alert("사용 가능한 아이디입니다.");
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
 