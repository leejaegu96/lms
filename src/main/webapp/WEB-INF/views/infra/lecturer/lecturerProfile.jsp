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
															<c:choose>
																<c:when test="${fn:length(image) eq 0 }">
																	<img id="imgProfile1" src="/resources/assets/images/faces/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
																</c:when>
																<c:otherwise>
																	<c:forEach items="${image}" var="image" varStatus="statusUploaded">
																		<c:if test="${image.type eq '1' }">
																			<img id="imgProfile1" src="<c:out value="${image.path }"/><c:out value="${image.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
																		</c:if>
																	</c:forEach>
																</c:otherwise>
															</c:choose>
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
														<div class="col-md-8">${item.iftcMobile }</div>
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
													<!-- Profile Edit Form --------------------------------------------------------------------------------------------------------- -->
													<form name="form" id="form" method="post" enctype="multipart/form-data">
														<div class="row mb-3">
															<input type="hidden" name="sessSeq" value="${sessSeq}" />
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">프로필 사진</div>
															<div class="col-lg-9 col-md-8 text-center">
																<c:choose>
																	<c:when test="${fn:length(image) eq 0 }">
																		<img id="imgProfile" src="/resources/assets/images/faces/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
																	</c:when>
																	<c:otherwise>
																		<c:forEach items="${image}" var="image" varStatus="statusUploaded">
																			<c:if test="${image.type eq '1' }">
																				<img id="imgProfile" src="<c:out value="${image.path }"/><c:out value="${image.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
																			</c:if>
																		</c:forEach>
																	</c:otherwise>
																</c:choose>
																<br>
																<label for="uploadedProfileImage">
																	<span id="btn-upload" style="text-align: center; margin: auto">UPLOAD</span>
																</label>
																<input class="form-control form-control-sm" id="uploadedProfileImage" name="uploadedProfileImage" type="file" multiple="multiple" style="display: none;" onChange="upload('uploadedProfileImage', 0, 1, 1, 0, 0, 3);">
															</div>
														</div>

														<div class="row mb-3">
															<div class="col-md-4 col-lg-3 col-form-label" id="labelCen">크리에이터 닉네임</div>
															<div class="col-md-8 col-lg-9">
																<input name="iftcName" type="text" class="form-control" id="" value="${item.iftcName }" />
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
																<input type="text" name="iftcMobile" class="form-control" value="${item.iftcMobile }" />
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
															<button type="button" class="btn btn-primary" onclick="onSubmit()">Save Changes</button>
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
	<script type="text/javascript">
	var goUrlUpdt = "/lecturer/updateTeacherUploaded";
	var form = $("form[name = form]");
	
	function onSubmit(){
	    $.ajax({
				url:'./teacherUpdt',
				type:'post',
				data:{
					iftcName: $("input[name=iftcName]").val()
					,iftcSeq: $("input[name=sessSeq]").val()
					,iftcMobile: $("input[name=iftcMobile]").val()
					,iftcProfile: editor.getHTML()
				},
				success:(res) => {
				if (res.rt == "success") {
					// 업로드 성공
					const goUrlForm = "/lecturer/lecturerProfile"
					$("form[name=form]").attr("action", goUrlForm).submit();
					
				} else {
					alert("업로드 실패!!");
				}
				},
				error:(jqXHR) => {
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	    // 이미지 업로드
	    form.attr("action", goUrlUpdt).submit();
    }
    </script>
	<script type="text/javascript">
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		lecturerImage: 2
//		teacherProfileImage: 3
		
		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
		const MAX_TOTAL_FILE_NUMBER = 5;
		
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

		// 문서관련
		var extArray2 = new Array();
		extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		// 이하는 커스텀
		var extArray3 = new Array();
		extArray3 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray4 = new Array();
		extArray4 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray5 = new Array();
		extArray5 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray6 = new Array();
		extArray6 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray7 = new Array();
		extArray7 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray8 = new Array();
		extArray8 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		var extArray9 = new Array();
		extArray9 = ["jpg","gif","png","jpeg","bmp","tif","txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];

		
		var totalFileSize = 0;
		var obj = $("#" + objName +"")[0].files;	
		var fileCount = obj.length;
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
			if(allowedMaxTotalFileNumber < fileCount){
				alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//				$("#file"+seq).val("");
//				obj.val("");
				return false;
			}
		}


		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {
				alert("허용된 확장자가 아닙니다.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
				$("#file"+seq).val("");
				return false;
			}
		}
		
		if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }

		for (var i = 0 ; i < fileCount ; i++) {
			if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
			totalFileSize += $("#" + objName +"")[0].files[i].size;
		}
		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {

			for (var i = 0 ; i < fileCount ; i++) {
				
	 			var divImage = "";
	 			divImage += '<div style="display: inline-block; height: 95px;">';
				/* divImage += '	<img src="/resources/common/image/default_111.jpg" class="rounded" width= "85px" height="85px">'; */
				divImage += '	<img id="aaa'+i+'" src="" class="rounded" width= "85px" height="85px">';
				divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red;">X</span></div>';
				divImage += '</div> ';
				
				$("#ifmmUploadedImage1View").append(divImage);
				
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[i]);
				alert($("#" + objName +"")[0].files[i]);
				 fileReader.onload = function () {
				 /* alert(i + " : " + fileReader.result); */
				 alert($("#aaa"+i+""));
				 
				 if(i == 0) {
					 $("#aaa0").attr("src", fileReader.result);		/* #-> */
				 } else if (i == 1) {
					 $("#aaa0").attr("src", fileReader.result);		/* #-> */
				 } else {
					 
				 }
					 /* $("#aaa"+i+"").attr("src", fileReader.result);	 */	/* #-> */
					 /* $("#aaa1").attr("src", fileReader.result); */		/* #-> */ 
				 }
			}			
 			
		} else if(uiType == 2) {
			$("#ulFile" + seq).children().remove();
			
			for (var i = 0 ; i < fileCount ; i++) {
				addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			
			 fileReader.onload = function () {
				 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
			 }
		}else {
			return false;
		}
		return false;
	}
	</script>


</body>
</html>
