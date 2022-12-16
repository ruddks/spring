<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물작성폼</title>

<script type="text/javascript">
	window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("createdDate");
		bir.value = today;
	}
</script>
<style>
.layout{
text-align: center;
}
textarea{
height : 500px;
width : 70%;
}
</style>
</head>
<body>
<div class="layout">
<form action="/board/write" method="post">
<a3>제목  </a3><input id="title" name="title" type="text">
<br /><br />
작성자 <input id="writer" name="writer" type="text"><br /><br />
날짜 <input id="createdDate" name="createdDate" type="date" readonly ><br /><br />
조회수 <input id="viewCnt" name="viewCnt" type="text" value=0 readonly><br /><br />

<textarea id="content" name="content"></textarea><br/><br/>
<button type="submit">작성</button>
</form>
</div>
</body>
</html>