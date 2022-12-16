<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>트래블러</title>
     <c:import url="/WEB-INF/views/layout/festival_head.jsp" />
   </head>
   <body>
    	<div id="wrap">
        <c:import url="/WEB-INF/views/layout/festival_top.jsp" />	
<section>
<article id=article>    
<div class="slideshow-container">
     <div class="mySlideDiv3 fade active3"><c:url value='/' />
       <a href="<c:url value='/festival_서울' />"><img src="<c:url value='/image/정월대보름.jpg' />"></a> 
     </div>
          <div class="mySlideDiv3 fade">
         <a href="<c:url value='/festival_서울' />"><img src="<c:url value='/image/독립민주.jpg' />"> </a>
     </div>
          <div class="mySlideDiv3 fade">
         <a href="<c:url value='/festival_서울' />"><img src="<c:url value='/image/제야의 종.jpg' />"> </a>
     </div>
     <div class="mySlideDiv2 fade active2">
       <a href="<c:url value='/festival_경기도' />"><img src="<c:url value='/image/한국민속촌.jpg' />"></a> 
     </div>
          <div class="mySlideDiv2 fade">
         <a href="<c:url value='/festival_경기도' />"><img src="<c:url value='/image/행주대첩.jpg' />"> </a>
     </div>
          <div class="mySlideDiv2 fade">
         <a href="<c:url value='/festival_경기도' />"><img src="<c:url value='/image/구석기 겨울여행.jpg' />"> </a>
     </div>
     <div class="mySlideDiv fade active">
       <a href="<c:url value='/festival_강원도' />"><img src="<c:url value='/image/강릉단오제.jpg' />"></a> 
     </div>
     <div class="mySlideDiv fade">
         <a href="<c:url value='/festival_강원도' />"><img src="<c:url value='/image/정선아리랑제.jpg' />"> </a>
     </div>
     <div class="mySlideDiv fade">
         <a href="<c:url value='/festival_강원도' />"><img src="<c:url value='/image/고드름축제.jpg' />"> </a>
     </div>  
</div>
</article>
<article>
<div id="board">
<div>
서울<br/><br/>
<a href="<c:url value='/festival_서울' />">달빛불놀이 정월대보름</a><br/><br/>
<a href="<c:url value='/festival_서울' />">독립민주축제</a><br/><br/>
<a href="<c:url value='/festival_서울' />">제야의 종 타종행사</a>
</div>
<div>
경기도<br/><br/>
<a href="<c:url value='/festival_경기도' />">한국민속촌 웰컴투조선</a><br/><br/>
<a href="<c:url value='/festival_경기도' />">행주대첩기념제</a><br/><br/>
<a href="<c:url value='/festival_경기도' />">연천 구석기 겨울여행</a>
</div>
<div >
강원도<br/><br/>
<a href="<c:url value='/festival_강원도' />">강릉 단오제</a><br/><br/>
<a href="<c:url value='/festival_강원도' />">정선 아리랑제</a><br/><br/>
<a href="<c:url value='/festival_강원도' />">정선 고드름축제</a>
</div>
<div >
충청도<br/><br/>
<a href="<c:url value='/festival_충청도' />">지상군페스티벌</a><br/><br/>
<a href="<c:url value='/festival_충청도' />">의좋은 형제 축제</a><br/><br/>
<a href="<c:url value='/festival_충청도' />">태안 세계 튤립축제</a>
</div>
<div >
전라도<br/><br/>
<a href="<c:url value='/festival_전라도' />">곡성 세계장미축제</a><br/><br/>
<a href="<c:url value='/festival_전라도' />">담양 대나무축제</a><br/><br/>
<a href="<c:url value='/festival_전라도' />">광양 매화축제</a>
</div>
<div>
경상도<br/><br/>
<a href="<c:url value='/festival_경상도' />">강주 해바라기축제</a><br/><br/>
<a href="<c:url value='/festival_경상도' />">신라왕들의 축제</a><br/><br/>
<a href="<c:url value='/festival_경상도' />">함안 낙화놀이</a>
</div>
</div>
</article>
<article>
<div id=article>
<br />
<h3>보러가기</h3>
<br /><br />
  <nav id="nav">
<div id="mainMenuBox">

<a href="#" id="seoul">서울</a>
<a href="#" id="Gyeonggido">경기도</a>
<a href="#" id="Gangwondo">강원도</a>
<a href="#" id="Chungcheongdo">충청도</a>
<a href="#" id="Jeollado">전라도</a>
<a href="#" id="Gyeongsangdo">경상도</a>

</div>
</nav>
</div>
<br />
<br />
<br />
<div class="b">
<a href="http://www.naver.com"><img src="<c:url value='/image/정월대보름.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/독립민주.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/제야의 종.jpg' />"></a>
</div>
<div class="c">
<a href="http://www.naver.com"><img src="<c:url value='/image/한국민속촌.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/행주대첩.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/구석기 겨울여행.jpg' />"></a>
</div>
<div class="d">
<a href="http://www.naver.com"><img src="<c:url value='/image/강릉단오제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/정선아리랑제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/고드름축제.jpg' />"></a>
</div>
<div class="e">
<a href="http://www.naver.com"><img src="<c:url value='/image/지상군페스티벌.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/의좋은 형제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/튤립축제.jpg' />"></a>
</div>
<div class="f">
<a href="http://www.naver.com"><img src="<c:url value='/image/장미축제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/대나무축제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/매화축제.jpg' />"></a>
</div>
<div class="g">
<a href="http://www.naver.com"><img src="<c:url value='/image/해바라기축제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/신라왕축제.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/낙화놀이.jpg' />"></a>
</div>
<br />
</article>
 </section>
      <c:import url="/WEB-INF/views/layout/bottom.jsp" />
   </div>
   </body>
</html>