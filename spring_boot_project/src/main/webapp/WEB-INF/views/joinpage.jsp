<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" type="text/css" href="css/joinpage.css">
		<script src= "js/jquery-3.6.1.min.js"></script>
		<script src="js/joinForm.js"></script>
			
	</head>
	<body>
		<div id="wrap">
			<section>
			  <h2 align="center">회원가입</h2>
			  <br>
			  <form id="joinForm" name="joinForm" method="post" action="loginpage.html">
				<table align="center">
				<tbody>
					<tr>
						<td>성명</td>
						<td><label><input type="text" size="10" id= "name" autofocus></label></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><label><input type="text" id="id" maxlength="10" size="10"></label>
									<input type="button" value="ID중복체크">
									(영문자+특수문자:6~10자)</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><label><input type="password" id="pwd" size="10"></label>
							(영문자+숫자+특수문자:10~20자)</td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><label><input type="password" id="pwdcheck" size="10"></label></td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td><label><input type="text" size="2"maxlength="4"id="month"> 년</label>							
							<select name="day">
								<option value="01"selected>1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select> 일
							<label><input type="radio" name="solar&luna" value="1" checked>양력</label> 
							<label><input type="radio" name="solar&luna" value="2">음력</label>
						</td>
					</tr>
					
					<tr>
						<td>휴대폰번호</td>
						<td><select name="num" id="hp1">
							<option value="010"selected>010</option>
							<option value="011">011</option>
							<option value="012">012</option>
							<option value="013">013</option>
							<option value="014">014</option>
							<option value="015">015</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
							<option value="070">070</option>
							</select> -
							<label><input type="text" size="2" id="hp2"></label> -
							<label><input type="text" size="2" id="hp3"></label></td>
					</tr>
				
					
					<tr>
						<td>성별</td>
						<td><label><input type="radio" name="gender" value="1">남</label>
							<label><input type="radio" name="gender" value="2">여</label></td>
					</tr>	
					<tr>
						<td>이메일</td>
						<td><label><input type="text" size="6" id="email"></label>@
							<select name="address">
								<option value="naver" selected>naver.com</option>
								<option value="gmail">gmail.com</option>
								<option value="daum">daum.net</option>
							</select></td>
					</tr>
					<tr>
						<td>이메일 수신 여부</td>
						<td><label><input type="radio" name="emailcheck" value="1" >예</label>
							<label><input type="radio" name="emailcheck" value="2">아니오</label></td>
					</tr>					
				</tbody>
					<tfoot align="center">
					<tr>
						<td colspan="2"><input type="submit" value="회원가입">
										<input type="reset" value="취소"></td>
					</tr>
				</tfoot>
				</table>
				</form>
			</section>
		</div>
	</body>
</html>