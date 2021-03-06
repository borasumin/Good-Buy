<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>당신 근처의 굿-바이 마켓 Good-Buy!</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- 공통 UI -->
   <link href="${ contextPath }/resources/css/admin/admin_FAQ.css?" rel="stylesheet" type="text/css">
  <style>
    
  </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>

    <section id="gbSection">


        <div id="div1" >
       <h1><a href="${ contextPath }/admin/join" id="head1" style="color : black;">관리자 페이지</a></h1>
        </div>


        <div id="div2">
            <button id="button1"><a id="a1" href="${ contextPath }/admin/notice">공지사항</a></button>
            <button id="button1"><a id="a2" href="${ contextPath }/admin/report">신고</a></button>
            <button id="button1"><a id="a3" href="${ contextPath }/admin/product">상품관리</a></button>
            <button id="button1"><a id="a4" href="${ contextPath }/admin/member">회원관리</a></button>
            <button id="button1"><a id="a5" href="${ contextPath }/admin/FAQ">FAQ/문의</a></button>
            <button id="button1"><a id="a6" href="${ contextPath }/admin/stats">통계</a></button>

        </div>

		<div id="div2-1">
		<p style="bolder:">FAQ</p>
		</div>
		
        <div id="div3">
        </div>




        <div id="div3-1">
            

              <c:forEach var="f" items="${ list }">  
              <ul class="mylist">
                <li class="menu">
                    <a style="font-size: 30px;">${ f.qa_title }<img src="${ contextPath }/resources/images/admin//내리기.PNG" style="float:right; width: 35px;"></a>
                    <ul class="hide">
                        <li style="font-size: 15px; border-bottom: 1px solid white; border-top: 1px solid white;">${ f.qa_content }<button id="createButton1" style="float:right;" onclick="selectFAQ(${f.qa_no})">상세</button></li>
                        
                    </ul>
                </li>
              </ul>
           	</c:forEach>
            
            
        </div>
		<div id="div4-1">
		<button  id="createButton1" onclick="location.href='${ contextPath }/admin/FAQwrite'">작성</button>
		</div>
                
                
                
                <div id="div2-1">
		<p style="bolder:">문의</p>
		</div>
		
        <div id="div3">
            <select name='sendOption' id="sendOption">
                
                <option id="4">계정 및 보안</option>
                <option id="5">불건전 사용자</option>
                <option id="6">결제 및 상점</option>
              </select>

        </div>




        <div id="div4">
            

              <c:forEach var="q" items="${ list21 }">  
              <ul class="mylist">
                <li class="menu">
                    <a style="font-size: 30px;">${ q.qa_title }<img src="${ contextPath }/resources/images/admin//내리기.PNG" style="float:right; width: 35px;"></a>
                    <ul class="hide">
                        <li style="font-size: 15px; border-bottom: 1px solid white; border-top: 1px solid white;">${ q.qa_content }<button id="createButton1" style="float:right;" onclick="selectQNA(${q.qa_no})">상세</button></li>
                        
                    </ul>
                </li>
              </ul>
           	</c:forEach>
                
            </div>
            
            <div id="div5">
            

              <c:forEach var="q" items="${ list22 }">  
              <ul class="mylist">
                <li class="menu">
                    <a style="font-size: 30px;">${ q.qa_title }두 번째카테<img src="${ contextPath }/resources/images/admin//내리기.PNG" style="float:right; width: 35px;"></a>
                    <ul class="hide">
                        <li style="font-size: 15px; border-bottom: 1px solid white; border-top: 1px solid white;">${ q.qa_content }<button id="createButton1" style="float:right;" onclick="selectQNA(${q.qa_no})">상세</button></li>
                        
                    </ul>
                </li>
              </ul>
           	</c:forEach>
                
            </div>
            
            <div id="div6">
            

              <c:forEach var="q" items="${ list23 }">  
              <ul class="mylist">
                <li class="menu">
                    <a style="font-size: 30px;">${ q.qa_title }<img src="${ contextPath }/resources/images/admin//내리기.PNG" style="float:right; width: 35px;"></a>
                    <ul class="hide">
                        <li style="font-size: 15px; border-bottom: 1px solid white; border-top: 1px solid white;">${ q.qa_content }<button id="createButton1" style="float:right;" onclick="selectQNA(${q.qa_no})">상세</button></li>
                        
                    </ul>
                </li>
              </ul>
           	</c:forEach>
                
            </div>
                
           
    </section>

    


     <script>
    $(document).ready(function(){
        // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            // 현재 클릭한 태그가 a 이기 때문에
            // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
           
        });
    });

    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });
    
	
</script>
 <jsp:include page="../common/footer.jsp"/>
    <script>
      function selectFAQ(qa_no){
         location.href='${contextPath}/admin/FAQdetail?qa_no=' + qa_no + '&page=${ pi.currentPage }';
         // => 상세 페이지 접근 시 기존 page 값도 파라미터로 전달
      }
      
      function selectQNA(qa_no){
          location.href='${contextPath}/admin/QNAdetail?qa_no=' + qa_no + '&page=${ pi.currentPage }';
          // => 상세 페이지 접근 시 기존 page 값도 파라미터로 전달
       }
      
     $("#div5, #div6").hide();
     $("#sendOption").change(function() {
    	 $("#div4, #div5, #div6").hide();
    	$('#div' + $(this).find('option:selected').attr('id')).show(); 
     });
     
    
     
   </script>
   


</body>
</html>