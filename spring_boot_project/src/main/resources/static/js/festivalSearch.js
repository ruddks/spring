/**
 * festivalSearch.js
 */

 $(document).ready(function(){
 	$('#fesSearchFrm').on('submit', function(){ 	
 	
 		event.preventDefault(); 		
 		
 		//폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환 : serialize() 사용
 		//type=fesName&keyword=노트북 형식으로 만들어서 전송
 		var formData = $(this).serialize();
 		// 이렇게 보내고 컨트롤러에서 HashMap으로 받음 		
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"festivalSearch",
 			data: formData,
 			success:function(result){
 				// 컨트롤러가 ArrayList를 반환한 것을 result로 받음
 				// <div id="searchResultBox">에 테이블 형태로
 				// 받은 개수만큼 반복문으로 출력
 				$('#searchResultBox').empty(); // 이전 내용 비우고
 				// 테이블 제목 출력
 				$('#searchResultBox').append('<br><br><table id="resultTable" border="1" width="600">' + 
						'<tr><th>축제목록번호</th><th>축제명</th><th>축제 시작일</th><th>지역</th></tr>');
						
				// 검색 결과 없는 경우
				if(result == ""){
					$('#resultTable').append('<tr align="center"><td colspan="4">찾는 축제가 없습니다</td></tr>');
				} else {
					for(var i=0; i < result.length; i++) {
						var date = new Date(result[i].fesFirst );
						$('#resultTable').append('<tr><td>' + result[i].fesNo + '</td><td>' +
																							result[i].fesName + '</td><td>' +
									date.getFullYear() + "-" + (date.getMonth() + 1)  + "-" + date.getDate()  + '</td><td>' +
																							result[i].regionName  + '</td></tr>');
					}
				}
				$('#searchResultBox').append('</table>');
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
 