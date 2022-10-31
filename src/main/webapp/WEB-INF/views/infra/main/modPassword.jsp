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

</head>

<body>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<!-- ======= Hero Section ======= -->
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<ol>
					<li><a href="../index/">Home</a></li>
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
						<div class="row" style="padding: 20px">
							<h4 style="font-weight: bold">
								<i class="fa-solid fa-key"></i> 비밀번호 수정
							</h4>
						</div>
						<div class="sidebar">
							<div class="card">
								<div class="card-body pt-3">
									<!-- Bordered Tabs -->
									<ul class="nav nav-tabs nav-tabs-bordered">
										<li class="nav-item">
											<button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
										</li>
									</ul>
									<div class="tab-content pt-2">
										<div class="tab-pane fade show active pt-3" id="profile-change-password">
											<!-- Change Password Form -->
											<form>
												<div class="row mb-3">
													<label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
													<div class="col-md-8 col-lg-9">
														<input name="password" type="password" class="form-control" id="currentPassword" />
													</div>
												</div>

												<div class="row mb-3">
													<label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
													<div class="col-md-8 col-lg-9">
														<input name="newpassword" type="password" class="form-control" id="newPassword" />
													</div>
												</div>

												<div class="row mb-3">
													<label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
													<div class="col-md-8 col-lg-9">
														<input name="renewpassword" type="password" class="form-control" id="renewPassword" />
													</div>
												</div>

												<div class="text-center">
													<button type="submit" class="btn btn-primary">Change Password</button>
												</div>
											</form>
											<!-- End Change Password Form -->
										</div>
									</div>
									<!-- End Bordered Tabs -->
								</div>
							</div>
						</div>
					</div>
					<!-- End sidebar -->
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
