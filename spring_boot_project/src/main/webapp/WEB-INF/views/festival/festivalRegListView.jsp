<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>카테고리별 상품 조회</title>
		<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
	<body>
		<div id="wrap">
        	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section>
		
		<h3>축제 목록</h3>
			<table border="1" width="800">
					<tr>
						<th>축제 목록 번호</th>
						<th>축제명</th>
						<th>축제 설명</th>
						<th>축제 시작일</th>
						<th>축제 종료일</th>
						<th>지역</th>
					</tr>
					<c:forEach var="prd" items="${fesList }">
			            <tr>
			               <td><a href="<c:url value='/product/detailViewProduct/${prd.prdNo}'/>" >${prd.prdNo }</a></td>
			               <td>${fes.fesName}</td>
			               <td>${fes.fesDescript}</td>
			               <td>${fes.fesFirst  }</td>
			               <td>${fes.fesLast }</td>
			            </tr>
			         </c:forEach>
				</table><br><br>
		
		</section>
		
		<!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
      </div>
	</body>
</html>