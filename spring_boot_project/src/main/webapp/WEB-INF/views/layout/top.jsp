<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				<header>
        		<div id="headerBox">
	            	<div id="logoBox">
	            		<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo.JPG'/>" id='logoImg'></a>
	            	</div>
	            	
	          <nav>  	
	         
				<div class="search">
					<button id="fesBtn">축제 검색</button>&nbsp;
					<button id="fesAllBtn">전체 축제 조회</button>
            	&nbsp;&nbsp;
					<button id="speBtn">특산물 검색</button>&nbsp;
					<button id="speAllBtn">전체 특산물 조회</button>
				</div>
				
		
			</nav>
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
							<a href="<c:url value='/board/board'/>">게시판</a>  
						</c:if>	            	
	            	</div>
            	</div>
            	
            	
            	<hr>
            </header>   
            <nav>
            
			  
		</nav>  
            <nav id="nav">
            <div id="mainMenuBox">
           <!--  <ul id="menuItem"> -->
           			   <a href="<c:url value='/specialties_서울'/>" id="서울">서울</a>
            			<a href="<c:url value='/specialties_경기도'/>" id="경기도">경기도</a>
            			<a href="<c:url value='/specialties_강원도'/>" id="강원도">강원도</a>
            			<a href="<c:url value='/specialties_충청도'/>" id="충청도">충청도</a>
            			<a href="<c:url value='/specialties_경상도'/>" id="경상도">경상도</a>
            			<a href="<c:url value='/specialties_전라도'/>" id="전라도">전라도</a>
            		<!-- </ul> -->
            	</div>
            </nav> 