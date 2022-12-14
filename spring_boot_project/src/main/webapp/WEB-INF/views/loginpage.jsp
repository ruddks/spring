<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="css/loginpage.css">
     <script src= "js/jquery-3.6.1.min.js"></script>	
     <script src="js/loginForm.js"></script>	
     
    
  </head>
  <body>            
    <section>
      <form id="logForm" method="post" action="index.html">
      <h2 align="center">로그인</h2>
        <div class="login">
        <ul class="top">
          <li><label >아이디</label><input type="text" id="inputId" maxlength="20" placeholder="아이디를 입력하세요"></li>
          <li><label >비밀번호</label><input type="password" id="inputPw" maxlength="20"placeholder="비밀번호를 입력하세요"></li>
          <li class="save"><input type="checkbox" id="idsave"><label for="idsave">아이디 저장</label>
                           <input type="checkbox" id="autologin"><label for="autologin">자동 로그인</label></li>
          <li><input type="submit" value="로그인"></li>
        </ul>
        <ul class="bottom">
          <li><a href="joinpage.html">회원가입</a></li>
          <li><a href="">아이디 찾기</a></li>
          <li><a href="">비밀번호 찾기</a></li>
        </ul>
        </div>
          
         
          
       </form>
    </section>   
  </body>
</html>