<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트레블러</title>
	</head>
	<body>
	
		<div id="wrap">
			<h3>전체 특산품 조회</h3>
			<table border="1">
					<tr>
						<th>특산품 목록 번호</th>
						<th>특산품명</th>
						<th>특산품 설명</th>
						<th>특산품 지역</th>
					</tr>
					<c:forEach var="spe" items="${speList }">
			            <tr>
			               <td>${spe.speNo }</td>
			               <td>${spe.speName }</td>
			               <td>${spe.speDescript }</td>
			               <td>${spe.regionName }</td>		               
			            </tr>
			         </c:forEach>
				</table><br><br>
				
				<a href="<c:url value='/'/>">메인 화면으로 이동</a>
			</div>
	</body>
</html>








