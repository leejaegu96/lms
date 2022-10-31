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
					<div class="col-lg-4">
						<div class="sidebar">
							<h3 class="sidebar-title"><a href="dashboard" style="color:black;">Mypage</a></h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="purchaseHistory">
											구매목록 <span>(25)</span>
										</a></li>
									<li><a href="wishlist">
											찜 목록 <span>(12)</span>
										</a></li>
									<li><a href="print">
											수료증 출력 <span>(22)</span>
										</a></li>
									<li><a href="profile">프로필</a></li>
									<li><a href="modPassword">비밀번호 수정</a></li>
								</ul>
							</div>
							<!-- End sidebar categories-->

							<h3 class="sidebar-title">Recent Posts</h3>
							<div class="sidebar-item recent-posts">
								<div class="post-item clearfix">
									<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" />
									<h4>
										<a href="blog-single.html">권도수의 [목,어깨 집중 프로젝트] : 망가진 자세로 하루를 보내는 나를 위한 셀프 관리</a>
									</h4>
									<time datetime="2020-01-01">Jan 1, 2020</time>
								</div>

								<div class="post-item clearfix">
									<img src="https://cdn.class101.net/images/37d8a757-0f38-4424-a58f-b71444a712f8/960xauto.webp" alt="" />
									<h4>
										<a href="blog-single.html">아이패드 하나로 기록하는 키츠의 아날로그 텍스처 일상</a>
									</h4>
									<time datetime="2020-01-01">Jan 1, 2020</time>
								</div>

								<div class="post-item clearfix">
									<img src="https://cdn.class101.net/images/10c624cc-522e-4408-9bcf-ba802596eba5/960xauto.webp" alt="" />
									<h4>
										<a href="blog-single.html">(2022년 전면개정판) 가장 빠르게 돈 버는 유튜브 채널 만드는 방법</a>
									</h4>
									<time datetime="2020-01-01">Jan 1, 2020</time>
								</div>

								<div class="post-item clearfix">
									<img src="https://cdn.class101.net/images/c019f819-4c73-4255-a194-913107e681a8/960xauto.webp" alt="" />
									<h4>
										<a href="blog-single.html">[미니클래스] 내 몸은 내가 관리한다! 홈 메이드 건강 차(혈액 순환과 피로 회복)</a>
									</h4>
									<time datetime="2020-01-01">Jan 1, 2020</time>
								</div>

								<div class="post-item clearfix">
									<img src="https://cdn.class101.net/images/d0b5915e-c227-484e-a0d3-16dc2c808a1a/960xauto.webp" alt="" />
									<h4>
										<a href="blog-single.html">20년 경력자가 알려주는 미드 번역으로 배우는 영상 번역 실무</a>
									</h4>
									<time datetime="2020-01-01">Jan 1, 2020</time>
								</div>
							</div>
							<!-- End sidebar recent posts-->
						</div>
						<!-- End sidebar -->
					</div>
					<!-- End blog sidebar -->

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

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
</body>
</html>
