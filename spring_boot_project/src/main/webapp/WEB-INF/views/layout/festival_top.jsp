<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
        	<div id="headerBox">
        	<div id="logoBox">
	            		<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.JPG'/>" id='logoImg'></a>
	            	</div>
        		<span id="a"><a href="<c:url value='/festival' />">전국 지역축제</a></span>
	           <div id="topMenuBox">
						<!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
						<c:if test="${empty sessionScope.sid }">
							<a href="<c:url value='/member/loginForm'/>">로그인</a> 
							<a href="<c:url value='/member/joinForm'/>">회원가입</a>
						</c:if>		
						
						<!-- 로그인 성공 후 보여줄 메뉴 항목 -->
						<c:if test="${not empty sessionScope.sid }">
							${sessionScope.sid}님 환영합니다! 
							<a href="<c:url value='/member/logout'/>">로그아웃</a> 
							<a href="<c:url value='/board/boardList'/>">게시판</a>  
						</c:if>	            	
	            			<a href="#">고객센터22</a>
					</div>
            	</div>
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
           			    <li><a href="<c:url value='/festival_서울' />" id="서울">서울</a></li>
           			    <li><a href="<c:url value='/festival_경기도' />" id="경기도">경기도</a></li>
           			    <li><a href="<c:url value='/festival_강원도' />" id="강원도">강원도</a></li>
           			    <li><a href="<c:url value='/festival_충청도' />" id="충청도">충청도</a></li>
           			    <li><a href="<c:url value='/festival_경상도' />" id="경상도">경상도</a></li>
           			    <li><a href="<c:url value='/festival_전라도' />" id="전라도">전라도</a></li>
            		</ul>
            	</div>
            </nav>	