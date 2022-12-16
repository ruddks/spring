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
<section> 
<article id=article>
<div class="slideshow-container">
     <div class="mySlideDiv3 fade active3">
       <a href="<c:url value='/specialties_서울' />"><img src="<c:url value='/image/경북궁쌀.jpg' />" id="fi"></a> 
     </div>
          <div class="mySlideDiv3 fade">
         <a href="<c:url value='/specialties_서울' />"><img src="<c:url value='/image/수라배.jpg' />"  id="fi"> </a>
     </div>
          <div class="mySlideDiv3 fade">
         <a href="<c:url value='/specialties_서울' />"><img src="<c:url value='/image/식용허브.jpg' />"  id="fi"> </a>
     </div>

     <div class="mySlideDiv2 fade active2">
       <a href="<c:url value='/specialties_경기도' />"><img src="<c:url value='/image/가평잣.png' />"></a> 
     </div>
          <div class="mySlideDiv2 fade">
         <a href="<c:url value='/specialties_경기도' />"><img src="<c:url value='/image/안성한우.png' />"> </a>
     </div>
          <div class="mySlideDiv2 fade">
         <a href="<c:url value='/specialties_경기도' />"><img src="<c:url value='/image/이천쌀.png' />"> </a>
     </div>
     
     <div class="mySlideDiv fade active">
       <a href="<c:url value='/specialties_강원도' />"><img src="<c:url value='/image/횡성한우고기.png' />"></a> 
     </div>
            
     <div class="mySlideDiv fade">
         <a href="<c:url value='/specialties_강원도' />"><img src="<c:url value='/image/영월고춧가루.png' />"> </a>
     </div>
            
     <div class="mySlideDiv fade">
         <a href="<c:url value='/specialties_강원도' />"><img src="<c:url value='/image/강릉개두릅.png' />"> </a>
     </div>  
</div>
</article>
<article>
<div id="board">
<div>
서울<br/><br/>
<a href="<c:url value='/specialties_서울' />">경북궁쌀</a><br/><br/>
<a href="<c:url value='/specialties_서울' />">수라배</a><br/><br/>
<a href="<c:url value='/specialties_서울' />">식용허브</a>
</div>
<div>
경기도
<br/><br/>
<a href="<c:url value='/specialties_경기도' />">가평잣</a><br/><br/>
<a href="<c:url value='/specialties_경기도' />">안성한우</a><br/><br/>
<a href="<c:url value='/specialties_경기도' />">이천쌀</a>
</div>
<div >
강원도<br/><br/>
<a href="<c:url value='/specialties_강원도' />">강릉개두릅</a><br/><br/>
<a href="<c:url value='/specialties_강원도' />">영월고춧가루</a><br/><br/>
<a href="<c:url value='/specialties_강원도' />">횡성한우고기</a>
</div>
<div >
충청도<br/><br/>
<a href="<c:url value='/specialties_충청도' />">괴산고추</a><br/><br/>
<a href="<c:url value='/specialties_충청도' />">괴산찰옥수수</a><br/><br/>
<a href="<c:url value='/specialties_충청도' />">충주사과</a>
</div>
<div >
전라도<br/><br/>
<a href="<c:url value='/specialties_전라도' />">고창복분자</a><br/><br/>
<a href="<c:url value='/specialties_전라도' />">군산쌀</a><br/><br/>
<a href="<c:url value='/specialties_전라도' />">무주사과</a>
</div>
<div>
경상도<br/><br/>
<a href="<c:url value='/specialties_경상도' />">경산대추</a><br/><br/>
<a href="<c:url value='/specialties_경상도' />">고령감자</a><br/><br/>
<a href="<c:url value='/specialties_경상도' />">고령수박</a>
</div>
</div>
</article>
<article>
<div id=article>
<br />
<h3>구매하기</h3>
<br />
<br />
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
<a href="http://www.naver.com"><img src="<c:url value='/image/경북궁쌀.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/수라배.jpg' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/식용허브.jpg' />"></a>
</div>
<div class="c">
<a href="http://www.naver.com"><img src="<c:url value='/image/가평잣.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/안성한우.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/이천쌀.png' />"></a>
</div>
<div class="d">
<a href="http://www.naver.com"><img src="<c:url value='/image/강릉개두릅.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/횡성한우고기.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/영월고춧가루.png' />"></a>
</div>
<div class="e">
<a href="http://www.naver.com"><img src="<c:url value='/image/괴산고추.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/괴산찰옥수수.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/충주사과.png' />"></a>
</div>
<div class="f">
<a href="http://www.naver.com"><img src="<c:url value='/image/고창복분자.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/군산쌀.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/무주사과.png' />"></a>
</div>
<div class="g">
<a href="http://www.naver.com"><img src="<c:url value='/image/경산대추.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/고령감자.png' />"></a>
<a href="http://www.naver.com"><img src="<c:url value='/image/고령수박.png' />"></a>
</div>
<br />
</article>
 </section>
    <c:import url="/WEB-INF/views/layout/bottom.jsp" />
   </div>
   </body>
</html>