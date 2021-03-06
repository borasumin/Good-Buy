<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--sweetalert2-->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <title>당신 근처의 굿-바이 마켓 Good-Buy!</title>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- 공통 UI -->
    <link href="${ contextPath }/resources/css/admin/admin_membercenter.css?" rel="stylesheet" type="text/css">
  <style>
      
  </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp" />

    <section id="gbSection">


        <div id="div1">
            <h1 id="head1"><a href="${ contextPath }/center/join">고객센터</a></h1>
        </div>


        <div id="div2">
            
            <button id="button1"><a id="a1" href="${ contextPath }/center/join">공지사항</a></button>
            <button id="button1"><a id="a2" href="${ contextPath }/center/FAQ">FAQ</a></button>
            <c:if test="${ !empty sessionScope.loginUser }">
            <button id="button1"><a id="a3" href="${ contextPath }/center/QNA">문의</a></button>
            </c:if>
            <c:if test="${ empty sessionScope.loginUser }">
            <button id="button1"><a id="a3"  onclick="noUser()">문의</a></button>
            </c:if>
        </div>


        




        <div id="div4">
            

                
             
			
               
               <ul class="mylist">
               <c:forEach var="n" items="${ list }">
                <li class="menu">
                    <a style="font-size: 30px; font-weight: bolder;">${ n.nt_title }<img src="${ contextPath }/resources/images/admin//내리기.PNG" style="float:right; width: 35px;"></a>
                    <ul class="hide">
                        <li style="font-size: 15px; border-bottom: 1px solid white; border-top: 1px solid white;">${ n.nt_content }</li>
                        <li style="font-size: 15px; border-bottom: 1px solid white; border-top: 1px solid white; color: gray">${ n.nt_create_date }</li>
                    </ul>
                </li>
                </c:forEach>
            </ul>
           
            
            
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
<script>
      function selectQNAQList(user_id){
         location.href='${contextPath}/center/QNA?user_id=' + user_id + '&page=${ pi.currentPage }';
         // => 상세 페이지 접근 시 기존 page 값도 파라미터로 전달
      }
      function noUser(){
          Swal.fire({
 title: '로그인 필요',
 html: '<br>해당 기능은 로그인시 가능합니다.<br> 로그인시 Good-buy의 다양한 기능을 사용할 수 있습니다.<br>',
 imageUrl: '${ contextPath }/resources/images/logo.png',
 imageWidth: 232,
 imageHeight: 90,
 imageAlt: 'Custom image',
 }).then(function(){
 	$('#loginModal').modal("show");
 });
      }
    
 		$('#replyWrite textarea').keyup(function(e) {
 			var content = $(this).val();
 			$('#counter').html("(" + content.length + " / 1000)");

 			if (content.length > 1000) {
 				alert('최대 1000자까지 입력 가능합니다.');
 				$(this).val(content.substring(0, 1000));
 				$('#counter').html("(1000 / 1000)");

 			}
 		});
      </script>

<jsp:include page="../common/footer.jsp" />


    

</body>
</html>