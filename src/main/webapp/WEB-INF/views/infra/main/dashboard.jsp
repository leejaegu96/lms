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
											<div class="topTitle">😀 &nbsp;홍길동님의 프로필</div>
											<div class="subTitle">수정하기</div>
											<br> <br>
											<span class="cardContents">홍길동님, 안녕하세요!👋🏼</span>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">📖 &nbsp;최근 학습 강의</div>
											<div class="subTitle">전체 보기</div>
											<br> <br>
											<span class="cardContents">자바(Java) 알고리즘 문제풀이 입문: 코딩테스트 대비</span>
											<br>
											<div class="progressDetailL">진도율: 28강/104강 (28%)</div>
											<div class="progressDetailR">23분전</div>
											<br>
											<div class="progress">
												<div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 28%;" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100">28%</div>
											</div>
											<br>
											<span id="nextBtn">이어서 학습하기</span>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">📝 &nbsp;최근 내 노트</div>
											<div class="subTitle">전체보기</div>
											<br> <br>
											<div class="cardNoContents">
												작성한 노트가 없습니다.<br> 강의를 수강하고 나만의 노트를 작성해 보세요!
											</div>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">🏃🏻 &nbsp;학습 통계</div>
											<br> <br>
											<div class="row">
												<div class="col-4">
													<div id="stTitle">0</div>
													<br>
													<div id="stContents">완료 강의수</div>
												</div>
												<div class="col-4">
													<div id="stTitle">0</div>
													<br>
													<div id="stContents">완료 수업수</div>
												</div>
												<div class="col-4">
													<div id="stTitle">0</div>
													<br>
													<div id="stContents">획득 수료증</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">🏆 &nbsp;수료증</div>
											<div class="subTitle">전체보기</div>
											<br> <br>
											<div class="cardNoContents">
												수료증이 없습니다.<br> 수료증이 발급되는 강의를 수강해 보세요!
											</div>
										</div>
									</div>
								</div>

								<div class="col-6" id="colPad">
									<div class="card">
										<div class="card-body pt-3" id="cardSize">
											<div class="topTitle">📚 &nbsp;최근 학습중인 강의</div>
											<div class="subTitle">전체보기</div>
											<br>
											<br>
											<div class="lectureL">자바(Java) 알고리즘 문제풀이 입문: 코딩테스트</div>
											<div class="lectureR">23분 전</div>

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
