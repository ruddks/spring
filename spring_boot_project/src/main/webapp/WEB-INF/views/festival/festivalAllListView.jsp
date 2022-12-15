<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트레블러</title>
	<a>검색</a>	
	</head>
	<body>
	
		<div id="wrap">
			<h3>전체 축제 조회</h3>
			<table border="1">
					<tr>
						<th>축제 목록 번호</th>
						<th>축제명</th>
						<th>축제 시작일</th>
						<th>축제 종료일</th>
						<th>지역</th>
					</tr>
					<c:forEach var="fes" items="${fesList }">
			            <tr>
			               <td>${fes.fesNo }</td>
			               <td>${fes.fesName }</td>
			               <td><fmt:formatDate value="${fes.fesFirst}"  pattern="yyyy-MM-dd" /></td>
			               <td><fmt:formatDate value="${fes.fesLast }"  pattern="yyyy-MM-dd" /></td>
			               <td>${fes.regionName }</td>		               
			            </tr>
			         </c:forEach>
				</table><br><br>
				
				<a href="<c:url value='/'/>">메인 화면으로 이동</a>
			</div>
	</body>
</html>








