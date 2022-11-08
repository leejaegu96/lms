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

<title>강의 목록</title>
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

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					<div class="col-lg-3">
						<div class="sidebar">
							<h3 class="sidebar-title">강의 관리 페이지</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="lectureList"> 강의목록 </a></li>
									<li><a href="memberList"> 수강생관리 </a></li>
									<li><a href="lecturerProfile">프로필 수정 </a></li>
								</ul>
							</div>
							<!-- End sidebar categories-->

							<!-- End sidebar recent posts-->
						</div>
						<!-- End sidebar -->
					</div>
					<!-- End blog sidebar -->
					<div class="col-lg-9">
						<div class="row" style="padding: 20px">
							<h4 style="font-weight: bold">
								<i class="fa-solid fa-id-card-clip"></i> 수강생 목록
							</h4>
						</div>
						<div class="sidebar">
							<div class="card">
								<div class="card-body pt-3">
									<div style="display: table; width: 100%;">

										<div style="display: table-row">
											<div style="display: table-cell; width: 25%; padding: 5px;">
												<select class="form-select" aria-label="Default select example" name="" id="">
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
												</select>
											</div>

											<div style="display: table-cell; width: 25%; padding: 5px;">
												<select class="form-select" aria-label="Default select example" name="" id="">
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
												</select>
											</div>

											<div style="display: table-cell; width: 25%; padding: 5px;">
												<input type="text" class="form-control" id="validationCustom03" required>
											</div>

											<div style="display: table-cell; width: 25%; padding: 5px;">
												<input type="text" class="form-control" id="validationCustom03" required>
											</div>
										</div>

										<div style="display: table-row">
											<div style="display: table-cell; width: 25%; padding: 5px;">
												<select class="form-select" aria-label="Default select example" name="" id="">
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
												</select>
											</div>

											<div style="display: table-cell; width: 25%; padding: 5px;">
												<select class="form-select" aria-label="Default select example" name="" id="">
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
													<option value=""></option>
												</select>
											</div>

											<div style="display: table-cell; width: 25%; padding: 5px;">
												<button class="border" style="border-radius: 4px;">
													<img style="width: 17px; border: none;" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
												</button>
												<button class="border" style="border-radius: 4px;">
													<i class="fa-solid fa-arrows-rotate"></i>
												</button>
											</div>
										</div>

									</div>


									<div style="width: 100%; overflow: auto;">
										<table class="table border" style="white-space: nowrap;">
											<tr id="tr1">
												<td>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												<td>#</td>
												<td>Seq</td>
												<td>ID</td>
												<td>Name</td>
												<td>Email</td>
												<td>EmailDomEmail</td>
												<td>Gender</td>
												<td>Dob</td>
												<td>PhoneCarrier</td>
												<td>PhoneNum</td>
												<td>MailNy</td>
												<td>SmsNY</td>
											</tr>

											<tr id="tr1">
												<td>
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												<td>1</td>
												<td>12</td>
												<td>sdf</td>
												<td>Leesaja</td>
												<td>11fsdf@naver.com</td>
												<td>naver.com</td>
												<td>남자</td>
												<td>1989-01-01</td>
												<td>SKT</td>
												<td>01012341234</td>
												<td>1</td>
												<td>1</td>
											</tr>
										</table>
									</div>

									<div style="display: table; width: 100%">
										<div style="display: table-row">
											<div style="display: table-cell; text-align: left;">
												<button class="border" style="border-radius: 4px; background-color: red; color: white;">
													<i class="fa-solid fa-square-minus"></i>
												</button>
												<button class="border" style="border-radius: 4px; background-color: red; color: white;">
													<i class="fa-solid fa-xmark"></i>
												</button>
											</div>

											<div style="display: table-cell; text-align: right;">
												<button class="border" style="border-radius: 4px; background-color: green; color: white;">
													<i class="fa-solid fa-file-excel"></i>
												</button>
												<button class="border" style="border-radius: 4px; background-color: blue; color: white;">
													<i class="fa-solid fa-square-plus"></i></i>
												</button>
											</div>
										</div>
									</div>

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
