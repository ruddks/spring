<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트래블러</title> 
 <c:import url="/WEB-INF/views/layout/head.jsp" /> 
	</head>
	<body>
    	 <div id="wrap">
    	<c:import url="/WEB-INF/views/layout/top.jsp" />    
            <section>
          <div id="Introduction">
          		지역 축제와 지역 특산품을 소개합니다
         </div>
         <div id="fireWorks">
         	  <img src="<c:url value='/image/fireWorks.jpg' />">
         </div>
          	<article  id="slideShow"> <!-- 슬라이드 쇼 -->  
            	<!-- 1.prevNext 버튼 박스 -->
            	<div id="prevNextButtonBox">
            		<img id='prevButton' src="<c:url value='/image/prevButton.png' />">
            		<img id='nextButton' src="<c:url value='/image/nextButton.png' />">
            	</div>
            		<!-- 2.슬라이드 쇼 박스 -->
            		<div id="slideShowBox">
						<div id="slidePanel">
						<img src="image/incheon.jpg" class="slideImage">
							<img src="<c:url value='/image/라면축제.jpg' />" class="slideImage">
							<img src="<c:url value='/image/꽃jpg.jpg' />" class="slideImage">
							<img src="<c:url value='/image/사계.png' />" class="slideImage">
							
						</div> <!-- slidePanel 끝 -->
					</div><!-- slideShowBox 끝 -->
					<!-- 3.컨트롤 박스 -->
					<div id="controlButtonBox">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
					</div>
					
                </article> 
                <article id="content1"> <!-- 탭메뉴 -->    
               
                	<c:import url="/WEB-INF/views/Map.jsp"></c:import>        
                </article>
               
            </section>
            <c:import url="/WEB-INF/views/layout/bottom.jsp" />
      </div>
    </body>
</html>
 