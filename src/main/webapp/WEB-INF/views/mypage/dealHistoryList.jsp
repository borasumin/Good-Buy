<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신 근처의 굿-바이 마켓 Good-Buy!</title>
<link href="${ contextPath }/resources/css/mypage/dealHistoryList.css?" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	 <section id="gbSection">
        <img src="${ contextPath }/resources/images/mypage/left-arrow.png" id ="backBtn" onclick="location.href='${ contextPath }/mypage/main'">
        <h1 class="title_h1">안전 거래 내역</h1>

		<!-- 리스트 있을 때 -->
		<c:if test="${ dealList != null }"> 
        <div class="listWrap">
         <c:forEach var="dlist" items="${ dealList }">
            <div class="eachListWrap">
                <img src="${ contextPath }/resources/images/goodupload/${dlist.changeName}" class="gPhoto">
                <p class="gtitle">${ dlist.gtitle }</p>
                <ul>
                    <li class="town">${ dlist.address_3 }</li>
                    <li class="dot">•</li>
                    <li class="createDate">${ dlist.dealDate }</li>
                </ul>
               
                <div class="gStatus"><p class="statusText">거래 완료</p></div>
                <p class="gprice">${ dlist.gprice }원</p>
                <a class="reviewBtn" onclick="goReviewPage(${dlist.gno})">후기 쓰러 가기 > </a>
            </div>
		</c:forEach>
        </div>
       </c:if> 

		<!-- 리스트 없을 때 -->
		<c:if test="${ dealList.size() == 0 }">
		 <div class="listWrap">
			 <div id="textWrap">
				<h2 id="NullListText">리스트가 없습니다 :(</h2>
			 </div>
		 </div>
		</c:if>
		
        <!-- 리스트 있을때만 페이징 나타나게하기 -->
		<c:if test="${ dealList.size() != 0 }"> 
        <div id="pageArea">
           <c:if test="${pi.currentPage <= 0}">
            <a> &lt;&lt;&nbsp; </a>
            </c:if>
             <c:if test="${pi.currentPage > 0}">
            	<c:url var="start" value="/mypage/sellingList">
            		<c:param name="page" value="1"/>
            	</c:url>
           		 <a href="${ start }"> &lt;&lt;&nbsp; </a>
            </c:if>
             <c:if test="${pi.currentPage <= pi.startPage}">
            <a> &lt;&nbsp; </a>
            </c:if>
             <c:if test="${pi.currentPage > pi.startPage }">
            	<c:url var="before" value="/mypage/sellingList">
            		<c:param name="page" value="${pi.currentPage -1}"/>
            	</c:url>
           		 <a href="${before }"> &lt;&nbsp; </a>
            </c:if>
           <!-- 페이지 숫자 -->
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="#05AAD1" size="4">${ p }</font> &nbsp;
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="pagination" value="/mypage/sellingList">
						<c:param name="page" value="${ p }" />
					</c:url>
					<a href="${ pagination }">${ p }</a> &nbsp;
				</c:if>
			</c:forEach>
			<c:if test="${pi.currentPage  >= pi.maxPage}">
            <a> &gt;&nbsp; </a>
            </c:if>
            <c:if test="${pi.currentPage < pi.maxPage }">
            	<c:url var="after" value="/mypage/sellingList">
            		<c:param name="page" value="${pi.currentPage +1}"/>
            	</c:url>
           		 <a href="${ after }"> &gt;&nbsp; </a>
            </c:if>
            <c:if test="${pi.currentPage >= pi.maxPage }">
            <a> &gt;&gt;&nbsp; </a>
            </c:if>
            <c:if test="${pi.currentPage < pi.maxPage  }">
            	<c:url var="end" value="/mypage/sellingList">
            		<c:param name="page" value="${pi.endPage}"/>
            	</c:url>
           		 <a href="${end}"> &gt;&gt;&nbsp; </a>
            </c:if>
           
        </div>
        
      </c:if> 
       
    </section>
    
	<jsp:include page="../common/footer.jsp"/>
	
	<script>
	
	function goReviewPage(gno){
		console.log(gno);
		location.href="${contextPath}/goods/detail?gno="+gno;
	}
	
	</script>
</body>
</html>