<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트레블러</title>
		<c:import url="/WEB-INF/views/layout/festival_head.jsp" />
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 800px;
			}
			
			table th{ 
				background-color: #1C2938;
				color:white;
			}
		</style>
	</head>
	<body>
	
		<div id="wrap">
		<c:import url="/WEB-INF/views/layout/festival_top.jsp" />    
			<br><br><h3>전체 축제 조회</h3>
			<br><hr><br><br><br>
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
				
			</div>
	</body>
</html>








