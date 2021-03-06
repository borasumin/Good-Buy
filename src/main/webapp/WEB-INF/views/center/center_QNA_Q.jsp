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
    <link href="${ contextPath }/resources/css/admin/admin_membercenter_QNA_Q.css?" rel="stylesheet" type="text/css">
    
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
            <button id="button1"><a id="a3" href="${ contextPath }/center/QNA">문의</a></button>
        </div>


        <div id="div3">
            <p style="font-size: 50px; font-family: 'Nanum Myeongjo', serif; font-weight: bold;">문의하기<br>
                <p style="font-size: 20px; font-family: 'Nanum Myeongjo', serif; padding-bottom: 30px;">어떠한 내용이라도 답변드릴 준비가 되어 있습니다!<br>
                    문의를 보내주세요! 가능한 한 빨리 답변 드리도록 하겠습니다.<br><hr>
                </p>
                
            </p>
            

        </div>
        <div id="div3_1">
        <form action="${ contextPath }/center/write" id="writeForm" method="post" enctype="multipart/form-data">
            <p style="font-size: 20px; font-family: 'Nanum Myeongjo', serif; padding-top: 60px; font-weight: bold;">문의 유형 선택하기</p>
            <select name='qa_refno' id="option1" style="font-size: 30px; width: 700px; text-align: center; font-family: 'Nanum Myeongjo', serif;" >
                <option selected>문의 유형</option>
                <option value='1'  >계정 및 보안</option>
                <option value='2'>불건전 사용자 신고</option>
                <option value='3'>결제 및 상점 문의</option>
              </select>
				 <input type="hidden" name="user_id" value="${ loginUser.user_id }"/>
              <p style="font-size: 20px; font-family: 'Nanum Myeongjo', serif; padding-top: 60px; font-weight: bold;">제목</p>
              <input type="text" style="width: 700px; height: 50px;" name="qa_title">
              

              <p style="font-size: 20px; font-family: 'Nanum Myeongjo', serif; padding-top: 60px; font-weight: bold;">설명</p>
              <input type="text" style="width: 700px; height: 300px;" name="qa_content">

              <p style="font-size: 20px; font-family: 'Nanum Myeongjo', serif; padding-top: 60px; font-weight: bold;">첨부 파일</p>
              <input  type="file" name="uploadFile">
              <br>
              
              <div id="buttondiv" style="text-align:center; padding-right:10%;">
              <button id="greset" type="button" onClick="${ contextPath }/center/QNA" style="margin-top: 50px; margin-right:5%;">취소</button>
              <button id="gsubmit" style="margin-top: 50px;">등록</button>
            </div>
            </form>
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
<jsp:include page="../common/footer.jsp" />




</body>
</html>