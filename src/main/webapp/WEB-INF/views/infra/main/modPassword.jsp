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
<form method="post" name= "form">
<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="${sessSeq }"/>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<!-- ======= Hero Section ======= -->
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
</form>
	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
	<!-- include sidebarScript -->
	<%@include file=".././common/user/includeV1/sidebarScript.jsp"%>
	<!-- include sidebarScript-->
	
</body>
</html>
