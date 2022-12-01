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

.wrap {
	padding: 10px;
}

.btn_open {
	font-weight: bold;
	margin: 5px;
	padding: 4px 6px;
	background: #000;
	color: #fff;
}

.pop_wrap {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .5);
	font-size: 0;
	text-align: center;
}

.pop_wrap:after {
	display: inline-block;
	height: 100%;
	vertical-align: middle;
	content: '';
}

.pop_wrap .pop_inner {
	display: inline-block;
	padding: 20px 30px;
	background: #fff;
	width: 600px;
	vertical-align: middle;
	font-size: 15px;
}
</style>
</head>

<body>
	<form method="post" name="form">
		<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="${sessSeq }" />
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
									<i class="fa-solid fa-print"></i> 수료증 출력
								</h4>
							</div>
							<div class="sidebar">
								<div class="card">
									<div class="card-body pt-3">
										<div>
											<input class="inputx" type="text" placeholder="강의 이름을 입력해보세요 " style="width: 100%; background-color: #f2f4f5; border-color: #f2f4f5">
											<img class="imgx1" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
										</div>

										<table class="table border" style="table-layout: fixed;">
											<tr id="tr1">
												<td style="width: 5%">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												<td style="width: 40%">제목</td>
												<td style="width: 15%">강사명</td>
												<td style="width: 20%">진도율</td>
												<td style="width: 20%">기타</td>
											</tr>
											<tr style="font-size: 13px; vertical-align: middle;">
												<td style="text-align: center; padding: 0; vertical-align: middle;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												<td style="padding: 0;">
													<table style="table-layout: fixed; width: 100%">
														<tr>
															<td style="width: 3em">
																<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" style="width: 3em" style="display:inline-block;" />
															</td>
															<td style="padding-left: 10px;">권도수의 [목,어깨 집중 프로젝트] : 망가진 자세로 하루를 보내는 나를 위한 셀프 관리</td>
														</tr>
													</table>
												</td>
												<td style="text-align: center;">권도수</td>
												<td style="text-align: center;">
													<div class="pie-chart pie-chart1">
														<span class="center">80%</span>
													</div>
												</td>
												<td style="text-align: center;">
													<span id="printBtn">수료증 출력</span>
												</td>
											</tr>
											<tr style="font-size: 13px; vertical-align: middle;">
												<td style="text-align: center; padding: 0; vertical-align: middle;">
													<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
												</td>
												<td style="padding: 0;">
													<table style="table-layout: fixed; width: 100%">
														<tr>
															<td style="width: 3em">
																<img src="https://cdn.class101.net/images/37d8a757-0f38-4424-a58f-b71444a712f8/960xauto.webp" alt="" style="width: 3em" style="display:inline-block;" />
															</td>
															<td style="padding-left: 10px;">아이패드 하나로 기록하는 키츠의 아날로그 텍스처 일상</td>
														</tr>
													</table>
												</td>
												<td style="text-align: center;">키츠</td>
												<td style="text-align: center;">
													<div class="pie-chart pie-chart2">
														<span class="center">50%</span>
													</div>
												</td>
												<td style="text-align: center;">
													<span id="printBtn"><a style="color:black;" onclick="showPopup()">수료증 출력</a></span>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>

						<!-- End sidebar -->
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
	<script type="text/javascript">
        function printing() {
            var popupWindow = window.open("", "_blank");
            popupWindow.document.write('<head>');
            popupWindow.document.write('<link href="/resources/main.css" type="text/css" rel="stylesheet">');
            popupWindow.document.write('</head>');
            popupWindow.document.write('<body>');
            popupWindow.document.write('<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" style="width: 3em" style="display:inline-block;" />');
            popupWindow.document.write('</body>');
            popupWindow.document.close();
            setTimeout(function() {
                popupWindow.print();
            }, 500);

        }
    </script>
    <script type="text/javascript">
    var form = $("form[name=form]");
    var goPrintForm = "/member/printPreview";
    var ifmmSeq = $("input:hidden[name=ifmmSeq]");

    goPrint = function(keyValue) {
        /* if(keyValue != 0) seq.val(btoa(keyValue)); */
        ifmmSeq.val(keyValue);
        form.attr("action", goPrintForm).submit();
    }
    </script>
    <script type="text/javascript">
    function showPopup(){
        window.open("printPreview","팝업 테스트","width=980, height=720, top=10, left=10");
    }
    </script>
</body>
</html>
