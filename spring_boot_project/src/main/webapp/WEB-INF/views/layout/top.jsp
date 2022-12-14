<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				<header>
        		<div id="headerBox">
	            	<div id="logoBox">
	            		<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.JPG'/>" id='logoImg'></a>
	            	</div>
	            	<div id="topMenuBox">
						<a href="<c:url value='/loginpage'/>" id="Login">로그인</a>&nbsp;&nbsp;<a href="<c:url value='/joinpage'/>"id="SignUp">회원가입</a>
					</div>
            	</div>
            	<hr>
            </header>   
            <nav>
			<form action="https://search.naver.com/search.naver">
				<div class="search">
					<input type="text" name="query" value="">
					<button type="submit">검색</button>
				</div>
			</form>
		</nav>  
            <nav id="nav">
            <div id="mainMenuBox">
            <ul id="menuItem">
           			    <li><a href="<c:url value='/specialties_서울'/>" id="서울">서울</a></li>
            			<li><a href="<c:url value='/specialties_경기도'/>" id="경기도">경기도</a></li>
            			<li><a href="<c:url value='/specialties_강원도'/>" id="강원도">강원도</a></li>
            			<li><a href="<c:url value='/specialties_충청도'/>" id="충청도">충청도</a></li>
            			<li><a href="<c:url value='/specialties_경상도'/>" id="경상도">경상도</a></li>
            			<li><a href="<c:url value='/specialties_전라도'/>" id="전라도">전라도</a></li>
            		</ul>
            	</div>
            </nav> 