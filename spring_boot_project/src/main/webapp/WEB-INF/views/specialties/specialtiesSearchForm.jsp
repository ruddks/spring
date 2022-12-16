<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트래블러</title>
		<c:import url="/WEB-INF/views/layout/specialties_head.jsp" />
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 1150px;
			}
			
			table th{ 
				background-color: #1C2938;
				color:white;
				
			}
			table td:first-child{ 
				width: 100px;				
			}
			table td:nth-child(2){ 
				width: 100px;				
			}
			table td:nth-child(3){ 
				width: 800px;				
			}
		</style>
		 
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/specialtiesSearch.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		<c:import url="/WEB-INF/views/layout/specialties_top.jsp" />
		<br><h3>특산물 검색</h3>
		<br>
		<form id="speSearchFrm">
			<select id="type" name="type">
				<option value="">검색 조건 선택</option>
				<option value="speName">특산물명</option>
				<option value="regionName">지역</option>
			</select>
			<input type="text" name="keyword">
			<input type="submit" value="검색">
		</form>
		<br><hr>
		<!-- 검색 결과 출력  -->
		<div id="searchResultBox">
		</div>
		
		<br><br><br><c:import url="/WEB-INF/views/layout/bottom.jsp" />
		</div>
	</body>
</html>





