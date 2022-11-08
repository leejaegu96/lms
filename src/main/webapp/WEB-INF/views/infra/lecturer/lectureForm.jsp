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

<!-- bootstrap -->
<!-- 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
 -->
<!-- toast css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

</head>

<body onload="fnCateInit();">
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
					<!-- End sidebar -->
					<div class="col-lg-9">
						<div class="sidebar">
							<div class="row mb-3">
								<div class="col-6" style="float: left;">
									<span style="font-size: 25px; font-weight: bold;">강의등록</span> &nbsp;
								</div>
								<div class="col-6">
									<button class="btn btn-secondary" style="float: right;">이전으로</button>
									<button class="btn btn-primary" style="float: right;">저장하기</button>
								</div>
							</div>
							<div class="row mb-3">
								<label for="cate1" class="col-2 col-form-label" style="text-align: center;">카테고리</label>
								<div class="col-10">
									<form name="fcate" method="post">
										<div class="row">
											<div class="col-6">
												<span name="cate1" id="cate1"></span>
											</div>
											<div class="col-6">
												<span id="cate2"><Select class="form-select" name='cate2'>
														<option style="text-align: center;" value=''>=소분류=</option>
													</select></span>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- 강의제목 -->
							<div class="row mb-3">
								<label for="title" class="col-2 col-form-label" style="text-align: center;">강의제목</label>
								<div class="col-10">
									<input name="title" type="text" class="form-control" id="title" value="">
								</div>
							</div>
							<!-- 대표이미지 -->
							<div class="row mb-3">
								<label for="title" class="col-2 col-form-label" style="text-align: center;">대표이미지</label>
								<div class="col-10">
									<input type="file" name="" type="text" class="form-control" id="" value="">
								</div>
							</div>
							<!-- 강의상세 -->
							<div class="row mb-3">
								<label for="about" class="col-2 col-form-label" style="text-align: center;">강의상세</label>
								<div class="col-10">
									<div id="editor"></div>
								</div>
							</div>
							<!-- 챕터 -->
							<div class="row mb-3">
								<label for="chapter" class="col-2 col-form-label" style="text-align: center;">챕터</label>
								<div class="col-10" id="bChapter">
									<div class="sidebar">
										<div class="row">
											<div class="row">
												<label class="col-2 col-form-label">대제목</label>
												<div class="col-10">
													<input type="text" class="form-control" placeholder="대제목" name="bTitle">
												</div>
											</div>
											<div class="row" style="padding-top: 10px;" id="sChapter">
												<label class="col-2 col-form-label">소제목</label>
												<div class="col-9" style="padding-right: 0px;">
													<input type="text" placeholder="소제목" class="form-control">
													<input type="text" placeholder="주소" class="form-control">
												</div>
												<div class="col-1" style="padding: 0px 0px;">
													<button type="button" id="btnPlus" class="btn btn-primary" onclick="addSChapter()">
														<i class="fa-solid fa-plus"></i>
													</button>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div>
									<button style="width: 100%" type="button" id="btnPlus" class="btn btn-primary" onclick="addBChapter()">
										<i class="fa-solid fa-plus"></i> 챕터 추가하기
									</button>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- End blog sidebar -->
			</div>




		</section>
		<!-- End Blog Section -->
	</main>
	<!-- End #main -->


	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

	<!-- toast javascript -->
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>


	<script type="text/javascript">
		var count_SmallChapter = 0;
		function addSChapter() {
			var listHTML = "";
			listHTML += '';
			listHTML += '<div class="row" id="chapterSDelete'+ count_SmallChapter +'">';
			listHTML += '<label class="col-2 col-form-label">소제목</label>';
			listHTML += '<div class="col-9" style="padding-right:0px;">';
			listHTML += '<input type="text" placeholder="소제목" class="form-control">';
			listHTML += '<input type="text" placeholder="주소" class="form-control">';
			listHTML += '</div>';
			listHTML += '<div class="col-1" style="padding: 0px 0px;">';
			listHTML += '<button type="button" class="btn btn-primary" onclick="remove(chapterSDelete'
					+ count_SmallChapter + ')">';
			listHTML += '<i class="fa-solid fa-minus"></i>';
			listHTML += '</button>';
			listHTML += '</div>';
			listHTML += '</div>';

			count_SmallChapter += 1;

			$("#sChapter").append(listHTML);
		}
		function remove(id) {

			$(id).remove();
		}
	</script>
	<script type="text/javascript">
		var count_BigChapter = 0;
		function addBChapter() {
			var listHTML = "";
			listHTML += '';
			listHTML += '<div class="sidebar" id="chapterBDelete'+ count_BigChapter +'">';
			listHTML += '<div class="row" >';
			listHTML += '<div class="row">';
			listHTML += '<label class="col-2 col-form-label" >대제목</label>';
			listHTML += '<div class="col-9" style="padding-right: 0px;">';
			listHTML += '<input type="text" class="form-control" placeholder="대제목"  name="bTitle" >';
			listHTML += '</div>';
			listHTML += '<div class="col-1" style="padding: 0px 0px;">';
			listHTML += '<button type="button" id="btnPlus" class="btn btn-danger" onclick="remove(chapterBDelete'
					+ count_BigChapter + ')">';
			listHTML += '<i class="fa-solid fa-minus"></i>';
			listHTML += '</button>';
			listHTML += '</div>';
			listHTML += '</div>';
			listHTML += '<div class="row" style="padding-top:10px;" id="ssChapter">';
			listHTML += '<label class="col-2 col-form-label">소제목</label>';
			listHTML += '<div class="col-9" style="padding-right:0px;">';
			listHTML += '<input type="text" placeholder="소제목" class="form-control">';
			listHTML += '<input type="text" placeholder="주소" class="form-control">';
			listHTML += '</div>';
			listHTML += '<div class="col-1" style="padding: 0px 0px;">';
			listHTML += '<button type="button" class="btn btn-primary" onclick="addSsChapter()">';
			listHTML += '<i class="fa-solid fa-plus"></i>';
			listHTML += '</button>';
			listHTML += '</div>';
			listHTML += '</div>';
			listHTML += '</div>';
			listHTML += '</div>';

			count_BigChapter += 1;

			$("#bChapter").append(listHTML);
		}
		function addSsChapter() {
			var listHTML = "";
			listHTML += '';
			listHTML += '<div class="row" id="chapterSDelete'+ count_SmallChapter +'">';
			listHTML += '<label class="col-2 col-form-label">소제목</label>';
			listHTML += '<div class="col-9" style="padding-right:0px;">';
			listHTML += '<input type="text" placeholder="소제목" class="form-control">';
			listHTML += '<input type="text" placeholder="주소" class="form-control">';
			listHTML += '</div>';
			listHTML += '<div class="col-1" style="padding: 0px 0px;">';
			listHTML += '<button type="button" class="btn btn-primary" onclick="remove(chapterSDelete'
					+ count_SmallChapter + ')">';
			listHTML += '<i class="fa-solid fa-minus"></i>';
			listHTML += '</button>';
			listHTML += '</div>';
			listHTML += '</div>';

			count_SmallChapter += 1;

			$("#ssChapter").append(listHTML);
		}

		function remove(id) {

			$(id).remove();
		}
	</script>



	<script>
		var arrBig = new Array();
		arrBig[0] = "";
		arrBig[1] = "프로그래밍";
		arrBig[2] = "데이터사이언스";
		arrBig[3] = "라이프스타일";

		var arrMid_0 = new Array(); // var arrMid_0  = new Array("");
		arrMid_0[0] = "";

		var arrMid_1 = new Array(); // var arrMid_1 = new Array("","라비타","그랜저 XG","스텔라");
		arrMid_1[0] = "";
		arrMid_1[1] = "IT교양";
		arrMid_1[2] = "프로그래밍언어";
		arrMid_1[3] = "Web 프론트엔드";
		arrMid_1[4] = "백엔드";
		arrMid_1[5] = "App";
		arrMid_1[6] = "게임";
		arrMid_1[7] = "보안 네트워크";
		arrMid_1[8] = "시스템 DevOpx";

		var arrMid_2 = new Array(); // var arrMid_2 = new Array("","SM5");
		arrMid_2[0] = "";
		arrMid_2[1] = "데이터분석";
		arrMid_2[2] = "AI 인공지능";
		arrMid_2[3] = "딥러닝 머신러닝";

		var arrMid_3 = new Array(); // var arrMid_3 = new Array("","카렌스 II","옵티마");
		arrMid_3[0] = "";
		arrMid_3[1] = "뷰티";
		arrMid_3[2] = "영상";
		arrMid_3[3] = "심리";
		arrMid_3[4] = "타로 사주 운세";
		arrMid_3[5] = "게임 e스포츠";
		arrMid_3[6] = "라이프 해킹";
		arrMid_3[7] = "댄스 무용";
		arrMid_3[8] = "반려동물";
		arrMid_3[9] = "인문학";
		arrMid_3[10] = "더 새로운 라이프";

		/* 
		var arrSml_0 = new Array("");
		arrSml_0[0] = "";
		 
		var arrSml_1_1 = new Array("");    // 라비타
		arrSml_1_1[0] = "";
		arrSml_1_1[1] = "1.5 DOHC 가솔린 TR";
		arrSml_1_1[2] = "1.8 DOHC 가솔린 CR";
		 
		var arrSml_1_2 = new Array("");    // 그랜저 XG
		arrSml_1_2[0] = "";
		arrSml_1_2[1] = "Q20";
		arrSml_1_2[2] = "Q30";
		arrSml_1_2[3] = "Q40";
		 
		var arrSml_1_3 = new Array("");    // 스텔라
		arrSml_1_3[0] = "";
		arrSml_1_3[1] = "미등록";
		 
		var arrSml_2_1 = new Array("");    // SM5
		arrSml_2_1[0] = "";
		arrSml_2_1[1] = "SM525V";
		arrSml_2_1[2] = "SM520SE";
		 
		var arrSml_3_1 = new Array("");    // 카렌스 II
		arrSml_3_1[0] = "";
		arrSml_3_1[1] = "미등록";
		 
		var arrSml_3_2 = new Array("");    // 옵티마
		arrSml_3_2[0] = "";
		arrSml_3_2[1] = "opt200";
		 */

		function fnCateInit() {
			var arr1 = new Array();
			arr1[0] = "<option style='text-align:center;' value=''>=대분류=</option>";
			for (i = 1; i < arrBig.length; i++) {
				arr1[i] = "<option value='"+ arrBig[i] +"'>" + arrBig[i]
						+ "</option>";
			}

			cate1.innerHTML = "<select class='form-select' name='cate1' onchange='fnCate2Chg()'>"
					+ arr1.join() + "</select>";
		}

		function fnCate2Chg() {
			var arr2 = new Array();
			var arr3 = new Array();
			var gap = document.fcate.cate1.options[document.fcate.cate1.selectedIndex].value;
			if (gap != "") {
				for (var i = 1; i < arrBig.length; i++) {
					if (gap == arrBig[i]) {
						bigNum = i;
						break;
					}
				}
				arrMid = eval("arrMid_" + bigNum);
				for (var i = 1; i < arrMid.length; i++) {
					arr2[i] = "<option value='"+ arrMid[i] +"'>" + arrMid[i]
							+ "</option>";
				}
				cate2.innerHTML = "<select class='form-select' name='cate2' >"
						+ arr2.join() + "</select>";

				arrSml = eval("arrSml_" + bigNum + "_1");
				for (var i = 1; i < arrSml.length; i++) {
					arr3[i] = "<option value='"+ arrSml[i] +"'>" + arrSml[i]
							+ "</option>";

				}
				cate3.innerHTML = "<select class='form-select' name='cate3'>"
						+ arr3.join() + "</select>";
			} else {
			}
		}
		/* 
		function fnCate3Chg() {
		    var arr2 = new Array();
		    var arr3 = new Array();
		    var gap1 = document.fcate.cate1.options[document.fcate.cate1.selectedIndex].value;
		    var gap2 = document.fcate.cate2.options[document.fcate.cate2.selectedIndex].value;
		    if (gap1 != "") {
		        for (var i=1;i<arrBig.length;i++) {
		            if (gap1 == arrBig[i]) {
		                bigNum = i;
		                break;
		            }            
		        }
		        arrMid = eval("arrMid_" + bigNum);
		        for (var i=1;i<arrMid.length;i++) {
		            if (gap2 == arrMid[i]) {
		                arr2[i] = "<option value='"+ arrMid[i] +"' selected>"+ arrMid[i] +"</option>";
		            } else {
		                arr2[i] = "<option value='"+ arrMid[i] +"'>"+ arrMid[i] +"</option>";                
		            }
		        }
		        cate2.innerHTML = "<select name='cate2' onchange='fnCate3Chg()'>"+ arr2.join() +"</select>";
		 
		        for (var i=1;i<arrMid.length;i++) {
		            if (gap2 == arrMid[i]) {
		                midNum = i;
		                break;
		            }
		        }
		        arrSml = eval("arrSml_" + bigNum + "_" + midNum);
		 
		        for (var i=1;i<arrSml.length;i++) {
		                arr3[i] = "<option value='"+ arrSml[i] +"'>"+ arrSml[i] +"</option>";
		        }
		 
		        cate3.innerHTML = "<select name='cate3'>"+ arr3.join() +"</select>";
		//        alert(cate3.innerHTML);
		    } else {
		        
		        cate2.innerHTML = "<select name='cate2' ><option value=''>=모델명=</option></select>";
		        cate3.innerHTML = "<select name='cate3' ><option value=''>=등급명=</option></select>";
		    }
		 
		}
		 */
	</script>
	<script>
		let intro = '<div id="info">'
				+ '<h2>들어가는말</h2>    <p>    생활코딩의 세계에 오신 것을 환영합니다. 생활코딩은 <strong>일반인들에게 프로그래밍을 알려주는 무료 온라인, 오프라인 수업입니다. </strong>&nbsp;어떻게 공부할 것인가를 생각해보기 전에 왜&nbsp;프로그래밍을 공부하는 이유에 대한 이유를 함께 생각해보면 좋을 것 같습니다. 아래 영상을 한번 보시죠.</p>	<p>   입문자의 가장 큰 고충은 &#39;무엇을 모르는지 모르는 상태&#39;일 겁니다.   온라인에는 프로그래밍을 익히는 데 필요한 거의 모든 정보가 있지만, 이 지식들은 게시판이나 블로그 또는 커뮤니티에 포스팅 단위로 파편화되어 있습니다.	    그래서 최소한 무엇을 검색해야 하는지를 아는 사람들을 위해서는 더 없이 좋은 공간이지만, &#39;무엇을 모르는지 모르는 상태&#39;의 입문자에게는 그림의 떡으로 남아 있습니다.     다시말해서 전문가를 더욱 전문가답게 만드는 혁신에 머물고 있는 것이죠.</p>	<p> 생활코딩은 컴퓨터와 인터넷이 존재하는 시대의 공부방법은 어때야 하는가를 찾는 작업을 꾸준히 하고 있습니다.	    정보기술이 발전하지 않았던, 낭만적인 시절에는 어떤 일을 하려고 하면 그것을 하기 위해서 필요한 거의 모든 것을 알고 있어야 했습니다. 검색할수도 없었고, 질문하기도 어려웠기 때문입니다. 한편 한번 배운 지식만으로도 평생을 살아 갈 수 있었습니다. &nbsp;</p>'
				+ '</div>'
		
		const editor = new toastui.Editor({
			el : document.querySelector('#editor'),
			previewStyle : 'vertical',
			height : '500px',
			initialEditType : 'wysiwyg',
			initialValue : intro,
			hooks : {
				addImageBlobHook: (blob, callback) => {
					const url = window.URL.createObjectURL(blob);
					callback(url, 'image');
				}
			}
			
		});

		// !!여기!! editor.getHtml()을 사용해서 에디터 내용 받아오기
		console.log(editor.getHTML());
		
		
	</script>

</body>
</html>
