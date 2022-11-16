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
							<div class="video-container">
								<div class="video-container">
									<div id="player"></div>
								</div>
							</div>

							<h2 class="entry-title">
								<a href="blog-single.html">
									<c:forEach var="list" items="${lectureDetail}" varStatus="status" begin="0" end="0">
										${list.iltTitle}
									</c:forEach>
								</a>
							</h2>

							<div class="entry-meta">
								<ul>
									<li class="d-flex align-items-center">
										<i class="bi bi-person"></i>
										 <a href="blog-single.html">
										 	<c:forEach var="list" items="${lectureDetail}" varStatus="status" begin="0" end="0">
												${list.iftcName}
											</c:forEach>
										 </a>
									</li>
									<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
								</ul>
							</div>

							<div class="entry-content">
								<p>이거들으면 너도 네카라쿠배!</p>
							</div>
						</article>
						<!-- End blog entry -->

						<!-- Comment area -->
						<article class="entry">
							<div class="blog-comments">
								<h4 class="comments-count">Q & A</h4>

								<div id="comment-1" class="comment">
									<div class="d-flex">
										<div>
											<h5>
												<a href="">김진범</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
											</h5>
											<time datetime="2020-01-01">01 Jan, 2020</time>
											<p>이거 들으면 너도 네카라쿠배</p>
										</div>
									</div>
								</div>
								<!-- End comment #1 -->

								<!-- Comment replay -->
								<div id="comment-reply-1" class="comment comment-reply">
									<div class="d-flex">
										<div>
											<h5>
												<a href="">Lynda Small</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
											</h5>
											<time datetime="2020-01-01">01 Jan, 2020</time>
											<p>good</p>
										</div>
									</div>
								</div>
								<div id="comment-reply-2" class="comment comment-reply">
									<div class="d-flex">
										<div>
											<h5>
												<a href="">Lynda Small</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
											</h5>
											<time datetime="2020-01-01">01 Jan, 2020</time>
											<p>good</p>
										</div>
									</div>
								</div>
								<!-- End of Comment replay -->

								<div id="comment-1" class="comment">
									<div class="d-flex">
										<div>
											<h5>
												<a href="">김진범</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
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
												<a href="">김진범</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a>
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
									<!-- End comment form -->
								</div>
							</div>
							<!-- End Comment area -->
						</article>
					</div>

					<div class="col-lg-4">
						<div class="sidebar">
							<h2>진행률</h2>
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-label="Example with label" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
							</div>

							<hr />
							
							<c:set var="checkChapterRepeat" value="0"></c:set>
							<c:forEach var="list" items="${lectureDetail}" varStatus="status">
								
								<c:if test="${checkChapterRepeat ne list.ichSeq}">
								<c:set var="checkChapterRepeat" value="${list.ichSeq }"></c:set>
										<h3 class="sidebar-title">
											Chapter ${status.count } - ${list.ichTitle }<i class="fa-solid fa-check"></i>
										</h3>
										
										<div class="sidebar-item categories">
											<ul>
												<c:forEach var="list2" items="${lectureDetail}" varStatus="status">
													<c:if test="${list.ichSeq eq list2.ichSeq}">
														<li><a href="#">${list2.ictTitle}<span>14:26</span> <i style="float: right" class="fa-solid fa-check fa-xl"></i></a></li>
													</c:if>
												</c:forEach>
											</ul>
										</div>
								</c:if>
							</c:forEach>

							<!-- End sidebar categories-->
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
<script>

var tag = document.createElement('script');

tag.src = 'https://www.youtube.com/iframe_api';
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;

var playerConfig = {
		
		videoId : 'Sn0ublt7CWM',
		
		events : {
			onReady : onPlayerReady,
			onStateChange : onPlayerStateChange
		},
		playerVars: {
		      'playsinline': 1
		      ,'start': 800
		    },
};


function onYouTubeIframeAPIReady() {
	player = new YT.Player('player', playerConfig);
}
 



function onPlayerReady(event) {
	event.target.playVideo();
}

function onPlayerStateChange(e) {
	switch (e.data) {
	case -1:
		console.log('시작되지 않음');
		console.log(player.getDuration());
		break;

	case 0:
		console.log('재생완료');
		console.log(player.getDuration());
		break;

	case 1:
		console.log('재생중');
		console.log(player.getCurrentTime());
		break;
		
	case 2:
		console.log('어디까지 들었는지 보여줌 ');
		console.log(player.getCurrentTime());
		break;
	}
}


</script>

</body>
</html>
