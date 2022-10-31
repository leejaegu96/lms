<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>Blog - Eterna Bootstrap Template</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- Favicons -->
<link href="../../../../resources/template/user_Eterna/assets/img/favicon.png" rel="icon" />
<link href="../../../../resources/template/user_Eterna/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="../../../../resources/template/user_Eterna/assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
<link href="../../../../resources/template/user_Eterna/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="../../../../resources/template/user_Eterna/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
<link href="../../../../resources/template/user_Eterna/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
<link href="../../../../resources/template/user_Eterna/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
<link href="../../../../resources/template/user_Eterna/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />


<!-- 추가 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<!-- Template Main CSS File -->
<link href="../../../../resources/template/user_Eterna/assets/css/style.css" rel="stylesheet" />

<style>
#btn-upload {
	width: 150px;
	height: 30px;
	background: #fff;
	border: 1px solid rgb(77, 77, 77);
	border-radius: 10px;
	font-weight: 500;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto;
}

#file {
	display: none;
}

#preview {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
}

.rounded-circle {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	overflow: hidden;
}

#rowPadding {
	padding-top: 10px;
	padding-bottom: 10px;
}

#labelCen {
	text-align: left;
	margin: auto;
	font-weight: bold;
}

#noPad {
	padding-left: 0px;
	padding-right: 0px;
}

#rowPad {
	padding-top: 10px;
}
</style>

<!-- =======================================================
  * Template Name: Eterna - v4.9.1
  * Template URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center">
		<div class="container d-flex justify-content-between align-items-center">
			<div class="logo">
				<h1>
					<a href="index.html">NEXTLEVEL</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

			<nav id="navbar" class="navbar">
				<ul>
					<li>
						<div class="input-group mb-3" style="margin-top: 15px">
							<input type="text" class="form-control" placeholder="Search..." aria-label="Search..." aria-describedby="button-addon2" />
							<button class="btn btn-outline-secondary" type="button" id="button-addon2">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</li>
					<li><a class="active" href="index.html">Home</a></li>
					<li><a href="about.html">MYpage</a></li>
					<li><a href="services.html">Login</a></li>
				</ul>
			</nav>
			<!-- .navbar -->
		</div>
	</header>
	<!-- End Header -->

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
					<div class="col-lg-3">
						<div class="sidebar">
							<h3 class="sidebar-title">Mypage</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="#">강의목록 <span>(25)</span></a></li>
									<li><a href="#">수강생관리<span>(12)</span></a></li>
									<li><a href="#">강의등록<span>(22)</span></a></li>
									<li><a href="#">프로필 수정</a></li>
								</ul>
							</div>
							<!-- End sidebar categories-->
						</div>
						<!-- End sidebar -->
					</div>
					<!-- End blog sidebar -->
					<div class="col-lg-9">
						<section id="team" class="team">
							<div class="container">
								<div class="sidebar">
									<div class="card">
										<div class="card-body pt-3">
											<!-- Bordered Tabs -->
											<ul class="nav nav-tabs nav-tabs-bordered">
												<li class="nav-item">
													<button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
												</li>

												<li class="nav-item">
													<button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
												</li>
											</ul>
											<div class="tab-content pt-2">
												<div class="tab-pane fade show active profile-overview" id="profile-overview">
													<h5 class="card-title" style="font-weight: bold; padding-top: 10px">크리에이터 기본 정보</h5>

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" style="margin: auto" id="labelCen">프로필 사진</div>
														<div class="col-md-8 text-center">
															<img id="imgProfile" src="https://w.namu.la/s/56f350b8cd75ce735908adb8a9648cedaa30d151e48318ac5854b86a26a4fe1f64f2233e98412f56c70b3cb1a9414b6842232925c63bc5ec8f6eca9b28c331c825eaff072340e4316bbd6cc4d68a1a0da9307a93f123b2e8f8a98fe02d8c8c60" class="rounded-circle mx-auto d-block" width="100" height="100" /> <br />
														</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">크리에이터 닉네임</div>
														<div class="col-md-8">생활코딩</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>크리에이터 소개&nbsp;</span> <span style="color: white; font-weight: bold; background-color: black; border-radius: 30%;">필수</span>
														</div>
														<div class="col-md-8">
															<span> 페이스북의 경우 국내 개발자 커뮤니티 중 접근성이 좋고 다양한 사람이 많이 포진되어 있다. 기본적인 설립목적이 누구나 접근하기 쉬운 코딩, 생활코딩이라는 의미처럼 취미로 하는 사람도, 회사에서 개발하고 있는 사람도 다양한 사람이 모여있다.<br /> 오픈 튜토리얼스 사이트는 일종의 강의 사이트로 외국의 codecademy, code.org와 같은 사이트지만 일반 유저가 직접 강의를 제작하여 만들 수 있다.<br /> 코딩과 네트워킹 등 소프트웨어 기술 뿐 아니라 개발자 영어, 독일어 등과 같은 외국어, 심지어 육아에 요리까지 넓은 분야의 강의가 올라온다.<br />
															</span>
														</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>연락처</span><br />
														</div>
														<div class="col-md-8">010-0000-0000</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>채널(소셜 미디어) 계정</span><br />
														</div>
														<div class="col-md-8">
															<i class="fa-brands fa-youtube"></i>&nbsp; 생활코딩 <br /> <i class="fa-brands fa-facebook"></i>&nbsp; 생활코딩 <br />
														</div>
													</div>
													<hr />
												</div>

												<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
													<!-- Profile Edit Form -->
													<form>
														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">프로필 사진</div>
															<div class="col-lg-9 col-md-8 text-center">
																<img id="imgProfile" src="https://w.namu.la/s/56f350b8cd75ce735908adb8a9648cedaa30d151e48318ac5854b86a26a4fe1f64f2233e98412f56c70b3cb1a9414b6842232925c63bc5ec8f6eca9b28c331c825eaff072340e4316bbd6cc4d68a1a0da9307a93f123b2e8f8a98fe02d8c8c60" class="rounded-circle mx-auto d-block" width="100" height="100" /> <br />
																<label for="ifmmUploadedProfileImage">
																	<span id="btn-upload" style="text-align: center; margin: auto">UPLOAD</span>
																</label>
																<input class="form-control form-control-sm" id="ifmmUploadedProfileImage" name="ifmmUploadedProfileImage" type="file" multiple="multiple" style="display: none" />
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">크리에이터 닉네임</div>
															<div class="col-md-8 col-lg-9">
																<input name="" type="text" class="form-control" id="" value="생활코딩" />
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">
																<span>크리에이터 소개&nbsp;</span> <span style="color: white; font-weight: bold; background-color: black; border-radius: 30%;">필수</span>
															</div>
															<div class="col-md-8 col-lg-9">
																<textarea name="" type="text" class="form-control" id="" cols="100" rows="10">
페이스북의 경우 국내 개발자 커뮤니티 중 접근성이 좋고 다양한 사람이 많이 포진되어 있다. 
																기본적인 설립목적이 누구나 접근하기 쉬운 코딩, 생활코딩이라는 의미처럼 취미로 하는 사람도, 회사에서 개발하고 있는 사람도 다양한 사람이 모여있다.
																오픈 튜토리얼스 사이트는 일종의 강의 사이트로 외국의 codecademy, code.org와 같은 사이트지만 일반 유저가 직접 강의를 제작하여 만들 수 있다.
																코딩과 네트워킹 등 소프트웨어 기술 뿐 아니라 개발자 영어, 독일어 등과 같은 외국어, 심지어 육아에 요리까지 넓은 분야의 강의가 올라온다.
																</textarea>
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">연락처</div>
															<div class="col-md-8 col-lg-9">
																<input type="text" class="form-control" value="010-0000-0000" />
															</div>
														</div>

														<div class="row mb-3" id="rowPad">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">채널(소셜 미디어) 계정</div>
															<div class="col-md-8 col-lg-9">
																<div class="row">
																	<div class="col-3" style="padding-right: 0px">
																		<select class="form-select" id="inputGroupSelect04">
																			<option selected>채널(소셜)</option>
																			<option value="1">유튜브</option>
																			<option value="2">인스타</option>
																			<option value="3">페이스북</option>
																			<option value="4">커뮤니티</option>
																		</select>
																	</div>
																	<div class="col-3" id="noPad">
																		<input type="text" class="form-control" value="생활코딩" />
																	</div>
																	<div class="col-4" id="noPad">
																		<input type="text" class="form-control" value="https://www.youtube.com/c/%EC%83%9D%ED%99%9C%EC%BD%94%EB%94%A91" />
																	</div>
																	<div class="col-2">
																		<button class="btn btn-outline-secondary" type="button" id="plusIn" style="width: 35px">+</button>
																		<button class="btn btn-outline-secondary" type="button" id="minusIn" style="width: 35px">-</button>
																	</div>
																</div>
																<div class="row" id="rowPad">
																	<div class="col-3" style="padding-right: 0px">
																		<select class="form-select" id="inputGroupSelect04">
																			<option selected>채널(소셜)</option>
																			<option value="1">유튜브</option>
																			<option value="2">인스타</option>
																			<option value="3">페이스북</option>
																			<option value="4">커뮤니티</option>
																		</select>
																	</div>
																	<div class="col-3" id="noPad">
																		<input type="text" class="form-control" value="생활코딩" />
																	</div>
																	<div class="col-4" id="noPad">
																		<input type="text" class="form-control" value="https://www.facebook.com/groups/codingeverybody/" />
																	</div>
																	<div class="col-2">
																		<button class="btn btn-outline-secondary" type="button" id="plusIn" style="width: 35px">+</button>
																		<button class="btn btn-outline-secondary" type="button" id="minusIn" style="width: 35px">-</button>
																	</div>
																</div>
															</div>
														</div>

														<div class="text-center">
															<button type="submit" class="btn btn-primary">Save Changes</button>
														</div>
													</form>
													<!-- End Profile Edit Form -->
												</div>
											</div>
											<!-- End Bordered Tabs -->
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- End Team Section -->
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
