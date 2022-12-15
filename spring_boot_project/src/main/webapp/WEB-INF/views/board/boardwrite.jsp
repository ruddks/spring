<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물작성폼</title>
<style>
textarea{
height : 70%;
width : 70%;
}
</style>
</head>
<body>
<div class="layout">
<form action="/board/write" method="post">
<a3>제목  </a3><input id="title" name="title" type="text">
<br />
작성자 <input id="writer" name="writer" type="text"><br />
<textarea id="content" name="content"></textarea>
<button type="submit">작성</button>
</form>
</div>
</body>
</html>