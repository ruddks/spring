<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>특산품 검색 결과</title>

	</head>
	<body>
		<div id="wrap">
			<hr>
			<h3>특산품 검색 결과</h3>
			<table border="1">
					<tr>
						<th>특산품 목록 번호</th>
						<th>특산품명</th>
						<th>특산품 설명</th>
						<th>특산품 지역</th>
					</tr>					
					<c:choose>
						<c:when test="${empty speList}">
								<tr align="center">
									<td colspan="4">찾는 특산품이 습니다</td>
								</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="fes" items="${fesList }">
					            <tr>
					               <td>${spe.speNo }</td>
					               <td>${spe.speName }</td>
					               <td>${spe.speDescript }</td>
					               <td>${spe.regionName }</td>	
					            </tr>
					         </c:forEach>
			         </c:otherwise>
			   </c:choose>      
				</table><br><br>
				
				<a href="<c:url value='/'/>">메인 화면으로 이동</a>
			</div>
	</body>
</html>








