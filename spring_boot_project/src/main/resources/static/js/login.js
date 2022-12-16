/**
 * login.js
 */

 $(document).ready(function(){
 	$('#loginForm').on('submit', function(){
 	//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		 if ($('#id').val() == "") {
		alert("아이디를 입력하세요");
		$('#id').focus();
	  return false;
	}
	  if ($('#pwd').val() == "") {				
	  alert("비밀번호를 입력하세요");				
	  $('#pwd').focus();				
	  return false;
	}
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/member/login",
 			data: {"id":$('#id').val(),
 			       "pwd":$('#pwd').val()},
 			dataType:'text',
 			success:function(result){
 				if(result == "success"){
 					alert("로그인 성공\n index 페이지로 이동합니다.");
 					location.href="/";
 				}else{
 					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
 				}
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
 