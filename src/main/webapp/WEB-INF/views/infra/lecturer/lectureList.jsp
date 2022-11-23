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

<title>강의 목록</title>
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
		<form name="formList" id="formList">
			<!-- ======= Blog Section ======= -->
			<section id="blog" class="blog">
				<div class="container" data-aos="fade-up">
					<div class="row">
						<div class="col-lg-3">
							<div class="sidebar">
								<h3 class="sidebar-title">강의 관리 페이지</h3>
								<div class="sidebar-item categories">
									<ul>
										<li><a href="lectureList"> 강의목록 </a></li>
										<li><a href="memberList"> 수강생관리 </a></li>
										<li><a href="lecturerProfile">프로필 수정 </a></li>
									</ul>
								</div>
								<!-- End sidebar categories-->

								<!-- End sidebar recent posts-->
							</div>
							<!-- End sidebar -->
						</div>
						<!-- End blog sidebar -->
						<div class="col-lg-9">
							<div class="row" style="padding: 20px">
								<h4 style="font-weight: bold">
									<i class="fa-solid fa-id-card-clip"></i>
									강의목록
									<div style="float: right;">
										<button type="button" class="btn btn-primary" id="btnForm">+ 강의 만들기</button>
									</div>
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
												<td style="width: 4%">
													<input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input">
												</td>
												<td style="width: 22%">제목</td>
												<td style="width: 10%">가격</td>
												<td style="width: 10%">상태</td>
												<td style="width: 15%">카테고리</td>
												<td>시청인원수</td>
												<td style="width: 20%">생산일</td>
												<td style="width: 9%"></td>
											</tr>
											<c:choose>
												<c:when test="${fn:length(list) eq 0}">
													<tr>
														<td class="" colspan="7" style="text-align: center;">There is no data!</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach items="${list}" var="list" varStatus="status">
														<tr style="font-size: 13px; vertical-align: middle;">
															<td style="text-align: center; padding: 0; vertical-align: middle;">
																<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.iltSeq }"/>" class="form-check-input">
															</td>
															<td style="padding: 0;">
																<table style="table-layout: fixed; width: 100%">
																	<tr>
																		<td style="width: 3em">
																			<img src="https://cdn.class101.net/images/325b62f3-e531-425f-b9b8-e53fdadfc9b2/original" alt="" style="width: 3em" style="display:inline-block;" />
																		</td>
																		<td style="padding-left: 10px;">
																			${list.iltTitle }
																			<input type="hidden" name="iltSeq" id="iltSeq" value="${list.iltSeq }">
																		</td>
																	</tr>
																</table>
															</td>
															<td style="text-align: center;">${list.iltPrice }원</td>
															<td style="text-align: center;">
																<c:choose>
																	<c:when test="${list.iltUseNy eq 1 }">
																		<i class="fa-solid fa-circle-dot" style="color: green;"></i> 판매 중
																	</c:when>
																	<c:otherwise>
																		<i class="fa-solid fa-circle-dot" style="color: red;"></i> 판매 중지
																	</c:otherwise>
																</c:choose>
															</td>
															<td style="text-align: center;">${list.ictgItem }
																/<br> ${list.ictsItem }
															</td>
															<td style="text-align: center;">123명</td>
															<td>2021.12.26 오전 10:59</td>
															<td>
																<a href="javascript:goForm(<c:out value="${list.iltSeq }"/>)" class="text-decoration-none">작성하기</a>
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
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
		</form>
	</main>
	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	<script>
        var form = $("form[name=formList]");
        var goUrlForm = "/lecturer/lectureForm";
        var seq = $("input:hidden[name=iltSeq]");
        
        var checkboxSeqArray = [];
        
        $('#btnForm').on("click", function() {
            location.href="/lecturer/lectureForm"
        });

        goForm = function(keyValue) {
            /* if(keyValue != 0) seq.val(btoa(keyValue)); */
            seq.val(keyValue);
            form.attr("action", goUrlForm).submit();
        }
        
        /* 체크박스 check */
        $("#checkboxAll").click(function() {
            if ($("#checkboxAll").is(":checked"))
                $("input[name=checkboxSeq]").prop("checked", true);
            else
                $("input[name=checkboxSeq]").prop("checked", false);
        });
    </script>

</body>
</html>
