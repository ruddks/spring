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
		td{
		border:1px solid black;
		border-radius: 15px;
		}
		table{
		    margin-left:auto; 
            margin-right:auto;
            border:1px solid black;
            border-radius: 15px;
		}
			#wrap{
				width: 100%;
				height: 100%;
				text-align: center;
			}
			button {
			border:1px solid black;
			  border-radius: 15px;
  background-color: blue;
  width: 100px;
  height: 25px;
  border: none;
  color: white;
  paddng: 15px 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}		
		</style>
	</head>
	<body>
		<div id="wrap">
		<a3>게시판</a3><br/><br/>
			<table>
					<tr><td scope="row">제목 </td><td width="500px">${boa.title }</td></tr>
					<tr><td scope="row">번호  </td><td width="50px">${boa.id }</td></tr>
					<tr><td scope="row">작성자  </td><td>${boa.writer }</td></tr>
					<tr><td scope="row">작성일 </td><td>${boa.createdDate } </td></tr>
					<tr><td scope="row">수정날짜 </td><td> ${boa.modifiedDate }</td></tr>
					<tr><td scope="row">내용 </td><td height="500px">${boa.content }</td></tr>
					</table><br><br>
					<a href="<c:url value='/board/boardupdate/${boa.id}'/>">상품 정보 수정</a><br><br>
					<button value="수정" onclick='location.href="/board/boardupdate/${boa.id}"'>수정</button>
					<button value="수정" onclick='location.href="/board/board"'>뒤로</button>
					<button value="삭제" onclick="javascript:deleteCheck();">삭제</button>
				<!--  삭제 확인 메시지 출력 -->
				<script>
					function deleteCheck(){
						var answer = confirm("삭제하시겠습니까?");
						if(answer){
							location.href="/board/deleteboard/${boa.id}";
						}
					}
				</script>
					
		</div>
	</body>
</html>






