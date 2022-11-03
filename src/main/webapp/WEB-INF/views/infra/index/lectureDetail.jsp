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
<form method= "post" name="form">

<input type="hidden" name="iltSeq" id="iltSeq" value="${lecturedetail.iltSeq}"/>
<input type="hidden" name="iftcSeq" id="iftcSeq" value="${lecturedetail.iftcSeq}"/>
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
				<h2>${lecturedetail.iltTitle}</h2>
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
								<img src="../../../../resources/template/user_Eterna/assets/img/blog/blog-1.jpg" alt="" class="img-fluid" />
							</div>

							<h2 class="entry-title">
								<a href="blog-single.html">${lecturedetail.iltTitle}</a>
							</h2>

							<div class="entry-meta">
								<ul>
									<li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="javascript:goTeacher(${lecturedetail.iftcSeq })" >${lecturedetail.iftcName}</a></li>
									<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
									<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
								</ul>
							</div>

							<div class="entry-content">
								${lecturedetail.iltBody}

							</div>

							<!-- <div class="entry-footer">
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
							</div> -->
						</article>
						<!-- End blog entry -->

						<article class="entry">
							<h2 class="entry-title">
								<a href="blog-single.html">상세 커리큘럼</a>
							</h2>

							<div class="accordion" id="accordionPanelsStayOpenExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingOne">
										<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
											챕터 1
										</button>
									</h2>
									<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
										<div class="accordion-body">
											<div class="list-group">
												<c:forEach var="chapterlist" items="${chapterlist}" varStatus ="status"> 
													<a href="#" class="list-group-item list-group-item-action">${chapterlist.ictSort}. &nbsp; ${chapterlist.ictTitle}</a>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>

								<!-- <div class="accordion-item">
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
								</div> -->
								<!-- <div class="accordion-item">
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
								</div> -->
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
							<h3 class="sidebar-title">${lecturedetail.iltTitle}</h3>

							<br />

							
							<h3 class="sidebar-title" style="text-align: right">${lecturedetail.iltPrice } <span>원</span></h3>

							<input type="button" value="신청하기" class="btn btn-danger" style="width: 100%" onclick="location.href = 'lecture.html'" />
							<div style="display: table; width: 100%; margin-top: 5px;">
								<div style="display:table-row; text-align: center;">
									<div style="display: table-cell; padding-right: 5px;">
										<input id="buynow" type="button" value="구매하기 " class="btn btn-danger" style="width: 100%; color: black; background-color: white;" />
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<input type="button" value="찜하기 " class="btn btn-danger" style="width: 100%" onclick="location.href = 'lecture.html'" />
									</div>
									<div style="display: table-cell">
										<input id="cart" type="button" value="장바구니 " class="btn btn-danger" style="width: 100%" />
									</div>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Blog Single Section -->
	</main>
</form>
	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	<script>
		var form = $("form[name=form]");
		
		goTeacher = function(seq){
			$("#iftcSeq").val(seq);
			
			form.attr("action", "/lecturer/lecturerDetail").submit();
		}
		
		$("#buynow").click(function(){
			form.attr("action", "/member/orderView").submit();
		});
	</script>

</body>
</html>
