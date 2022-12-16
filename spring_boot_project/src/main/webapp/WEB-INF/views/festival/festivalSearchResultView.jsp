<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>축제 검색 결과</title>

	</head>
	<body>
		<div id="wrap">
			<hr>
			<h3>축제 검색 결과</h3>
			<table border="1">
					<tr>
						<th>축제 목록 번호</th>
						<th>축제명</th>
						<th>축제 시작일</th>
						<th>지역</th>
					</tr>					
					<c:choose>
						<c:when test="${empty prdList}">
								<tr align="center">
									<td colspan="4">찾는 축제가 없습니다</td>
								</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="fes" items="${fesList }">
					            <tr>
					               <td>${prd.fesNo }</td>
					               <td>${prd.fesName }</td>
					               <td><fmt:formatDate value="${prd.fesFirst}"  pattern="yyyy-MM-dd" /></td>
					               <td>${prd.regionName }</td>
					            </tr>
					         </c:forEach>
			         </c:otherwise>
			   </c:choose>      
				</table><br><br>
				
			</div>
	</body>
</html>








