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

<title>강의 목록 </title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- include link -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->

</head>

<body>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<ol>
					<li><a href="index.html">Home</a></li>
					<li>Blog</li>
				</ol>
				<h2>Blog</h2>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					<div class="col-lg-4">
						<div class="sidebar">
							<h3 class="sidebar-title">Mypage</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="mypage.html">강의등 <span>(25)</span></a></li>
									<li><a href="cart.html">수강생 관리 <span>(12)</span></a></li>
									<li><a href="profile.html">프로필</a></li>
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
						</div>
						<!-- End sidebar recent posts-->
					</div>
					<!-- End sidebar -->
					<div class="col-lg-4">
						<div class="card" style="width: 100%; margin-bottom: 40px;">

							<div class="card-body">
								<h5 class="card-title">클래스 기본 정보</h5>
								<br>
								<p class="card-text" id="sub">커버 이미지</p>
								<p class="card-text" id="add">커버로 사용할 이미지를 추가해주세요.</p>
								<input type="file" style="font-size: 13px;">
							</div>
							<hr>

							<div class="card-body">
								<p class="card-text" id="sub">클래스 제목</p>
								<p class="card-text" id="add">클래스를 대표할 수 있는 제목을 추가해주세요.</p>
								<input type="text" id="className">
							</div>
							<hr>

							<div class="card-body">
								<p class="card-text" id="sub">브랜드</p>
								<p class="card-text" id="add">클래스를 대표할 수 있는 제목을 추가해주세요.</p>
								<select id="classSelect">
									<option>1차 카테고리를 선택하세요.</option>
									<option>취업 클래스</option>
									<option>취미 클래스</option>
									<option>자격증 클래스</option>
								</select>
							</div>
							<hr>

							<div class="card-body">
								<p class="card-text" id="sub">카테고리</p>
								<p class="card-text" id="add">분야를 선택해주세요.</p>
								<select id="categorySelect">
									<option>선택하세요.</option>
									<option>직무,창업 등 취업을 위한 클래스를 만들고 싶어요.</option>
									<option>미술,음악,요리 등 취미 클래스를 만들고 싶어요.</option>
									<option>자격증 클래스를 만들고 싶어요.</option>
								</select>
							</div>
							<hr>

							<div class="card-body">
								<p class="card-text" id="sub">상세 카테고리</p>
								<p class="card-text" id="add">커리큘럼을 모두 포관하는 하나의 카테고리를 작성해주세요.</p>
								<input type="text" id="categoryName" placeholder="예시) 가죽공예 or 개발자로 취업 ">
							</div>
							<hr>

							<div class="card-body">
								<p class="card-text" id="sub">클래스 난이도</p>
								<p class="card-text" id="add">어느 역량의 수강생을 위한 클래스인지 선택해주세요.</p>
								<select id="categorySelect">
									<option>선택 안함</option>
									<option>초급자</option>
									<option>중급자</option>
									<option>준전문가</option>
								</select>
								<button id="save">저장하기</button>
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="card" style="width: 100%;">

							<div class="card-body">
								<h5 class="card-title">클래스 상세정보</h5>
								<br>
								<p class="card-text" id="sub">클래스 소개</p>
								<p class="card-text" id="add">클래스에 대한 소개를 작성해주세요.</p>
								<textarea style="width:100%; height: 300px;"></textarea>
								<button id="save">저장하기</button>
							</div>
						</div>
					</div>

				</div>
				<!-- End blog sidebar -->
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
