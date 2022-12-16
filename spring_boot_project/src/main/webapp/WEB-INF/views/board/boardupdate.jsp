<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 정보 수정 폼</title>
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
			<hr>
			<form method="post" action="<c:url value='/board/updateboard'/>">
				<table>
					<tr><td>제목  </td>
							<td><input type="text" id="title" name="title"  value="${boa.title }" ></td></tr>
					<tr><td>내용  </td>
							<td><textarea id="content" name="content" value="${boa.content }"></textarea></td></tr>
					<tr><td>작성자 </td>
							<td> <input type="text" id="writer" name="writer"   value="${boa.writer }" ></td></tr>
					<tr><td colspan="2"><input type="submit" value="수정"> 
													      <input type="reset" value="취소"></td></tr>
				</table>
			</form>
			<br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a>
		</div>
	</body>
</html>