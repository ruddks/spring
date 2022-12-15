<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 상세 조회</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
	</head>
	<body>
		<div id="wrap">
			<table border="1" width="400">
					<tr><td scope="row">제목 </td><td>${boa.title }</td></tr>
					<tr><td scope="row">번호  </td><td>${boa.id }</td>
					<td scope="row">작성자  </td><td>${boa.writer }</td>
					<td scope="row">날짜 </td><td>${boa.createdDate } </td>
					<td scope="row">수정날짜 </td><td> ${boa.modifiedDate }</td></tr>
					<tr><td scope="row">내용 </td><td>${boa.content }</td></tr>
					</table><br><br>
					
		</div>
	</body>
</html>






