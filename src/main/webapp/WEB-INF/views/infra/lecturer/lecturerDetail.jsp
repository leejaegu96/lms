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
				<h2>크리에이터</h2>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Single Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					<div class="col-lg-2 entries"></div>
					<div class="col-lg-8 entries">
						<article class="entry entry-single">
							<div class="entry-img" style="text-align: center; padding-top: 50px;">
								<img src="https://s3.ap-northeast-2.amazonaws.com/opentutorials-user-file/course/94.png" alt="" class="img-fluid" />
							</div>

							<h2 class="entry-title">
								<span style="font-size:22px;">크리에이터 </span><br>
								<span style="font-weight:bold; font-size:22px;">${ltinfo.iftcName }</span> 
								<span style="font-size:22px;">입니다.</span><br>
								<a href="https://www.youtube.com/c/%EC%83%9D%ED%99%9C%EC%BD%94%EB%94%A91">
									<span style="font-weight:bold; font-size:15px; color:gray;"><i class="fa-brands fa-youtube" style="color:red;"></i>&nbsp;생활코딩 </span>
								</a>
							</h2>
							

							<div class="entry-meta">
								<span style="font-size:13px; color:black;">
									마지막 활동 
								</span>
								<span style="font-weight:bold; font-size:13px; color:black;">
									4일 전 커뮤니티 답글 작성 
								</span>
							</div>
							<hr>	
							<div class="entry-content" style="line-height: 200%;">
								
									${ltinfo.iftcProfile}									
									
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

					</div>
					<div class="col-lg-2 entries"></div> 
					<!-- End blog entries list -->

					
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
