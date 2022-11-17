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
.pie-chart {
	position: relative;
	display: inline-block;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	transition: 0.3s;
}

span.center {
	background: #fff;
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	text-align: center;
	line-height: 50px;
	font-size: 15px;
	transform: translate(-50%, -50%);
}
</style>
</head>

<body>
<form method="post" name= "form">
<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="${sessSeq }"/>
<input type ="hidden" name="iltSeq" id="iltSeq"/>
<input type ="hidden" name="ictSeq" id="ictSeq"/>
<input type ="hidden" name="historyCheck" id="historyCheck"/>

	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<!-- ======= Hero Section ======= -->
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<ol>
					<li><a href="../index/home">Home</a></li>
					<li>MyPage</li>
				</ol>
				<h2>MyPage</h2>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Blog Section ======= -->
		<section id="blog" class="blog">
			<div class="container" data-aos="fade-up">
				<div class="row">
					
					<!-- include sidebar -->
					<%@include file=".././common/user/includeV1/myPageBar.jsp"%>
					<!-- include sidebar-->

					<div class="col-lg-8">
						<div class="row" style="padding: 20px">
							<h4 style="font-weight: bold">
								<i class="fa-solid fa-id-card-clip"></i> 구매목록
							</h4>
						</div>
						<div class="sidebar">
							<div class="card">
								<div class="card-body pt-3">
									<div>
										<input class="inputx" type="text" placeholder="강의 이름을 입력해보세요 " style="width: 100%; background-color: #f2f4f5; border-color: #f2f4f5"> <img class="imgx1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
									</div>

									<table class="table border" style="table-layout: fixed;">
										<tr id="tr1">
											<td style="width: 5%">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											</td>
											<td style="width: 30%">제목</td>
											<td style="width: 15%">상품군</td>
											<td style="width: 10%">카테고리</td>
											<td style="width: 20%">결제일자</td>
											<td style="width: 20%">진도율</td>
										</tr>
										
										<c:forEach var="buyList" items="${paymentList}" varStatus="status">
										<tr onclick="goLectureView(${buyList.ipmIltSeq})" class="trhover" style="font-size: 13px; vertical-align: middle;">
											<td style="text-align: center; padding: 0; vertical-align: middle;">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
											</td>
											<td style="padding: 0;">
												<table style="table-layout: fixed; width: 100%">
													<tr>
														<td style="width: 3em">
															<img src="https://cdn.class101.net/images/37d8a757-0f38-4424-a58f-b71444a712f8/960xauto.webp" alt="" style="width: 3em" style="display:inline-block;" />
														</td>
														<td style="padding-left: 10px;">${buyList.iltTitle }</td>
													</tr>
												</table>
											</td>
											<td style="text-align: center;">원포인트 클래스</td>
											<td style="text-align: center;">생활/취미</td>
											<td style="text-align: center;"><fmt:formatDate value="${buyList.iodPayDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
											<td style="text-align: center;">
												<div class="pie-chart pie-chart2">
													<span class="center">50%</span>
												</div>
											</td>
										</tr>
										</c:forEach>
										
									</table>
								</div>
							</div>
						</div>
					</div>

				</div> 
			</div>
		</section>
		<!-- End Blog Section -->
	</main>
	<!-- End #main -->
</form>
	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
	<!-- include sidebarScript -->
	<%@include file=".././common/user/includeV1/sidebarScript.jsp"%>
	<!-- include sidebarScript-->
<script>
	goLectureView = function(seq){
		$("#iltSeq").val(seq);
		
		$.ajax({
			async: true
			,cache: false
			,type:"POST"
			,url: "/member/watchedCheck"
			,data: {
					iltSeq: $("#iltSeq").val(),
					ifmmSeq: $("#ifmmSeq").val()				
					}
			,success : function(response) {
				if (response.rt == "fail") {
					alert("no data");
					alert(response.chapter);
					$("#ictSeq").val(response.chapter);
					$("#historyCheck").val(0);
					form.attr("action", "/index/lectureView").submit();
				} else {
					alert("yes data");
					alert(response.chapter);
					$("#ictSeq").val(response.chapter);
					$("#historyCheck").val(1);
					form.attr("action", "/index/lectureView").submit();
				}
			},
			error : function(jqXHR, status, error) {
				alert("알 수 없는 에러 [ " + error + " ]");
			}
		});
		
		return false;
		
	}
</script>
</body>
</html>
