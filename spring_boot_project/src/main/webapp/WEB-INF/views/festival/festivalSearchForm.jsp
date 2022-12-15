<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>축제 조회</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
			
	</head>
	<body>
		<div id="wrap">
			<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
			
			<h3>축제</h3>
			<br><br>
			<form method="post" > 
				<table border="1" width="800">
						<tr><td>축제 목록 번호 </td>
								<td><input type="hidden" name="fesNo" value="${fes.fesNo }">${fes.fesNo }</td></tr>
						<tr><td>축제명  </td><td>${fes.fesName }</td></tr>
						<tr><td>축제 설명  </td><td>${fes.fesDescript } </td></tr>
						<tr><td>축제 시작일 </td><td>${fes.fesFirst  } </td></tr>
						<tr><td>축제 종료일 </td><td>${fes.fesLast  } </td></tr>
						<tr><td>지역</td>	${regionName  }<td></td></tr>
						
						
					</table>
				</form>	
				
				<br><br>
				<a href="<c:url value='/festival/festivalregList/${fes.regionNo}'/>"><button>상품 목록 보기</button></a>
				
				
			 <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
    
		</div>
	</body>
</html>






