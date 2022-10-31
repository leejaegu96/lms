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
	
	<!-- Main -->
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<ol>
					<li><a href="index.html">Home</a></li>
					<li>Category</li>
				</ol>
				<h2>Category</h2>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio">
			<div class="container">
				<div class="row" style="justify-content: space-between">
					<div class="col-lg-12 d-flex">
						<ul id="portfolio-flters">
							<li data-filter="*" class="filter-active">All</li>
							<li data-filter=".filter-app">취업</li>
							<li data-filter=".filter-card">자격증</li>
							<li data-filter=".filter-web">취미</li>
						</ul>
					</div>
				</div>

				<div class="row portfolio-container" onclick="location.href = 'view.html'">
					<div class="col-lg-4 col-md-4 portfolio-item filter-web">
						<div class="card" style="width: 20rem">
							<img src="https://cdn.class101.net/images/ca39ccac-8e9f-48e7-9c8c-b4d895dcb661/375xauto.webp" class="img-fluid" alt="" />
							<div class="card-body">
								<p class="card-text" style="font-size: 14px; font-weight: bold">banzisu</p>
								<p class="card-text">
									일상에 따뜻한 숨결을 불어넣어요, <br />반지수와 함께하는 아이패드 드로잉
								</p>
								<p class="card-text" style="font-size: 13px; color: gray">
									<i class="fa-regular fa-heart"></i> 2973&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-thumbs-up"></i> 98%
								</p>
								<p class="card-text">
									<span style="color: red; font-size: 14px">39%</span>&nbsp;&nbsp;&nbsp; <span style="font-size: 17px">월 44,900원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: 12px; color: gray">(5개월)</span>
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 portfolio-item filter-web">
						<div class="card" style="width: 20rem">
							<img src="https://cdn.class101.net/images/bed175a4-9acc-4ea5-bdbd-1c1afa45eced/375xauto.webp" class="img-fluid" style="height: 317px" />
							<div class="card-body">
								<p class="card-text" style="font-size: 14px; font-weight: bold">흐스흐</p>
								<p class="card-text">
									아이패드 드로잉 기초부터 굿즈 제작! <br />몽글몽글하게 흐스흐와 함께해요
								</p>
								<p class="card-text" style="font-size: 13px; color: gray">
									<i class="fa-regular fa-heart"></i> 1485&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-thumbs-up"></i> 99%
								</p>
								<p class="card-text">
									<span style="color: red; font-size: 14px">34%</span>&nbsp;&nbsp;&nbsp;<span style="font-size: 17px">월 48,280원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px; color: gray">(5개월)</span>
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 portfolio-item filter-web">
						<div class="card" style="width: 20rem">
							<img src="https://cdn.class101.net/images/ca39ccac-8e9f-48e7-9c8c-b4d895dcb661/375xauto.webp" class="img-fluid" alt="" />
							<div class="card-body">
								<p class="card-text" style="font-size: 14px; font-weight: bold">동동 작가</p>
								<p class="card-text">
									이모티콘 작가화 함께, <br />쉽게 배우는 이모티콘!
								</p>
								<p class="card-text" style="font-size: 13px; color: gray">
									<i class="fa-regular fa-heart"></i> 2729&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-thumbs-up"></i> 98%
								</p>
								<p class="card-text">
									<span style="color: red; font-size: 14px">19%</span>&nbsp;&nbsp;&nbsp;<span style="font-size: 17px">월 45,800원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px; color: gray">(5개월)</span>
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 portfolio-item filter-web">
						<div class="card" style="width: 20rem">
							<img src="https://cdn.class101.net/images/ca39ccac-8e9f-48e7-9c8c-b4d895dcb661/375xauto.webp" class="img-fluid" alt="" />
							<div class="card-body">
								<p class="card-text" style="font-size: 14px; font-weight: bold">banzisu</p>
								<p class="card-text">
									일상에 따뜻한 숨결을 불어넣어요, <br />반지수와 함께하는 아이패드 드로잉
								</p>
								<p class="card-text" style="font-size: 13px; color: gray">
									<i class="fa-regular fa-heart"></i> 2973&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-thumbs-up"></i> 98%
								</p>
								<p class="card-text">
									<span style="color: red; font-size: 14px">39%</span>&nbsp;&nbsp;&nbsp;<span style="font-size: 17px">월 44,900원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px; color: gray">(5개월)</span>
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 portfolio-item filter-web">
						<div class="card" style="width: 20rem">
							<img src="https://cdn.class101.net/images/bed175a4-9acc-4ea5-bdbd-1c1afa45eced/375xauto.webp" class="img-fluid" style="height: 317px" />
							<div class="card-body">
								<p class="card-text" style="font-size: 14px; font-weight: bold">흐스흐</p>
								<p class="card-text">
									아이패드 드로잉 기초부터 굿즈 제작! <br />몽글몽글하게 흐스흐와 함께해요
								</p>
								<p class="card-text" style="font-size: 13px; color: gray">
									<i class="fa-regular fa-heart"></i> 1485&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-thumbs-up"></i> 99%
								</p>
								<p class="card-text">
									<span style="color: red; font-size: 14px">34%</span>&nbsp;&nbsp;&nbsp;<span style="font-size: 17px">월 48,280원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px; color: gray">(5개월)</span>
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 portfolio-item filter-web">
						<div class="card" style="width: 20rem">
							<img src="https://cdn.class101.net/images/ca39ccac-8e9f-48e7-9c8c-b4d895dcb661/375xauto.webp" class="img-fluid" alt="" />
							<div class="card-body">
								<p class="card-text" style="font-size: 14px; font-weight: bold">동동 작가</p>
								<p class="card-text">
									이모티콘 작가화 함께, <br />쉽게 배우는 이모티콘!
								</p>
								<p class="card-text" style="font-size: 13px; color: gray">
									<i class="fa-regular fa-heart"></i> 2729&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-thumbs-up"></i> 98%
								</p>
								<p class="card-text">
									<span style="color: red; font-size: 14px">19%</span>&nbsp;&nbsp;&nbsp;<span style="font-size: 17px">월 45,800원</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px; color: gray">(5개월)</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- End main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
</body>
</html>
