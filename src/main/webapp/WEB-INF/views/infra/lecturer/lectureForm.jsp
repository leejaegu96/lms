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
										<span style="font-size: 25px; font-weight: bold;">강의등록</span>
										&nbsp;
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
											<div class="col-10" id="bChapter">
												<div class="chapter-items">
													<div class="row">
														<div class="row" style="padding-top: 10px;" id="sChapter">
															
															<c:forEach items="${chapter}" var="chapter" varStatus="status">
																<c:set var="count" value="${count+1 }"></c:set>
																	<label class="col-2 col-form-label">소제목</label>
																	<div class="col-9" style="padding-right: 0px;">
																		<input type="text" placeholder="소제목" class="form-control" name="ictTitle" id="ictTitle" value="${chapter.ictTitle }">
																		<input type="text" placeholder="주소" class="form-control" name="ictVideoUrl" id="ictVideoUrl" value="${chapter.ictVideoUrl }">
																	</div>
																	<div class="col-1" style="padding: 0px 0px;">
																		<button type="button" id="btnPlus" class="btn btn-primary" onclick="addSChapter()">
																			<i class="fa-solid fa-<c:if test="${count eq 1}">plus</c:if><c:if test="${count ne 1}">minus</c:if>"></i>  
																		</button>
																	</div>
															

															</c:forEach>
														</div>
													</div>
												</div>
											</div>
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
		function btn() {
		    console.log(editor.getHTML());
		    console.log(document.getElementById('ictTitle').value);
		}
	</script>
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
