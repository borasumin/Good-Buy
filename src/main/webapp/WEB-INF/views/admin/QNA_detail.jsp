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
    <link href="${ contextPath }/resources/css/admin/admin_QNA_detail.css?" rel="stylesheet" type="text/css">
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

	
        <div id="div3">
        <form action="${ contextPath }/admin/QNAAwrite" id="writeForm" method="post">
            <label style="font-weight : bold; font-size: 20px;">문의 제목</label><br>
            <input type="text" id="notice_title" name="qa_title"  size="100px" 
            value="${ QNA.qa_title }" readonly><br>
            <label style="font-weight : bold; font-size: 20px;">작성자</label><br>
            <input type="text" id="notice_title" name="user_id" value="${ QNA.user_id }"  size="100px" readonly>
             <input type="hidden" name="qa_no" value="${ QNA.qa_no }" />

	        <div id="textareadiv">
	            <label id="label2" style="font-weight : bold; font-size: 20px; text-align: top; resize:none;">문의 내용</label><br>
	            <textarea id="notice_content" name="qa_content" readonly>${ QNA.qa_content }</textarea><br>
				<label id="label2" style="font-weight : bold; font-size: 20px; text-align: top; resize:none;">첨부 파일</label><br>
	            
	            <img src="${ contextPath }/resources/images/qnaupload/${QNA.renameFileName}" id="src1">
	            
	            <br>
	             <a href="${ contextPath }/center/download?qa_no=${QNA.qa_no}">
               ${ QNA.originalFileName }
               </a><br>
               
               
               
        		<label id="label2" style="font-weight : bold; font-size: 20px; text-align: top; resize:none;">답변 내용</label><br>
	            <textarea id="notice_content" name="qa_answer" >${ QNA.qa_answer }</textarea>
	            
            
            
        </div>
        <c:if test="${ QNA.qa_status == 'Y' }">
	<button id="createButton" type="submit"  onclick="javascript:btn()">
               	 답 변
            </button>
            </c:if>
	</form> 
	
	
	</div>       
            
    </section>

    <jsp:include page="../common/footer.jsp"/>
<script>
function btn(){
    alert('문의 답변 등록이 완료되었습니다.');
}
</script>

</body>
</html>