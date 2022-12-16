<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트레블러</title>
		<c:import url="/WEB-INF/views/layout/specialties_head.jsp" />
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
		<c:import url="/WEB-INF/views/layout/specialties_top.jsp" />
			<h3>전체 특산물 조회</h3>
			<table border="1">
					<tr>
						<th>특산물 목록 번호</th>
						<th>특산물명</th>
						<th>특산물 설명</th>
						<th>특산물 지역</th>
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
				
			</div>
	</body>
</html>








