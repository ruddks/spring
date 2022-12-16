/**
 *  joinForm.js
 */
 

 $(document).ready(function(){
 	$('#joinForm').on('submit', function(){
 	//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();*/
 		
 		
     
			if ($('#memName').val() == "") {
				alert("성명을 입력하세요");
				$('#memName').focus();				
				return false;
			}
			if ($('#memId').val() == "") {
				alert("아이디를 입력하세요");
				$('#memId').focus();				
				return false;
			}
			
			if ($('#idCheckBtn').val() == "") {
				alert("아이디 중복체크를 하세요");
				$('#idCheckBtn').focus();				
				return false;
			}
			
			if ($('#memPw').val() == "") {
				alert("비밀번호를 입력하세요");
				$('#memPw').focus();				
				return false;
			}
			 
			
			
			if ($('#memHp1').val() == "") {
				alert("휴대폰 번호를 입력하세요");				
				$('#memHp1').focus();				
				return false;
			}
			if ($('#memHp2').val() == "") {
				alert("휴대폰 번호를 입력하세요");				
				$('#memHp2').focus();				
				return false;
			}
			if ($('#memHp3').val() == "") {
				alert("휴대폰 번호를 입력하세요");				
				$('memHp3').focus();				
				return false;
			}
			if ($('#memEmail').val() == "") {
				alert("이메일을 입력하세요");				
				$('#memEmail').focus();				
				return false;
			}
		    
		 	
	}); 

	});
	