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
								<i class="fa-solid fa-id-card-clip"></i> 프로필
							</h4>
						</div>
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
											<h5 class="card-title">Profile Details</h5>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Name</div>
												<div class="col-lg-9 col-md-8">Lee Jaegu</div>
											</div>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Nickname</div>
												<div class="col-lg-9 col-md-8">Jaegu</div>
											</div>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Gender</div>
												<div class="col-lg-9 col-md-8">Male</div>
											</div>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Date Of Birth</div>
												<div class="col-lg-9 col-md-8">1996-12-11</div>
											</div>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Email</div>
												<div class="col-lg-9 col-md-8">worncjfrn@naver.com</div>
											</div>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Phone</div>
												<div class="col-lg-9 col-md-8">010-3505-0443</div>
											</div>

											<div class="row" style="padding-top: 10px">
												<div class="col-lg-3 col-md-4 label">Address</div>
												<div class="col-lg-9 col-md-8">
													04993<br />
												</div>
											</div>
										</div>

										<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
											<!-- Profile Edit Form -->
											<form>
												<div class="row mb-3">
													<label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
													<div class="col-md-8 col-lg-9">
														<input name="Name" type="text" class="form-control" id="Name" value="Lee Jaegu" />
													</div>
												</div>

												<div class="row mb-3">
													<label for="NickName" class="col-md-4 col-lg-3 col-form-label">NickName</label>
													<div class="col-md-8 col-lg-9">
														<input name="NickName" type="text" class="form-control" id="NickName" value="Jaegu" />
													</div>
												</div>

												<div class="row mb-3">
													<label for="Gender" class="col-md-4 col-lg-3 col-form-label">Gender</label>
													<div class="col-md-8 col-lg-9">
														<select class="form-select">
															<option selected="">Male</option>
															<option value="1">Female</option>
															<option value="2">etc</option>
														</select>
													</div>
												</div>

												<div class="row mb-3">
													<label for="date" class="col-md-4 col-lg-3 col-form-label">Date Of Birth</label>
													<div class="col-md-8 col-lg-9">
														<input type="date" class="form-control" id="date" value="1996-12-11" />
													</div>
												</div>

												<div class="row mb-3">
													<label for="Country" class="col-md-4 col-lg-3 col-form-label">Email</label>
													<div class="col-md-8 col-lg-9">
														<div class="input-group">
															<input type="text" id="inputEmail" class="form-control" value="worncjfrn" aria-label="Username" required="" /> <span class="input-group-text">@</span> <select class="form-select" id="validationCustom04">
																<option selected="" value="">naver.com</option>
																<option>google.com</option>
																<option>hanmail.net</option>
															</select>
														</div>
													</div>
												</div>

												<div class="row mb-3">
													<label for="Address" class="col-md-4 col-lg-3 col-form-label">Phone</label>
													<div class="col-md-8 col-lg-9">
														<div class="input-group">
															<select class="form-select" name="category" id="category">
																<option selected value="">SKT</option>
																<option><span>KT</span>
																</option>
																<option><span>LG</span>
																</option>
															</select> <select class="form-select" name="category" id="category">
																<option selected value="">010</option>
																<option><span>011</span>
																</option>
																<option><span>019</span>
																</option>
															</select> <span class="input-group-text">-</span> <input type="text" id="inputPhone" class="form-control" value="3505" required /> <span class="input-group-text">-</span> <input type="text" id="inputPhone" class="form-control" value="0443" required />
														</div>
													</div>
												</div>

												<div class="row mb-3">
													<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
													<div class="col-md-8 col-lg-9">
														<div class="input-group">
															<div class="col-6">
																<div class="input-group">
																	<input type="text" id="inputAdress" class="form-control" value="04990" aria-label="Recipient's username" aria-describedby="button-addon2" required />
																	<button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
																</div>
															</div>
															<div class="input-group" style="padding-top: 5px">
																<input type="text" class="form-control" value="Gwangjin-gu, Seoul, Republic of Korea" aria-label="Recipient's username" aria-describedby="button-addon2" required />
															</div>
															<div class="input-group" style="padding-top: 5px">
																<input type="text" class="form-control" value="" aria-label="Recipient's username" aria-describedby="button-addon2" required />
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
