<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>카테고리별 상품 조회</title>
		<style>
		a{
		text-decoration: none;
		}
		th{
		background-color:#dcdcdc;
		}
		</style>

		<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
	<body>
		<div id="wrap">
        	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<section>
		
		<h3>게시판</h3>
			<table border="1 solid black" width="800">
					<tr>
					    <th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>조회수</th>
						<th>작성일</th>
					</tr>

					<c:forEach var="boa" items="${boaList }">
			            <tr>    
                           <td><a id="click" name="click" href="<c:url value='/board/boardread/${boa.id}'/>" >${boa.id}</a></td>
			               <td>${boa.writer}</td>
			               <td>${boa.title }</td>
			               <td>${boa.viewCnt }</td>
			               <td >${boa.createdDate}</td>
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