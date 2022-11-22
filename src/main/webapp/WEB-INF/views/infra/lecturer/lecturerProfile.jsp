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

<!-- include link -->
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
															<img id="imgProfile" src="https://w.namu.la/s/56f350b8cd75ce735908adb8a9648cedaa30d151e48318ac5854b86a26a4fe1f64f2233e98412f56c70b3cb1a9414b6842232925c63bc5ec8f6eca9b28c331c825eaff072340e4316bbd6cc4d68a1a0da9307a93f123b2e8f8a98fe02d8c8c60" class="rounded-circle mx-auto d-block" width="100" height="100" /> <br />
														</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">크리에이터 닉네임</div>
														<div class="col-md-8">생활코딩</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>크리에이터 소개&nbsp;</span> <span style="color: white; font-weight: bold; background-color: black; border-radius: 30%;">필수</span>
														</div>
														<div class="col-md-8">
															<span> 페이스북의 경우 국내 개발자 커뮤니티 중 접근성이 좋고 다양한 사람이 많이 포진되어 있다. 기본적인 설립목적이 누구나 접근하기 쉬운 코딩, 생활코딩이라는 의미처럼 취미로 하는 사람도, 회사에서 개발하고 있는 사람도 다양한 사람이 모여있다.<br /> 오픈 튜토리얼스 사이트는 일종의 강의 사이트로 외국의 codecademy, code.org와 같은 사이트지만 일반 유저가 직접 강의를 제작하여 만들 수 있다.<br /> 코딩과 네트워킹 등 소프트웨어 기술 뿐 아니라 개발자 영어, 독일어 등과 같은 외국어, 심지어 육아에 요리까지 넓은 분야의 강의가 올라온다.<br />
															</span>
														</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>연락처</span><br />
														</div>
														<div class="col-md-8">010-0000-0000</div>
													</div>
													<hr />

													<div class="row" id="rowPadding">
														<div class="col-md-4 label" id="labelCen">
															<span>채널(소셜 미디어) 계정</span><br />
														</div>
														<div class="col-md-8">
															<i class="fa-brands fa-youtube"></i>&nbsp; 생활코딩 <br /> <i class="fa-brands fa-facebook"></i>&nbsp; 생활코딩 <br />
														</div>
													</div>
													<hr />
												</div>

												<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
													<!-- Profile Edit Form -->
													<form name="form">
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
																<input name="" type="text" class="form-control" id="" value="생활코딩" />
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">
																<span>크리에이터 소개&nbsp;</span> <span style="color: white; font-weight: bold; background-color: black; border-radius: 30%;">필수</span>
															</div>
															<div class="col-md-8 col-lg-9">
																<!-- TOAST UI Editor가 들어갈 div태그 -->
																<div id="editor"></div>
																<!-- !!여기!! 에디터 내용을 받을 div태그-->
																<div id="viewer" style="background-color: white"></div>
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
																<div class="row">
																	<div class="col-3" style="padding-right: 0px">
																		<select class="form-select" id="inputGroupSelect04">
																			<option selected>채널(소셜)</option>
																			<option value="1">유튜브</option>
																			<option value="2">인스타</option>
																			<option value="3">페이스북</option>
																			<option value="4">커뮤니티</option>
																		</select>
																	</div>
																	<div class="col-3" id="noPad">
																		<input type="text" class="form-control" value="생활코딩" />
																	</div>
																	<div class="col-4" id="noPad">
																		<input type="text" class="form-control" value="https://www.youtube.com/c/%EC%83%9D%ED%99%9C%EC%BD%94%EB%94%A91" />
																	</div>
																	<div class="col-2">
																		<button class="btn btn-outline-secondary" type="button" id="plusIn" style="width: 35px">+</button>
																		<button class="btn btn-outline-secondary" type="button" id="minusIn" style="width: 35px">-</button>
																	</div>
																</div>
																<div class="row" id="rowPad">
																	<div class="col-3" style="padding-right: 0px">
																		<select class="form-select" id="inputGroupSelect04">
																			<option selected>채널(소셜)</option>
																			<option value="1">유튜브</option>
																			<option value="2">인스타</option>
																			<option value="3">페이스북</option>
																			<option value="4">커뮤니티</option>
																		</select>
																	</div>
																	<div class="col-3" id="noPad">
																		<input type="text" class="form-control" value="생활코딩" />
																	</div>
																	<div class="col-4" id="noPad">
																		<input type="text" class="form-control" value="https://www.facebook.com/groups/codingeverybody/" />
																	</div>
																	<div class="col-2">
																		<button class="btn btn-outline-secondary" type="button" id="plusIn" style="width: 35px">+</button>
																		<button class="btn btn-outline-secondary" type="button" id="minusIn" style="width: 35px">-</button>
																	</div>
																</div>
															</div>
														</div>

														<div class="text-center">
															<button type="submit" class="btn btn-primary">Save Changes</button>
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

	<script>
        let intro = '<div id="info">' + '<h2>들어가는말</h2>    <p>    생활코딩의 세계에 오신 것을 환영합니다. 생활코딩은 <strong>일반인들에게 프로그래밍을 알려주는 무료 온라인, 오프라인 수업입니다. </strong>&nbsp;어떻게 공부할 것인가를 생각해보기 전에 왜&nbsp;프로그래밍을 공부하는 이유에 대한 이유를 함께 생각해보면 좋을 것 같습니다. 아래 영상을 한번 보시죠.</p>	<p>   입문자의 가장 큰 고충은 &#39;무엇을 모르는지 모르는 상태&#39;일 겁니다.   온라인에는 프로그래밍을 익히는 데 필요한 거의 모든 정보가 있지만, 이 지식들은 게시판이나 블로그 또는 커뮤니티에 포스팅 단위로 파편화되어 있습니다.	    그래서 최소한 무엇을 검색해야 하는지를 아는 사람들을 위해서는 더 없이 좋은 공간이지만, &#39;무엇을 모르는지 모르는 상태&#39;의 입문자에게는 그림의 떡으로 남아 있습니다.     다시말해서 전문가를 더욱 전문가답게 만드는 혁신에 머물고 있는 것이죠.</p>	<p> 생활코딩은 컴퓨터와 인터넷이 존재하는 시대의 공부방법은 어때야 하는가를 찾는 작업을 꾸준히 하고 있습니다.	    정보기술이 발전하지 않았던, 낭만적인 시절에는 어떤 일을 하려고 하면 그것을 하기 위해서 필요한 거의 모든 것을 알고 있어야 했습니다. 검색할수도 없었고, 질문하기도 어려웠기 때문입니다. 한편 한번 배운 지식만으로도 평생을 살아 갈 수 있었습니다. &nbsp;</p>' + '</div>'
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
	<script>
        const viewer = toastui.Editor.factory({
            el : document.querySelector('#viewer'),
            viewer : true,
            initialValue : '<h2>들어가는말</h2>    <p>    생활코딩의 세계에 오신 것을 환영합니다. 생활코딩은 <strong>일반인들에게 프로그래밍을 알려주는 무료 온라인, 오프라인 수업입니다. </strong>&nbsp;어떻게 공부할 것인가를 생각해보기 전에 왜&nbsp;프로그래밍을 공부하는 이유에 대한 이유를 함께 생각해보면 좋을 것 같습니다. 아래 영상을 한번 보시죠.</p>	<p>   입문자의 가장 큰 고충은 &#39;무엇을 모르는지 모르는 상태&#39;일 겁니다.   온라인에는 프로그래밍을 익히는 데 필요한 거의 모든 정보가 있지만, 이 지식들은 게시판이나 블로그 또는 커뮤니티에 포스팅 단위로 파편화되어 있습니다.	    그래서 최소한 무엇을 검색해야 하는지를 아는 사람들을 위해서는 더 없이 좋은 공간이지만, &#39;무엇을 모르는지 모르는 상태&#39;의 입문자에게는 그림의 떡으로 남아 있습니다.     다시말해서 전문가를 더욱 전문가답게 만드는 혁신에 머물고 있는 것이죠.</p>	<p> 생활코딩은 컴퓨터와 인터넷이 존재하는 시대의 공부방법은 어때야 하는가를 찾는 작업을 꾸준히 하고 있습니다.	    정보기술이 발전하지 않았던, 낭만적인 시절에는 어떤 일을 하려고 하면 그것을 하기 위해서 필요한 거의 모든 것을 알고 있어야 했습니다. 검색할수도 없었고, 질문하기도 어려웠기 때문입니다. 한편 한번 배운 지식만으로도 평생을 살아 갈 수 있었습니다. &nbsp;</p>'
        });
    </script>

</body>
</html>
