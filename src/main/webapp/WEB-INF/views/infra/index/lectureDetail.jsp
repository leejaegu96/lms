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

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<ol>
					<li><a href="index.html">Home</a></li>
					<li><a href="blog.html">Blog</a></li>
				</ol>
				<h2>너도 네카라쿠배! 개쩌는 웹 프로그램 강의</h2>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Single Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					<div class="col-lg-8 entries">
						<article class="entry entry-single">
							<div class="entry-img">
								<img src="../template/user_Eterna/assets/img/blog/blog-1.jpg" alt="" class="img-fluid" />
							</div>

							<h2 class="entry-title">
								<a href="blog-single.html">너도 네카라쿠배! 개쩌는 웹 프로그램 강의</a>
							</h2>

							<div class="entry-meta">
								<ul>
									<li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">김진범</a></li>
									<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
									<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
								</ul>
							</div>

							<div class="entry-content">
								<p>파이썬 문법 쬬큼 알면 중학생도 쉽게 이해가능한 Tensorflow 딥러닝 기초강좌입니다. 머신러닝 같은거 대학원에서 최소 2년은 구른 사람이 할 수 있는 어려운 건줄 아는 분들이 많은데 실은 아닙니다. 특히 딥러닝은 중고등학교 수학만 조금 알면 집에서 붕알긁고 있는 우리도 포함 누구나 할 수 있습니다. 딥러닝으로 사물자동인식, 가격 예측 등 이런 흔히말하는 AI를 쉽게 만들어서 실생활에 사용해보도록 합시다. 실은 시중 교재와 강좌들이 너무 어렵게 가르치는 부분이 많아 직접 강의를 만들게 되었습니다. 딥러닝을 바닥부터 직접 구현하는 원리학습과 Tensorflow 2버전을 이용해 데이터 파이프라인 만들고 모델만들고 훈련시키고 최적화하고 최종예측모델뽑는 작업을 혼자서도 할 수 있도록 상세히 알려드립니다.</p>

								<h3>[필요지식]</h3>

								<p>파이썬 기초 지식이 필요합니다 - 숫자, 문자 자료형과 사칙연산을 할 수 있다 - 반복문으로 리스트/딕셔너리 자료를 하나씩 꺼내는 법을 안다 - num = [1,2,3] 이라는 리스트를 반복문을 이용해 [2,3,4] 로 변하게 만들 수 있다 - 나는 name = [ ['park', 'kim'] , 'john'] 에서 kim 이라는 자료를 출력할 수 있다 - 함수 & 파라미터 만들어 쓸 수 있다 - 중학교 수학시간에 배운 1차함수, 2차함수, 기울기가 뭔지 안다 는 분들에게 추천드립니다.</p>

								<h3>[커리큘럼]</h3>

								<p>- 딥러닝에 필요한 기초 이론 (perceptron, 머신러닝 개념 등) - Neural Network 만드는 법 (node, weight, 행렬 곱연산, gradient, 경사하강법, loss함수 등) - 가끔 필요한 Numpy, Pandas 문법 - 텐서플로우 기본 자료형과 문법 - Tensorboard 시각화 & 모델 최적화 - 프로젝트0. 텐서로 밑바닥부터 만드는 linear regression 모델 - 프로젝트1. 학점과 영어성적으로 대학원 입학확률 예측하기 - 프로젝트2. 이 사진이 바지인지 셔츠인지 구분해보자 (이미지 분류와 CNN) - 프로젝트2.5. 개/고양이를 구분하는 AI 만들기 & 이미지 전처리 (이미지 분류와 CNN) - 프로젝트3. 혼자 작곡하는 AI 만들기 (RNN) - 프로젝트4. 악플 필터링 AI 만들기 & 자연어처리 (RNN) - 프로젝트5. 이 사람이 죽을 확률을 예측하려면? (csv 카테고리 데이터 다루기) - 프로젝트6. 사람얼굴을 그려주는 이미지 생성기 (GAN)</p>

								<h3>[업데이트사항]</h3>
								<p>- 머신러닝이란 / 뉴럴네트워크 강의 새롭게 업데이트</p>
							</div>

							<div class="entry-footer">
								<i class="bi bi-folder"></i>
								<ul class="cats">
									<li><a href="#">Business</a></li>
								</ul>

								<i class="bi bi-tags"></i>
								<ul class="tags">
									<li><a href="#">Creative</a></li>
									<li><a href="#">Tips</a></li>
									<li><a href="#">Marketing</a></li>
								</ul>
							</div>
						</article>
						<!-- End blog entry -->

						<article class="entry">
							<h2 class="entry-title">
								<a href="blog-single.html">상세 커리큘럼</a>
							</h2>

							<div class="accordion" id="accordionPanelsStayOpenExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingOne">
										<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">Chapter #1</button>
									</h2>
									<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
										<div class="accordion-body">
											<div class="list-group">
												<a href="#" class="list-group-item list-group-item-action"> The current link item </a> <a href="#" class="list-group-item list-group-item-action">A second link item</a> <a href="#" class="list-group-item list-group-item-action">A third link item</a> <a href="#" class="list-group-item list-group-item-action">A fourth link item</a> <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
											</div>
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
										<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">Chapter #2</button>
									</h2>
									<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
										<div class="accordion-body">
											<div class="list-group">
												<a href="#" class="list-group-item list-group-item-action">The current link item </a> <a href="#" class="list-group-item list-group-item-action">A second link item</a> <a href="#" class="list-group-item list-group-item-action">A third link item</a> <a href="#" class="list-group-item list-group-item-action">A fourth link item</a> <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
											</div>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingThree">
										<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">Chapter #3</button>
									</h2>
									<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
										<div class="accordion-body">
											<div class="list-group">
												<a href="#" class="list-group-item list-group-item-action"> The current link item </a> <a href="#" class="list-group-item list-group-item-action">A second link item</a> <a href="#" class="list-group-item list-group-item-action">A third link item</a> <a href="#" class="list-group-item list-group-item-action">A fourth link item</a> <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</article>
						<!-- End blog entry -->

						<!-- blog author bio -->
						<div class="blog-author d-flex align-items-center">
							<img src="../template/user_Eterna/assets/img/blog/blog-author.jpg" class="rounded-circle float-left" alt="" />
							<div>
								<h4>김진범</h4>
								<div class="social-links">
									<a href="https://twitters.com/#"><i class="bi bi-twitter"></i></a> <a href="https://facebook.com/#"><i class="bi bi-facebook"></i></a> <a href="https://instagram.com/#"><i class="biu bi-instagram"></i></a>
								</div>
								<p>강사 소개글</p>
							</div>
						</div>
						<!-- End blog author bio -->

						<div class="blog-comments">
							<h4 class="comments-count">3 Review</h4>

							<div id="comment-1" class="comment">
								<div class="d-flex">
									<div>
										<h5>
											<a href="">김진범</a>
										</h5>
										<time datetime="2020-01-01">01 Jan, 2020</time>
										<p>이거 들으면 너도 네카라쿠배</p>
									</div>
								</div>
							</div>
							<!-- End comment #1 -->

							<div id="comment-1" class="comment">
								<div class="d-flex">
									<div>
										<h5>
											<a href="">김진범</a>
										</h5>
										<time datetime="2020-01-01">01 Jan, 2020</time>
										<p>이거 들으면 너도 네카라쿠배</p>
									</div>
								</div>
							</div>
							<!-- End comment #1 -->

							<div id="comment-1" class="comment">
								<div class="d-flex">
									<div>
										<h5>
											<a href="">김진범</a>
										</h5>
										<time datetime="2020-01-01">01 Jan, 2020</time>
										<p>이거 들으면 너도 네카라쿠배</p>
									</div>
								</div>
							</div>
							<!-- End comment #1 -->

							<!-- pagination -->
							<div class="blog-pagination">
								<ul class="justify-content-center">
									<li><a href="#">1</a></li>
									<li class="active"><a href="#">2</a></li>
									<li><a href="#">3</a></li>
								</ul>
							</div>
							<!--End pagination -->

							<!-- comment form -->
							<div class="reply-form">
								<h4>리뷰작성</h4>
								<form action="">
									<div class="row">
										<div class="col form-group">
											<textarea name="comment" class="form-control" placeholder="Your Comment*"></textarea>
										</div>
									</div>
									<button type="submit" class="btn btn-primary">Post Comment</button>
								</form>
							</div>
							<!-- End comment form -->
						</div>
						<!-- End blog comments -->
					</div>
					<!-- End blog entries list -->

					<div class="col-lg-4 box">
						<div class="sidebar">
							<h3 class="sidebar-title">너도 네카라쿠배! 개쩌는 웹 프로그램 강의</h3>

							<br />

							<h3 class="sidebar-title">지금 신청하면</h3>
							<h3 class="sidebar-title" style="text-align: right">120,000 원</h3>

							<input type="button" value="신청하기" class="btn btn-danger" style="width: 100%" onclick="location.href = 'lecture.html'" />
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Blog Single Section -->
	</main>
	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->

</body>
</html>
