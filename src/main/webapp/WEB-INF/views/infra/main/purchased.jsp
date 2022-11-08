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

<title> 구매 완료 </title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- include link -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->
<style>
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

.containersize {
	max-width: 100%;
	width: 50%;
	margin-left: auto;
	margin-right: auto;
}

.btncss {
	border: 1px solid #a6a39d;
	font-size: 18px;
	font-weight: 700;
	border-radius: 4px;
	line-height: 5px;
	padding: 20px;
	background-color: #da715d;
	color: #75736f;
}

.trcss {
	color: #595751;
	font-weight: 600;
}
</style>
</head>

<body>
<form method="post" name="form">
<input type="hidden" name="ifmmSeq" id="ifmmSeq" value="${sessSeq }"/>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<!-- ======= Hero Section ======= -->
	<!-- End Hero -->
	<!-- End Header -->
	<main id="main">

		<section id="services" class="services">
			<div class="container containersize">
				<div class="row" style="padding-top: 100px;">
					<p style="text-align: center; font-size: 20px;">
						결제가 완료되었습니다. <br> 결제내역은 마이페이지에서 조회 가능합니다.
					</p>

					<table class="table border">
						<tr>
							<td class="trcss">주문번호</td>
							<td>
								${orderResult.iodNumber }  
							</td>
						</tr>

						<tr>
							<td class="trcss">결제금액</td>
							<td>
								<fmt:formatNumber value="${orderResult.iodTotalPrice }" pattern="#,###"/> <span>원 </span>
							</td>
						</tr>

						<tr>
							<td class="trcss">결제수단</td>
							<td>신용카드</td>
						</tr>

						<tr>
							<td class="trcss">결제일시</td>
							<td> <fmt:formatDate value="${orderResult.iodPayDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						</tr>
					</table>

					<table class="table border" style="table-layout: fixed;">
						<tr id="tr1">
							<td style="width: 30%">제목</td>
							<td style="width: 15%">상품군</td>
							<td style="width: 10%">카테고리</td>

						</tr>
						
						<c:forEach var="detailList" items="${detailList }" varStatus="status"> 
						<tr style="font-size: 13px; vertical-align: middle;">
							<td style="padding: 0;">
								<table style="table-layout: fixed; width: 100%">
									<tr>
										<td style="width: 3em">
											<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" style="width: 3em" style="display:inline-block;" />
										</td>
										<td style="padding-left: 10px;"> ${detailList.iltTitle }</td>
									</tr>
								</table>
							</td>
							<td style="text-align: center;">원포인트 클래스</td>
							<td style="text-align: center;">생활/건강</td>
						</tr>
						</c:forEach>
						
					</table>

					<div style="text-align: center;">
						<button class="btncss" style="color: white;">주문서로</button>
						<button class="btncss" style="background-color: white;">마이페이지</button>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
</form>
</body>
</html>
