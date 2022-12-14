<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
       <title>트래블러</title>
      <c:import url="/WEB-INF/views/layout/specialties_head.jsp" />
   </head>
   <body>
    	<div id="wrap">
    	<c:import url="/WEB-INF/views/layout/specialties_top.jsp" />
            <section >
            <div id="menuba">
            <div id="menuba2">
            <ul id="menuba2">
            <li><a href ="#" id="rice">경북궁쌀</a></li>
            <li><a href ="#" id="pear">수라배</a></li>
            <li><a href ="#" id="hub">식용허브</a></li>
            </ul>
            </div>
            <div id="menuba3">
            <div class="imgrice"><img src="<c:url value='/image/경북궁쌀.jpg'/>"><hr/>
                        가을 9~11월<hr />
경복궁쌀 <hr /> 깨끗한 재배환경에서 자란 우수한 쌀만 엄선하여 맛 좋은 전통밥맛의 서울대표 브랜드 쌀 생산.</div>

            <div class="imgpear"><img src="<c:url value='/image/수라배.jpg'/>"><hr/>
             가을 9~11월<hr />
수라배 <hr /> 조선시대 어린 단종이 유배를 갈 때 호송 책임자였던 왕방연이 관직을 그만두고 서울 중랑구 묵동 
봉화산<br/> 아래에서 단종을 위하여 재배한데서 유래를 두고 있으며 감미가 높고 맛이 뛰어나 구한말까지 왕실에 진상 될 
정도로<br /> 품질이 우수 함.</div>

            <div class="imghub"><img src="<c:url value='/image/식용허브.jpg'/>"><hr/>봄 3~5월<hr/>
식용허브/식용꽃 <hr/> 음식의 맛, 모양, 빛과 향기를 돋우어주는 국내 최고품질의 식용 꽃 및 식용허브 공급.</div>
            </div>
            </div>
            </section>
			<c:import url="/WEB-INF/views/layout/bottom.jsp" />
   </div>
   </body>
</html>