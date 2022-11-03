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
<form method = "post" name = "form">

<input type="hidden" name="iltSeq" id="iltSeq" value="${lecturedetail.iltSeq}"/>
<input type="hidden" name="iftcSeq" id="iftcSeq" value="${lecturedetail.iftcSeq}"/>
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
												<a href="blog-single.html">${oneItem.iltTitle}</a>
											</h4>
											<h3 style="float: right">${oneItem.iltPrice }<span>원</span></h3>
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
										<p style="float: right"> ${oneItem.iltPrice }<span>원</span></p>
									</li>
									<hr />
									<li>
										총 결제 금액
										<p style="float: right"> ${oneItem.iltPrice }<span>원</span> </p>
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
										<input id="payNow" type="button" value="결제하기" class="btn btn-danger" style="width: 100%"  />
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
</form>
	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	<script>
		$("#payNow").click(function(){
			
			$.ajax({ 
				url : "/member/orderInsert",
				 
				type : 'post',
				
				data : {
					iltSeq : $("#iltSeq").val()
				},
				
				success : function(data) {
		
				 	if(data.rt == "success"){			 		
						alert("아작스 성공 ");
					 } else {
						 // by pass
					 }
					
			     },
			          
				error : function(request, status, error){ 
								
					  	console.log("code: " + request.status)	
				        console.log("message: " + request.responseText)
				        console.log("error: " + error);
					 }	     
			});	
			
			return false;
			form.attr("action", "/member/purchased").submit();
		});
	</script>
</body>
</html>