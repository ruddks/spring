/**
 * loginForm.js
 */

$(document).ready(function(){
$('#logForm').on('submit',function(){
  if ($('#inputId').val() == "") {
	alert("아이디를 입력하세요");
	$('#inputId').focus();
  return false;
}
  if ($('#inputPw').val() == "") {				
  alert("비밀번호를 입력하세요");				
  $('#inputPw').focus();				
  return false;
}
			
}); 
});