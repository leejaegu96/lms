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

<!-- include link lectureDetail -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->

</head>

<body>
	<form method="post" name="form">

		<input type="hidden" name="iltSeq" id="iltSeq" value="${lecturedetail.iltSeq}" />
		<input type="hidden" name="iftcSeq" id="iftcSeq" value="${lecturedetail.iftcSeq}" />
	</form>
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
							<div class="" style="margin: auto;">
								<img src="${lecturedetail.path }${lecturedetail.uuidName}" alt="" style="height: 100%; width: 100%" />
							</div>

							<br />

							<h2 class="entry-title">
								<a href="blog-single.html">${lecturedetail.iltTitle}</a>
							</h2>

							<div class="entry-meta">
								<ul>
									<li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="javascript:goTeacher(${lecturedetail.iftcSeq })">${lecturedetail.iftcName}</a></li>
									<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"> <time datetime="2020-01-01">Jan 1, 2020</time>
									</a></li>
									<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
								</ul>
							</div>

							<div class="entry-content">${lecturedetail.iltBody}</div>

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

							<c:forEach var="chapterHead" items="${chapterHead}" varStatus="status">
								<h4>${chapterHead.ichTitle}</h4>
								<hr />
								<ol>
									<c:forEach var="chapterlist" items="${chapterlist}" varStatus="status">
										<c:if test="${chapterHead.ichSeq == chapterlist.ictIchSeq }">
											<li>${chapterlist.ictTitle}</li>
										</c:if>
									</c:forEach>
								</ol>
							</c:forEach>

							<%-- 								<div class="accordion" id="accordionPanelsStayOpenExample">
									<div class="accordion-item">
										<c:forEach var="chapterHead" items="${chapterHead}" varStatus="status">
											<c:set var="i" value="${i+1 }" />
											<h2 class="accordion-header" id="panelsStayOpen-headingOne">
												<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">${chapterHead.ichTitle }</button>
											</h2>
											<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
												<div class="accordion-body">
													<div class="list-group">
														<c:forEach var="chapterlist" items="${chapterlist}" varStatus="status">
															<c:if test="${chapterHead.ichSeq == chapterlist.ictIchSeq }">
																<a href="#" class="list-group-item list-group-item-action">${i}. &nbsp; ${chapterlist.ictTitle}</a>
															</c:if>
														</c:forEach>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div> --%>

						</article>
						<!-- End blog entry -->

						<!-- blog author bio -->
						<div class="blog-author d-flex align-items-center">
							<img src="${lecturedetail.teacherPath }${lecturedetail.teacherUuidName}" class="rounded-circle float-left" alt="" />
							<div>
								<h3>
									<a href="javascript:goTeacher(${lecturedetail.iftcSeq })" style="color: black">${lecturedetail.iftcName}</a>
								</h3>
								<hr />
								<div class="social-links">
									<a href="https://twitters.com/#"> <i class="bi bi-twitter fa-2xl"></i>
									</a> <a href="https://facebook.com/#"> <i class="bi bi-facebook fa-2xl"></i>
									</a> <a href="https://instagram.com/#"> <i class="biu bi-instagram fa-2xl"></i>
									</a>
								</div>
							</div>
						</div>
						<!-- End blog author bio -->

						<div class="blog-comments">
							<h4 class="comments-count">Comment</h4>

							<!-- Comment Area -->
							<form id="commentForm" name="commentForm">
								<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>" />
								<input type="hidden" name="mainKey" value="<c:out value="${lecturedetail.iltSeq}"/>" />
								<div id="lita"></div>
							</form>
							<!-- End comment Area -->

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


							<h3 class="sidebar-title" style="text-align: right">${lecturedetail.iltPrice }
								<span>원</span>
							</h3>

							<div style="display: table; width: 100%; margin-top: 5px;">
								<div style="display: table-row; text-align: center;">
									<div style="display: table-cell; padding-right: 5px;">
										<input id="buynow" type="button" value="구매하기 " class="btn btn-danger" style="width: 100%;" />
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

	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	<script>
	$(document).ready(function() {
	    setLita();
	});

	var form = $("form[name=form]");

	goTeacher = function(seq) {
	    $("#iftcSeq").val(seq);

	    form.attr("action", "/lecturer/lecturerDetail").submit();
	}

	$("#buynow").click(function() {
	    form.attr("action", "/member/orderView").submit();
	});
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		setLita();
	}

	// 댓글 리스트
	function setLita() {
	    $.ajax({
		async : true,
		cache : false,
		type : "post"
		/* ,dataType:"json" */
		,
		url : "/index/lectureCommentAjaxLita",
		data : $("#commentForm").serialize()
		/* ,data : {  } */
		,
		success : function(response) {
		    $("#lita").empty();
		    $("#lita").append(response);
		},
		error : function(jqXHR, textStatus, errorThrown) {
		    alert("ajaxUpdate " + jqXHR.textStatus + " : "
			    + jqXHR.errorThrown);
		}
	    });
	}
    </script>

</body>
</html>
