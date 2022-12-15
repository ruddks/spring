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
		
		<h3>상품 목록</h3>
			<table border="1" width="800">
					<tr>
					    <th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>조회수</th>
						<th>생성일시</th>
					</tr>
					<c:forEach var="boa" items="${boaList }">
			            <tr>
                           <td><a href="<c:url value='/board/boardread/${boa.id}'/>" >${boa.id}</a></td>
			               <td>${boa.writer}</td>
			               <td>${boa.title }</td>
			               <td>${boa.viewCnt }</td>
			               <td><fmt:formatDate value="${boa.createdDate}"  pattern="yyyy-MM-dd" /></td>
			            </tr>
			         </c:forEach>
				</table><br><br>
				
		<a href="<c:url value='/boardwrite'/>">글쓰기</a>
		
		</section>
		
		<!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
      </div>
	</body>
</html>