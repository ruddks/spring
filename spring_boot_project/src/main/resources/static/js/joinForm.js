/**
 *  formCheck.js
 */
 
 
 $(document).ready(function(){
		$('#name').focus()
		$('input[type="text"], input[type="password"]').on('focus', function() {
			$(this).css('background', 'rgb(232, 232, 232)');
		});
		$(':text, :password').on('blur', function() {
			 $(this).css('background', 'white');
		 });
		$('#hp2').on('keyup', function() {
			if($(this).val().length == 4)
				$('#hp3').focus();  
		});
		$(document).on('keydown', function(e){
			if(e.keyCode == 13) return false; 
		});
	
		$('#id').on('keydown', function(e) {
			if ($('#id').val() != "" && e.keyCode == 13) {
				$('#pwd').focus();
			}
		});
		
		
        $('#joinForm').on('submit', function(){ 
			if ($('#name').val() == "") {
				alert("성명을 입력하세요");
				$('#name').focus();				
				return false;
			}
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
			 
			if ($('#pwdcheck').val() == "") {
				alert("비밀번호 확인을 입력하세요");				
				$('#pwdcheck').focus();				
				return false;
			}
			if ($('#month').val() == "") {
				alert("생년월일을 입력하세요");				
				$('#month').focus();				
				return false;
			}
			if ($('#hp2').val() == "") {
				alert("휴대폰 번호를 입력하세요");				
				$('#hp2').focus();				
				return false;
			}
			if ($('#hp3').val() == "") {
				alert("휴대폰 번호를 입력하세요");				
				$('#hp3').focus();				
				return false;
			}
			if ($('#email').val() == "") {
				alert("이메일을 입력하세요");				
				$('#email').focus();				
				return false;
			}
		    if(!$('input[type="radio"][name="gender"]').is(':checked')) {
				alert("성별을 선택하세요");
				return false;
			}
		    if(!$('input[type="radio"][name="emailcheck"]').is(':checked')) {
				alert("이메일 수신 여부를 선택하세요");
				return false;
			}
		}); 	
	});
	
	
	
	
	