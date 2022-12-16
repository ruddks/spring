<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 가입 폼</title>	
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/join.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="<c:url value='/js/idCheck.js'/>"></script>
		<script src="<c:url value='/js/searchZip.js'/>"></script>
		<script src="<c:url value='/js/joinForm.js'/>"></script>
		

	</head>
	<body>
	<div id="wrap">
	<!--  top -->         
        <c:import url="/WEB-INF/views/layout/top.jsp" />
	
		
		<!--  회원 가입 폼  -->
		<section>
	        <h1 id="title">회원 가입</h1>
	        <form id="joinForm" name="joinForm" method="post"  action="<c:url value='/member/insert'/>">
	        	<table>
		            <tr>
		            	<th> 성명</th>
		           		<td><input type="text" id="memName" name="memName" size="20"></td>
	           		</tr>
		            <tr>
		            	<th> ID</th>
		            	<td><input type="text" id="memId" name="memId" size="20"> 
		            		<input type="button" id="idCheckBtn" value="ID 중복 체크"></td>
	            	</tr>
		            <tr>
		            	<th>비밀번호</th>
		            	<td><input type="password" id="memPw" name="memPw" size="20"></td>
	            	</tr>
		            <tr>
		            	<th>휴대폰 번호</th>
		            	<td><input type="text" id="memHp1" name="memHp1" size="3"> 
		                    - <input type="text" id="memHp2" name="memHp2" size="4">
		                    - <input type="text" id="memHp3" name="memHp3" size="4"></td>
                    </tr>
                    <tr>
		            	<th>이메일</th>
		            	<td><input type="email" id="memEmail" name="memEmail"></td>
	            	</tr>
                    <tr>
		            	<th>주소</th>
		            	<td colspan="3">
		            		<input type="text" id="memZipcode" name="memZipcode" size="5" readonly>
		            		<input type="button" id="searchZipBtn" name="searchZipBtn" value="우편번호 찾기"><br>
		            		<input type="text" id="memAddress1" name="memAddress1" placeholder="주소 입력" size="40" readonly> <br>
		            		<input type="text" id="memAddress2" name="memAddress2" placeholder="상세 주소 입력" size="40">
	            		</td>
	            	</tr>
		            	             
		             <tr>
		                <td colspan="2" align="center" id="button">
		                    <br><input type="submit" value="가입">
		                    <input type="reset" value="취소">
		                </td>
		            </tr>             
	            </table>
	      </form>
	    </section>
	      <!--  bottom -->         
     	  <c:import url="/WEB-INF/views/layout/bottom.jsp" />

     </div>
    </body>
</html>


