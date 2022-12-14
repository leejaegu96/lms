<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>


<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>NEXTLEVEL</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- include link -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->
<style>
.pie-chart {
	position: relative;
	display: inline-block;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	transition: 0.3s;
}

span.center {
	background: #fff;
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	text-align: center;
	line-height: 50px;
	font-size: 15px;
	transform: translate(-50%, -50%);
}

.topTitle {
	font-weight: bold;
	font-size: 14px;
	float: left;
}

.subTitle {
	font-weight: bold;
	font-size: 12px;
	color: gray;
	float: right;
}

#cardSize {
	height: 220px;
}

#colPad {
	padding-bottom: 10px;
}

.cardContents {
	font-size: 13px;
}

.cardNoContents {
	text-align: center;
	font-size: 13px;
	color: gray;
}

.progressDetailL {
	font-size: 10px;
	float: left;
}

.progressDetailR {
	font-size: 10px;
	float: right;
}

#stTitle {
	font-size: 50px;
	font-weight: bold;
	text-align: center;
}

#stContents {
	font-size: 13px;
	font-weight: bold;
	text-align: center;
}

.lectureL {
	font-size: 13px;
	float: left;
}

.lectureR {
	font-size: 10px;
	float: right;
}
</style>
</head>

<body>
<form method="post" name= "form">
<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="${sessSeq }"/>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<!-- ======= Hero Section ======= -->
	<!-- End Hero -->

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<ol>
					<li><a href="../index/home">Home</a></li>
					<li>MyPage</li>
				</ol>
				<h2>MyPage</h2>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					<!-- include sidebar -->
					<%@include file=".././common/user/includeV1/myPageBar.jsp"%>
					<!-- include sidebar-->

					<div class="col-lg-8">
						<div class="sidebar">
							<div class="row">
								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">???? &nbsp;??????????????? ?????????</div>
											<div class="subTitle">????????????</div>
											<br> <br>
											<span class="cardContents">????????????, ???????????????!????????</span>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">???? &nbsp;?????? ?????? ??????</div>
											<div class="subTitle">?????? ??????</div>
											<br> <br>
											<span class="cardContents">??????(Java) ???????????? ???????????? ??????: ??????????????? ??????</span>
											<br>
											<div class="progressDetailL">?????????: 28???/104??? (28%)</div>
											<div class="progressDetailR">23??????</div>
											<br>
											<div class="progress">
												<div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 28%;" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100">28%</div>
											</div>
											<br>
											<span id="nextBtn">????????? ????????????</span>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">???? &nbsp;?????? ??? ??????</div>
											<div class="subTitle">????????????</div>
											<br> <br>
											<div class="cardNoContents">
												????????? ????????? ????????????.<br> ????????? ???????????? ????????? ????????? ????????? ?????????!
											</div>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">???????? &nbsp;?????? ??????</div>
											<br> <br>
											<div class="row">
												<div class="col-4">
													<div id="stTitle">0</div>
													<br>
													<div id="stContents">?????? ?????????</div>
												</div>
												<div class="col-4">
													<div id="stTitle">0</div>
													<br>
													<div id="stContents">?????? ?????????</div>
												</div>
												<div class="col-4">
													<div id="stTitle">0</div>
													<br>
													<div id="stContents">?????? ?????????</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">???? &nbsp;?????????</div>
											<div class="subTitle">????????????</div>
											<br> <br>
											<div class="cardNoContents">
												???????????? ????????????.<br> ???????????? ???????????? ????????? ????????? ?????????!
											</div>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">???? &nbsp;?????? ???????????? ??????</div>
											<div class="subTitle">????????????</div>
											<br>
											<br>
											<div class="lectureL">??????(Java) ???????????? ???????????? ??????: ???????????????</div>
											<div class="lectureR">23??? ???</div>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Blog Section -->
	</main>
	<!-- End #main -->
</form>
	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
	<!-- include sidebarScript -->
	<%@include file=".././common/user/includeV1/sidebarScript.jsp"%>
	<!-- include sidebarScript-->

</body>
</html>
