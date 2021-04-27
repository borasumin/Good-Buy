<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>당신 근처의 굿-바이 마켓 Good-Buy!</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<!-- 공통 UI -->
<link href="${ contextPath }/resources/css/admin/admin_stats2.css?"
	rel="stylesheet" type="text/css">
<style>
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<section id="gbSection">


		<div id="div1">
			<h1>
				<a href="${ contextPath }/admin/join" id="head1"
					style="color: black;">관리자 페이지</a>
			</h1>
		</div>


		<div id="div2">
			<button id="button1">
				<a id="a1" href="${ contextPath }/admin/notice">공지사항</a>
			</button>
			<button id="button1">
				<a id="a2" href="${ contextPath }/admin/report">신고</a>
			</button>
			<button id="button1">
				<a id="a3" href="${ contextPath }/admin/product">상품관리</a>
			</button>
			<button id="button1">
				<a id="a4" href="${ contextPath }/admin/member">회원관리</a>
			</button>
			<button id="button1">
				<a id="a5" href="${ contextPath }/admin/FAQ">FAQ/문의</a>
			</button>
			<button id="button1">
				<a id="a6" href="${ contextPath }/admin/stats">통계</a>
			</button>

		</div>


		<div id="div3">
			<button id="button1">
				<a id="b1" href="${ contextPath }/admin/stats">회원 통계</a>
			</button>
			<button id="button1">
				<a id="b2" href="${ contextPath }/admin/stats2">매출 통계</a>
			</button>
			<br>
			<button id="button1" disabled>
				<a style="color: black;">매출 비율 그래프</a>
			</button>

		</div>




		<div id="div4">
			<div>
				
				<div>
					<div class="card">
						<div class="card-body">
							<canvas id="myChart2">
                  </canvas>
						</div>
						
					</div>
				</div>
			</div>

		</div>
		

		










	</section>

	<jsp:include page="../common/footer.jsp" />
	<script>
	data = {
			datasets: [{ backgroundColor: ['red','yellow','blue'],
		data: [10, 20, 30] }],
		// 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
		labels: ['비즈니스 프로필','끌어올리기','안전거래'] };
	// 도넛형 차트 
	var ctx2 = document.getElementById("myChart2");
	var myDoughnutChart = new Chart(ctx2, { type: 'doughnut',
											data: data,
											options: {} });
	</script>

</body>
</html>