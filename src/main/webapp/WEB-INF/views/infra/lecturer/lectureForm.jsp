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
					<!-- End sidebar -->
					<div class="col-lg-9">
						<form name="form" id="form">
							<div class="sidebar">
								<div class="row mb-3">
									<div class="col-6" style="float: left;">
										<span style="font-size: 25px; font-weight: bold;">강의등록</span> &nbsp;
									</div>
									<div class="col-6">
										<button class="btn btn-secondary" style="float: right;">이전으로</button>
										<button type="button" onclick="btn()" class="btn btn-primary" style="float: right;">저장하기</button>
									</div>
								</div>
								<br>
								<div class="row mb-3">
									<label for="cate1" class="col-2 col-form-label" style="text-align: center;">카테고리</label>
									<div class="col-10">
										<div class="row">
											<div class="col-6">
												<select class="form-select" name="ictgItem">
													<option value="">전체</option>
												</select>
											</div>
											<div class="col-6">
												<select class="form-select" name="ictsItem">
													<option value="">전체</option>
												</select>
											</div>
										</div>

									</div>
								</div>
								<!-- 강의제목 -->
								<div class="row mb-3">
									<label for="title" class="col-2 col-form-label" style="text-align: center;">강의제목</label>
									<div class="col-10">
										<input name="title" type="text" class="form-control" id="iltTitle" value="${item.iltTitle }">
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
									<c:choose>
										<c:when test="${item.iltSeq eq null }">
											<div class="col-10" id="bChapter">
												<div class="chapter-items">
													<div class="row">
														<div class="row">
															<label class="col-2 col-form-label">대제목</label>
															<div class="col-10">
																<input type="text" class="form-control" placeholder="대제목"">
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
										</c:when>
										<c:otherwise>
											<c:forEach items="${chapter}" var="chapter" varStatus="status">
												<div class="col-10" id="bChapter">
													<div class="chapter-items">
														<div class="row">
															<div class="row">
																<label class="col-2 col-form-label">대제목</label>
																<div class="col-10">
																	<input type="text" class="form-control" placeholder="대제목">
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
											</c:forEach>
										</c:otherwise>
									</c:choose>

									<div>
										<button style="width: 100%" type="button" id="btnPlus" class="btn btn-primary" onclick="addBChapter()">
											<i class="fa-solid fa-plus"></i> 챕터 추가하기
										</button>
									</div>
								</div>

							</div>
						</form>
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
	$(document).ready(function() {
	    //Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.
	    
	    //****************이부분은 DB로 셋팅하세요.
	    //Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
	    var mainCategoryArray = new Array();
	    var mainCategoryObject = new Object();
	    
	    <c:forEach items="${big}" var="big" varStatus="status">
		    mainCategoryObject = new Object();
		    mainCategoryObject.main_category_id = "${big.ictgItem}";
		    mainCategoryObject.main_category_name = "${big.ictgItem}";
		    mainCategoryArray.push(mainCategoryObject);
	    </c:forEach>
	    //Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
	    var subCategoryArray = new Array();
	    var subCategoryObject = new Object();
	    
	    //스포츠에 해당하는 sub category 리스트
	    
	    <c:forEach items="${small}" var="small" varStatus="status">
		    subCategoryObject = new Object();
		    subCategoryObject.main_category_id = "${small.ictgItem}";
		    subCategoryObject.sub_category_id = "${small.ictsItem}"
		    subCategoryObject.sub_category_name = "${small.ictsItem}"    
		    subCategoryArray.push(subCategoryObject);
	    </c:forEach>
	    
	    //메인 카테고리 셋팅
	    var mainCategorySelectBox = $("select[name='ictgItem']");
	    var select = ""
	    for(var i=0;i<mainCategoryArray.length;i++){
	        if(mainCategoryArray[i].main_category_name == "${item.ictgItem}"){
	            mainCategorySelectBox.append("<option name='ictgItem' value='"+mainCategoryArray[i].main_category_id+"' selected>"+mainCategoryArray[i].main_category_name+"</option>");
	        } else{
	            mainCategorySelectBox.append("<option name='ictgItem' value='"+mainCategoryArray[i].main_category_id+"'>"+mainCategoryArray[i].main_category_name+"</option>");
	        }
	    }
	    
	    var subCategorySelectBox = $("select[name='ictsItem']");
        subCategorySelectBox.children().remove(); //기존 리스트 삭제
        
        //선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
        $("option:selected", this).each(function(){
            var selectValue = $(this).val(); //main category 에서 선택한 값
            subCategorySelectBox.append("<option value=''>전체</option>");
            for(var i=0;i<subCategoryArray.length;i++){
                if(selectValue == subCategoryArray[i].main_category_id){
                    if(subCategoryArray[i].sub_category_name == "${item.ictsItem}"){
                        subCategorySelectBox.append("<option name='ictsItem' value='"+subCategoryArray[i].sub_category_id+"' selected>"+subCategoryArray[i].sub_category_name+"</option>");
                    }else{
	                    subCategorySelectBox.append("<option name='ictsItem' value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
                    }
                    
                }
            }
        });
	    
	    
	    //*********** 1depth카테고리 선택 후 2depth 생성 START ***********
	    
	    $(document).on("change","select[name='ictgItem']",function(){
	        
	        //두번째 셀렉트 박스를 삭제 시킨다.
	        var subCategorySelectBox = $("select[name='ictsItem']");
	        subCategorySelectBox.children().remove(); //기존 리스트 삭제
	        
	        //선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
	        $("option:selected", this).each(function(){
	            var selectValue = $(this).val(); //main category 에서 선택한 값
	            subCategorySelectBox.append("<option value=''>전체</option>");
	            for(var i=0;i<subCategoryArray.length;i++){
	                if(selectValue == subCategoryArray[i].main_category_id){
	                    if(subCategoryArray[i].sub_category_name == "${item.ictsItem}"){
	                        subCategorySelectBox.append("<option name='ictsItem' value='"+subCategoryArray[i].sub_category_id+"' selected>"+subCategoryArray[i].sub_category_name+"</option>");
	                    }else{
		                    subCategorySelectBox.append("<option name='ictsItem' value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
	                    }
	                    
	                }
	            }
	        });
	        
	    });
	    
	    //*********** 1depth카테고리 선택 후 2depth 생성 END ***********
	        
	});
	</script>

	<script type="text/javascript">
		function btn() {
		    console.log(editor.getHTML());
		}
	</script>

	<script type="text/javascript">
		var count_SmallChapter = 0;
		function addSChapter() {
			var listHTML = "";
			listHTML += '';
			listHTML += '<div id="chapterSDelete'+ count_SmallChapter +'">';
			listHTML += '<div class="row" >';
			listHTML += '<label class="col-2 col-form-label">소제목</label>';
			listHTML += '<div class="col-9" style="padding-right:0px;">';
			listHTML += '<input type="text" placeholder="소제목" class="form-control">';
			listHTML += '<input type="text" placeholder="주소" class="form-control">';
			listHTML += '</div>';
			listHTML += '<div class="col-1" style="padding: 0px 0px;">';
			listHTML += '<button type="button" class="btn btn-danger" onclick="remove(chapterSDelete'
					+ count_SmallChapter + ')">';
			listHTML += '<i class="fa-solid fa-minus"></i>';
			listHTML += '</button>';
			listHTML += '</div>';
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
			listHTML += '<div id="chapterBDelete'+ count_BigChapter +'">';
			listHTML += '<div class="chapter-items">';
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
			listHTML += '</div>';
			count_BigChapter += 1;
			$("#bChapter").append(listHTML);
		}
		function addSsChapter() {
			var listHTML = "";
			listHTML += '';
			listHTML += '<div id="chapterSDelete'+ count_SmallChapter +'">';
			listHTML += '<div class="row">';
			listHTML += '<label class="col-2 col-form-label">소제목</label>';
			listHTML += '<div class="col-9" style="padding-right:0px;">';
			listHTML += '<input type="text" placeholder="소제목" class="form-control">';
			listHTML += '<input type="text" placeholder="주소" class="form-control">';
			listHTML += '</div>';
			listHTML += '<div class="col-1" style="padding: 0px 0px;">';
			listHTML += '<button type="button" class="btn btn-danger" onclick="remove(chapterSDelete'
					+ count_SmallChapter + ')">';
			listHTML += '<i class="fa-solid fa-minus"></i>';
			listHTML += '</button>';
			listHTML += '</div>';
			listHTML += '</div>';
			listHTML += '</div>';
			count_SmallChapter += 1;
			$("#ssChapter").append(listHTML);
		}
		function remove(id) {
			$(id).remove();
		}
	</script>


	<!-- 
	<script>
		var arrBig = new Array();
		arrBig[0] = "";
		arrBig[1] = "개발 프로그래밍";
		arrBig[2] = "데이터사이언스";
		arrBig[3] = "라이프스타일";

		var arrMid_0 = new Array(); // var arrMid_0  = new Array("");
		arrMid_0[0] = "";

		var arrMid_1 = new Array(); // var arrMid_1 = new Array("","라비타","그랜저 XG","스텔라");
		arrMid_1[0] = "";
		arrMid_1[1] = "웹 개발";
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
	 -->
	<script>
		
		const editor = new toastui.Editor({
			el : document.querySelector('#editor'),
			previewStyle : 'vertical',
			height : '500px',
			initialEditType : 'wysiwyg',
			initialValue : '${item.iltBody}',
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
