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
					<div class="col-lg-3">
						<div class="sidebar">
							<h3 class="sidebar-title">강의 관리 페이지</h3>
							<div class="sidebar-item categories">
								<ul>
									<li><a href="mypage.html"> 구매목록 </a></li>
									<li><a href="cart.html"> 수강생관리 </a></li>
									<li><a href="printPage.html"> 강의 등록 </a></li>
									<li><a href="profile.html">프로필 수정 </a></li>
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
								<i class="fa-solid fa-id-card-clip"></i>강의목록
								<div id="lecadd" style="float: right;">+ 강의 만들기</div>
							</h4>
						</div>
						<div class="sidebar">
							<div class="card">
								<div class="card-body pt-3">
									<div>
										<input class="inputx" type="text" placeholder="강의 이름을 입력해보세요 " style="width: 100%; background-color: #f2f4f5; border-color: #f2f4f5">
										<img class="imgx1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
									</div>

									<table class="table border" style="table-layout: fixed;">
										<tr id="tr1">
											<td style="width: 4%">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											</td>
											<td style="width: 25%">제목</td>
											<td style="width: 10%">상태</td>
											<td style="width: 15%">상품군</td>
											<td style="width: 8%">카테고리</td>
											<td style="width: 10%">노출 여부</td>
											<td style="width: 18%">생산일</td>
											<td style="width: 8%"></td>
											<td style="width: 4%"></td>
										</tr>
										<tr style="font-size: 13px; vertical-align: middle;">
											<td style="text-align: center; padding: 0; vertical-align: middle;">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											</td>
											<td style="padding: 0;">
												<table style="table-layout: fixed; width: 100%">
													<tr>
														<td style="width: 3em">
															<img src="https://cdn.class101.net/images/325b62f3-e531-425f-b9b8-e53fdadfc9b2/original" alt="" style="width: 3em" style="display:inline-block;" />
														</td>
														<td style="padding-left: 10px;">유튜브를 이용한 쿠팡파트너스...</td>
													</tr>
												</table>
											</td>

											<td>
												<i class="fa-solid fa-circle-dot" style="color: green;"></i> 판매 중
											</td>


											<td style="text-align: center;">원포인트 클래스</td>

											<td style="text-align: center;">주식</td>

											<td style="text-align: center;">
												<i class="fa-regular fa-eye"></i> 공개
											</td>

											<td>2021.12.26 오전 10:59</td>

											<td>
												<span id="writebtn"> 작성하기</span>
											</td>

											<td>
												<span id="writebtn">...</span>
											</td>
										</tr>
									</table>


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