<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>Blog - Eterna Bootstrap Template</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- include link lectureProfile -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->

<!-- 추가 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<!-- toast css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

<style>
#btn-upload {
	width: 150px;
	height: 30px;
	background: #fff;
	border: 1px solid rgb(77, 77, 77);
	border-radius: 10px;
	font-weight: 500;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto;
}

#file {
	display: none;
}

#preview {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
}

.rounded-circle {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	overflow: hidden;
}

#rowPadding {
	padding-top: 10px;
	padding-bottom: 10px;
}

#labelCen {
	text-align: left;
	margin: auto;
	font-weight: bold;
}

#noPad {
	padding-left: 0px;
	padding-right: 0px;
}

#rowPad {
	padding-top: 10px;
}

#editor {
	/* border : 1px solid; */
	width: 100%;
	margin: 0 auto;
}
/* !!여기!! 새로운 div태그 스타일 추가해줫습니다. */
#contents {
	width: 100%;
	height: 100px;
	margin: 30px auto;
	border: 1px solid;
}
</style>

<!-- =======================================================
  * Template Name: Eterna - v4.9.1
  * Template URL: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<main id="main">

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
						<section id="team" class="team">
							<div class="container">
								<div class="sidebar">
									<div class="card">
										<div class="card-body pt-3">
											<!-- Bordered Tabs -->
											<ul class="nav nav-tabs nav-tabs-bordered">
												<li class="nav-item">
													<button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
												</li>

												<li class="nav-item">
													<button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
												</li>
											</ul>
											<div class="tab-content pt-2">
												<div class="tab-pane fade show active profile-overview" id="profile-overview">
													<h5 class="card-title" style="font-weight: bold; padding-top: 10px">크리에이터 기본 정보</h5>

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" style="margin: auto" id="labelCen">프로필 사진</div>
														<div class="col-md-8 text-center">
															<img id="imgProfile" src="https://namu.wiki/jump/qsSNL4IcQnjBCIEEWWaKQtBZgCf1udr3dMaiMNhbF3Xkr%2BwZ1A88PU3TcxUg1Phs" class="rounded-circle mx-auto d-block" width="100" height="100" /> <br />
														</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">크리에이터 닉네임</div>
														<div class="col-md-8">${item.iftcName }</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>크리에이터 소개&nbsp;</span>
															<span style="color: white; font-weight: bold; background-color: black; border-radius: 30%;">필수</span>
														</div>
														<div class="col-md-8">${item.iftcProfile }</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>연락처</span>
															<br />
														</div>
														<div class="col-md-8">010-0000-0000</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>채널(소셜 미디어) 계정</span>
															<br />
														</div>
														<div class="col-md-8">
															<c:forEach items="${sns}" var="sns" varStatus="status">
																<a href="${sns.iftsUrl }">
																	<c:choose>
																		<c:when test="${sns.iftsType eq 1 }">
																			<i class="fa-brands fa-facebook"></i>
																		</c:when>
																		<c:when test="${sns.iftsType eq 2 }">
																			<i class="fa-brands fa-square-instagram"></i>
																		</c:when>
																		<c:when test="${sns.iftsType eq 3 }">
																			<i class="fa-brands fa-youtube"></i>
																		</c:when>
																		<c:otherwise>
																			<i class="fa-solid fa-comment"></i>
																		</c:otherwise>
																	</c:choose>
																	<span>${item.iftcName }</span>
																	<br> <br>
																</a>
															</c:forEach>
														</div>
													</div>
													<hr />
												</div>

												<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
													<!-- Profile Edit Form -->
													<form name="form" id="form">
														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">프로필 사진</div>
															<div class="col-lg-9 col-md-8 text-center">
																<img id="imgProfile" src="https://w.namu.la/s/56f350b8cd75ce735908adb8a9648cedaa30d151e48318ac5854b86a26a4fe1f64f2233e98412f56c70b3cb1a9414b6842232925c63bc5ec8f6eca9b28c331c825eaff072340e4316bbd6cc4d68a1a0da9307a93f123b2e8f8a98fe02d8c8c60" class="rounded-circle mx-auto d-block" width="100" height="100" /> <br />
																<label for="ifmmUploadedProfileImage">
																	<span id="btn-upload" style="text-align: center; margin: auto">UPLOAD</span>
																</label>
																<input class="form-control form-control-sm" id="ifmmUploadedProfileImage" name="ifmmUploadedProfileImage" type="file" multiple="multiple" style="display: none" />
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">크리에이터 닉네임</div>
															<div class="col-md-8 col-lg-9">
																<input name="" type="text" class="form-control" id="" value="${item.iftcName }" />
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">
																<span>크리에이터 소개&nbsp;</span>
																<span style="color: white; font-weight: bold; background-color: black; border-radius: 30%;">필수</span>
															</div>
															<div class="col-md-8 col-lg-9">
																<!-- TOAST UI Editor가 들어갈 div태그 -->
																<div id="editor"></div>
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">연락처</div>
															<div class="col-md-8 col-lg-9">
																<input type="text" class="form-control" value="010-0000-0000" />
															</div>
														</div>

														<div class="row mb-3" id="rowPad">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">채널(소셜 미디어) 계정</div>
															<div class="col-md-8 col-lg-9">
																<c:choose>
																	<c:when test="${item.iftcSeq eq null }">
																		<div class="row sns">
																			<select class="form-select" id="inputGroupSelect04" style="width: 40%; display: inline-block; margin-left: 13px;">
																				<option selected>채널(소셜)</option>
																				<option value="1">유튜브</option>
																				<option value="2">인스타</option>
																				<option value="3">페이스북</option>
																				<option value="4">커뮤니티</option>
																			</select>
																			<input type="text" class="form-control innerValue" style="width: 40%; display: inline-block;" placeholder="생활코딩" />
																			<button class="btn btn-outline-secondary" type="button" id="plusIn" style="width: 8%; display: inline-block;" onclick="addRow(this)">+</button>
																			<button class="btn btn-outline-secondary" type="button" id="minusIn" style="width: 8%; display: inline-block;" onClick="delRow(this)">-</button>
																			<input type="text" class="form-control innerValue" style="width: 96%; display: inline-block; margin-left: 13px; margin-bottom: 20px;" placeholder="주소" value="" />
																		</div>
																	</c:when>
																	<c:otherwise>
																		<c:forEach items="${sns}" var="sns" varStatus="status">
																			<div class="row sns">
																				<select class="form-select" id="inputGroupSelect04" style="width: 40%; display: inline-block; margin-left: 13px;">
																					<option selected>채널(소셜)</option>
																					<option value="1" <c:if test="${sns.iftsType eq 1 }">selected</c:if>>페이스북</option>
																					<option value="2" <c:if test="${sns.iftsType eq 2 }">selected</c:if>>인스타</option>
																					<option value="3" <c:if test="${sns.iftsType eq 3 }">selected</c:if>>유튜브</option>
																					<option value="4" <c:if test="${sns.iftsType eq 4 }">selected</c:if>>커뮤니티</option>
																				</select>
																				<input type="text" class="form-control innerValue" style="width: 40%; display: inline-block;" value="${item.iftcName }" />
																				<button class="btn btn-outline-secondary" type="button" id="plusIn" style="width: 8%; display: inline-block;" onclick="addRow(this)">+</button>
																				<button class="btn btn-outline-secondary" type="button" id="minusIn" style="width: 8%; display: inline-block;" onClick="delRow(this)">-</button>
																				<input type="text" class="form-control innerValue" style="width: 96%; display: inline-block; margin-left: 13px; margin-bottom: 20px;" value="${sns.iftsUrl }" />
																			</div>
																		</c:forEach>
																	</c:otherwise>
																</c:choose>
															</div>
														</div>
														<div class="text-center">
															<button type="button" class="btn btn-primary" onclick="btn()">Save Changes</button>
														</div>
													</form>
													<!-- End Profile Edit Form -->
												</div>
											</div>
											<!-- End Bordered Tabs -->
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- End Team Section -->
					</div>
				</div>
			</div>
		</section>
		<!-- End Blog Section -->
	</main>
	<!-- End #main -->

	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	<!-- toast javascript -->
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	
	<script type="text/javascript">
	function btn(){
	    console.log();
	}
	</script>
	<script type="text/javascript">
	// 채널 계정 추가
	const addRow = (target) => {
        const row = target.parentNode; // 부모 요소 선택
        const cloneNode = row.cloneNode(true); // 부모 요소 복사

        // 안에있는 input 값 초기화
        cloneNode.querySelectorAll('.innerValue').forEach((header) => {
            header.value = '';
        });

        // row 추가
        row.after(cloneNode);
    };

    /**
     * 행 삭제 함수
     */
    const delRow = (target) => {
        const delTarget = target.parentNode; // 부모 요소 선택
        delTarget.remove(); // 자식 요소까지 전체 삭제
    };
	</script>

	<script>
        let intro = '${item.iftcProfile }'
        const editor = new toastui.Editor({
            el : document.querySelector('#editor'),
            previewStyle : 'vertical',
            height : '500px',
            initialEditType : 'wysiwyg',
            initialValue : intro
        });

        // !!여기!! editor.getHtml()을 사용해서 에디터 내용 받아오기
        console.log(editor.getHTML());
    </script>

</body>
</html>
