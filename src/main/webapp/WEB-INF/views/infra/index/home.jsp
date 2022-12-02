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
	<form name="form" method="post">
		<input type="hidden" id="iltSeq" name="iltSeq" value="1" />
		<!-- include header -->
		<%@include file=".././common/user/includeV1/header.jsp"%>
		<!-- include header -->

		<!-- ======= Hero Section ======= -->
		<section id="hero">
			<div class="hero-container">
				<div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">
					<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

					<div class="carousel-inner" role="listbox">
						<!-- Slide 1 -->
						<div class="carousel-item active" style="background-image: url(../../../../resources/template/user_Eterna/assets/img/slide/javascript.png);">
							<div class="carousel-container">
								<div class="carousel-content">
									<h2 class="animate__animated animate__fadeInDown" style="margin-top: 100px; position: relative; right: 150px;">
										나에게 딱 맞는
										<span>자바 스크립트 강의</span>
									</h2>
									<p class="animate__animated animate__fadeInUp" style="text-align: left; position: relative; right: 250px;">무료, 입문, 중급까지 다! 강의 선택 시간을 줄여드릴게요. 마이크로소프트 개발자 백기선 님과 함께 쉽고 완벽하게 학습하세요!</p>
									<a href="" class="btn-get-started animate__animated animate__fadeInUp"> 지금 바로 수강하기</a>
								</div>
							</div>
						</div>

						<!-- Slide 2 -->
						<div class="carousel-item" style="background-image: url(../../../../resources/template/user_Eterna/assets/img/slide/use2.png)">
							<div class="carousel-container">
								<div class="carousel-content">
									<h2 class="animate__animated fanimate__adeInDown" style="position: relative; top: 20px;">
										입문자를 위한
										<span style="color: white;">유저 리서치</span>
									</h2>
									<p class="animate__animated animate__fadeInUp" style="position: relative; top: 20px;">
										기획자/ 디자이너/ CX 담당자 취준생까지 모두 주목~~!<br>

									</p>
									<a href="" class="btn-get-started animate__animated animate__fadeInUp" style="background: #8d65c5; border-color: #8d65c5">지금 바로 수강하기</a>
								</div>
							</div>
						</div>

						<!-- Slide 3 -->
						<div class="carousel-item" style="background-image: url(../../../../resources/template/user_Eterna/assets/img/slide/use3.png)">
							<div class="carousel-container">
								<div class="carousel-content">
									<h2 class="animate__animated animate__fadeInDown" style="color: white; position: relative; top: 25px; right: 250px;">
										당신을 함께 일하고 싶은 개발자로 <Br>만들어 줄
										<span style="color: white;">클린코드 작성법 </span>
									</h2>
									<p class="animate__animated animate__fadeInUp" style="color: white; position: relative; right: 300px; top: 20px;">
										이론 + 실습 + 활용을 한번에! <br> 중급 개발자로 한 걸음 더 성장하세요!
									</p>
									<a href="" class="btn-get-started animate__animated animate__fadeInUp" style="position: relative; right: 300px; background-color: #E50CBE; border-color: #E50CBE;">Read More</a>
								</div>
							</div>
						</div>
					</div>

					<a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
						<span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
					</a>
					<a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
						<span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
					</a>
				</div>
			</div>
		</section>
		<!-- End Hero -->

		<main id="main">
			<section style="padding-top: 150px; margin-bottom: 0;">
				<div style="display: table; width: 100%; text-align: center">
					<div style="display: table-row;">
						<div style="display: table-cell; padding-top: 30px;">NEXTLEVEL에서 연봉을 올리세요</div>
					</div>
					<div style="display: table-row; text-align: center;">
						<div class="search" style="display: table-cell; text-align: center; padding-top: 30px;">
							<input class="inputx" type="text" placeholder="배우고 싶은 지식을 입력해보세요 ">
							<img class="imgx" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">

						</div>
					</div>
				</div>
			</section>

			<!-- ======= Services Section ======= -->
			<section id="services" class="services">
				<div class="container">
					<div class="row">
						<p id="totalstudent">떠오르고 있는 강좌! 추천!</p>
						<%-- 
						<a href="javascript:goForm(<c:out value="${list.ifmmSeq }"/>)" class="text-decoration-none">
						 --%>
						<c:forEach items="${Rand}" var="Rand" varStatus="status">
							<input type="hidden" name="iftcSeq">
							<input type="hidden" name="iltSeq">
							<div class="col-lg-4 col-md-6 d-flex ">
								<div class="border" style="width: 100%;">
									<div id="clickimg" class="border" style="text-align: center; cursor: pointer;">
										<a href="javascript:goDetail(<c:out value="${Rand.iltSeq }"/>)" class="text-decoration-none">
											<img src="${Rand.path }${Rand.uuidName }" alt="" style="width: 100%;" />
										</a>
									</div>
									<p id="name" style="padding-left: 10px; margin-bottom: 0;">
										<a style="color: black;" href="javascript:goForm(<c:out value="${Rand.iftcSeq }"/>)" class="text-decoration-none">${Rand.iftcName }</a>
									</p>
									<h4 id="title" style="padding-left: 10px;">
										<a style="color: black;" href="javascript:goDetail(<c:out value="${Rand.iltSeq }"/>)" class="text-decoration-none"> ${Rand.iltTitle } </a>
										<!-- 수준 높은 백엔드 개발자가 되고 싶은 당신을 위해 -->
									</h4>
									<p style="padding-left: 10px">
										<c:if test="${Rand.random eq 4 || Rand.random > 4 || Rand.random < 5 }">
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
										</c:if>
										<c:if test="${Rand.random eq 5 }">
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
											<i class="fa-solid fa-star fa-xs" id="star"></i>
										</c:if>
										<span id="reviewnum" style="margin-left: 3px;">(${Rand.random })</span>
									</p>

									<p id="homepirce" style="color: black;">
										₩
										<fmt:formatNumber value="${Rand.iltPrice}" pattern="#,###" />
									</p>

									<div id="box1">
										<span id="box1span">+1600명</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<div class="row" style="padding-top: 48px;">
						<p id="totalstudent">따끈따끈, 신규 강의를 만나보세요!</p>
						<c:forEach items="${New}" var="New" varStatus="status">
							<input type="hidden" name="iftcSeq">
							<input type="hidden" name="iltSeq">
							<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
								<div class="border" style="width: 100%;">
									<div class="border" style="text-align: center;">
										<a href="javascript:goDetail(<c:out value="${New.iltSeq }"/>)" class="text-decoration-none">
											<img src="${New.path }${New.uuidName }" alt="" style="width: 100%;" />
										</a>
									</div>
									<p id="name" style="padding-left: 10px; margin-bottom: 0;">
										<a style="color: black;" href="javascript:goForm(<c:out value="${New.iftcSeq }"/>)" class="text-decoration-none">${New.iftcName }</a>
									</p>
									<h4 id="title" style="padding-left: 10px;">
										<a style="color: black; font-weight: bold;" href="javascript:goDetail(<c:out value="${New.iltSeq }"/>)" class="text-decoration-none"> ${New.iltTitle } </a>
									</h4>
									<p id="homepirce">
										₩
										<fmt:formatNumber value="${New.iltPrice}" pattern="#,###" />
									</p>

								</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</section>
			<!-- End Services Section -->
		</main>
		<!-- End #main -->

		<!-- include footer -->
		<%@include file=".././common/user/includeV1/footer.jsp"%>
		<!-- include footer-->
		<script>
            var form = $("form[name=form]");
            var goUrlForm = "/lecturer/lecturerDetail";
            var goDetailForm = "/index/lectureDetail";
            var iftcSeq = $("input:hidden[name=iftcSeq]");
            var iltSeq = $("input:hidden[name=iltSeq]");

            goForm = function(keyValue) {
                /* if(keyValue != 0) seq.val(btoa(keyValue)); */
                iftcSeq.val(keyValue);
                form.attr("action", goUrlForm).submit();
            }
            goDetail = function(keyValue) {
                /* if(keyValue != 0) seq.val(btoa(keyValue)); */
                iltSeq.val(keyValue);
                form.attr("action", goDetailForm).submit();
            }
            /* 
            $("#name").click(function() {
                form.attr("action", "/index/home").submit();
            });
            $("#clickimg").click(function() {
                form.attr("action", "/index/lectureDetail").submit();
            });
             */
        </script>
	</form>
</body>
</html>
