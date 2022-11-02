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
<style>
.video-container {
	position: relative;
	height: 0;
	padding-bottom: 56.25%;
}

.video-container iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
</style>
</head>

<body>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<!-- ======= Main ======= -->
	<main id="main">
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					<div class="col-lg-8 entries">
						<article class="entry">
							<div class="entry-title">
								<h2>주문정보</h2>
							</div>

							<div class="entry-content">
								<div class="sidebar">
									<div class="sidebar-item recent-posts">
										<div class="post-item clearfix">
											<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" />
											<h4>
												<a href="blog-single.html">권도수의 [목,어깨 집중 프로젝트] : 망가진 자세로 하루를 보내는 나를 위한 셀프 관리</a>
											</h4>
											<h3 style="float: right">220,000 원</h3>
											<time datetime="2020-01-01">Jan 1, 2020</time>
										</div>
									</div>

									<div class="sidebar-item recent-posts">
										<div class="post-item clearfix">
											<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" />
											<h4>
												<a href="blog-single.html">권도수의 [목,어깨 집중 프로젝트] : 망가진 자세로 하루를 보내는 나를 위한 셀프 관리</a>
											</h4>
											<h3 style="float: right">220,000 원</h3>
											<time datetime="2020-01-01">Jan 1, 2020</time>
										</div>
									</div>

									<div class="sidebar-item recent-posts">
										<div class="post-item clearfix">
											<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" />
											<h4>
												<a href="blog-single.html">권도수의 [목,어깨 집중 프로젝트] : 망가진 자세로 하루를 보내는 나를 위한 셀프 관리</a>
											</h4>
											<h3 style="float: right">220,000 원</h3>
											<time datetime="2020-01-01">Jan 1, 2020</time>
										</div>
									</div>
								</div>
							</div>
						</article>
						<!-- End blog entry -->
					</div>
					<!-- End blog entries list -->

					<div class="col-lg-4">
						<div class="sidebar">
							<h3 class="sidebar-title">최종 결제 금액</h3>
							<div class="sidebar-item categories">
								<ul>
									<li>
										상품 금액
										<p style="float: right">660,000 원</p>
									</li>
									<hr />
									<li>
										총 결제 금액
										<p style="float: right">660,000 원</p>
									</li>
								</ul>
							</div>
						</div>

						<div class="sidebar">
							<h3 class="sidebar-title">이용약관</h3>
							<div class="sidebar-item categories">
								<ul>
									<li>
										<input type="checkbox" name="" id="" />상품 이용 약관
									</li>
									<li>
										<input type="checkbox" name="" id="" />환불 규정
									</li>
									<hr />
									<li>
										<input type="checkbox" name="" id="" />전체동의
									</li>
									<li>모든 약관에 동의합니다.</li>
									<li>
										<input type="button" value="결제하기" class="btn btn-danger" style="width: 100%" onclick="location.href = 'lecture.html'" />
									</li>
								</ul>
							</div>
						</div>

						<!-- End sidebar -->
					</div>
					<!-- End blog sidebar -->
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
