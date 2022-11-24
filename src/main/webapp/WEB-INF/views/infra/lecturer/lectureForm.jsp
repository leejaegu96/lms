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
						<form name="form" id="form" method="POST" enctype="multipart/form-data">
							<input type="hidden" name="iltSeq" value="${item.iltSeq}">
							<div class="sidebar">
								<div class="row mb-3">
									<div class="col-6" style="float: left;">
										<span style="font-size: 25px; font-weight: bold;">강의등록</span> &nbsp;
									</div>
									<div class="col-6">
										<button class="btn btn-secondary" style="float: right;">이전으로</button>
										<button type="button" onclick="onSubmit()" class="btn btn-primary" style="float: right;">저장하기</button>
									</div>
								</div>
								<br>

								<!-- 강의 카테고리 -->
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
										<input name="iltTitle" type="text" class="form-control" id="iltTitle" name="iltTitle" value="${item.iltTitle }">
									</div>
								</div>
								<input type="hidden" name="sessSeq" value="${sessSeq}" />
								<!-- 강의가격 -->
								<div class="row mb-3">
									<label for="title" class="col-2 col-form-label" style="text-align: center;">강의가격</label>
									<div class="col-10">
										<input name="iltPrice" type="text" class="form-control" id="iltPrice" name="iltPrice" value="${item.iltPrice}" style="text-align: right" placeholder="(원)">
									</div>
								</div>

								<!-- 대표이미지 -->
								<div class="row mb-3">
									<label for="title" class="col-2 col-form-label" style="text-align: center;">대표이미지</label>
									<div class="col-10">
										<img src="${path}${uuidName}" alt="" width="600" height="400" /> <br />
									</div>
								</div>
								<div class="row mb-3">
									<label for="title" class="col-2 col-form-label" style="text-align: center;"></label>
									<div class="col-10">
										<input type="file" name="uploadedImage" class="form-control" id="getUploadedImage()" value="">
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
									<div class="col-10">
										<div class="chapter-items">
											<c:choose>
												<c:when test="${item.iltSeq eq null }">
													<div class="chapter-items">
														<div class="chapterH">
															<label class="col-2 col-form-label" style="text-align: center;">대제목</label>
															<input type="text" class="form-control innerValue bigTitle" placeholder="대제목" name="ichTitle" style="width: 55%; display: inline-block; margin-bottom: 20px;" />
															<button type="button" class="btn btn-primary" style="width: 12%; display: inline-block" onclick="addRow(this)">+</button>
															<button type="button" class="btn btn-danger" style="width: 12%; display: inline-block" onClick="delRow(this)" style="background-color: red">-</button>
															<div class="body">
																<label class="col-2 col-form-label" style="text-align: center;">소제목</label>
																<input type="text" class="form-control innerValue title" placeholder="소제목" name="ictTitle" style="width: 65%; display: inline-block" />
																<button type="button" class="btn btn-primary" style="width: 15%; display: inline-block" onclick="addRow(this)">+</button>

																<label class="col-2 col-form-label" style="text-align: center;">링크</label>
																<input type="text" class="form-control innerValue url" onChange="urlParser(this)" placeholder="유튜브 링크" name="ictVideoUrl" style="width: 65%; display: inline-block; margin-bottom: 10px;" />

																<button type="button" class="btn btn-danger" style="width: 15%; display: inline-block" onClick="delRow(this)" class="delete">-</button>
															</div>
															<hr />
														</div>
													</div>
												</c:when>
											</c:choose>
											<c:forEach items="${head}" var="head" varStatus="status">
												<div class="chapterH">
													<label class="col-2 col-form-label" style="text-align: center;">대제목</label>
													<input type="text" class="form-control innerValue bigTitle" placeholder="대제목" name="ichTitle" value="${head.ichTitle }" style="width: 55%; display: inline-block; margin-bottom: 20px;" />
													<button type="button" class="btn btn-primary" style="width: 12%; display: inline-block" onclick="addRow(this)">+</button>
													<button type="button" class="btn btn-danger" style="width: 12%; display: inline-block" onClick="delRow(this)" style="background-color: red">-</button>
													<c:forEach items="${chapter}" var="chapter" varStatus="status">
														<c:if test="${head.ichSeq == chapter.ictIchSeq }">
															<div class="body">
																<label class="col-2 col-form-label" style="text-align: center;">소제목</label>
																<input type="text" class="form-control innerValue title" placeholder="소제목" name="ictTitle" value="${chapter.ictTitle }" style="width: 65%; display: inline-block" />
																<button type="button" class="btn btn-primary" style="width: 15%; display: inline-block" onclick="addRow(this)">+</button>
																<label class="col-2 col-form-label" style="text-align: center;">링크</label>
																<input type="text" class="form-control innerValue url" placeholder="링크" onInput="urlParser(this)" name="ictVideoUrl" value="${chapter.ictVideoUrl }" style="width: 65%; display: inline-block; margin-bottom: 10px;" />
																<button type="button" class="btn btn-danger" style="width: 15%; display: inline-block" onClick="delRow(this)" class="delete">-</button>
															</div>
														</c:if>
													</c:forEach>
													<hr />
												</div>
											</c:forEach>
										</div>
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
		    let ictTitleList = [];
		    let ictVideoUrlList = [];
			$("input[name=ictTitle]").each(function(){
			    ictTitleList.push($(this).val());
			});
			$("input[name=ictVideoUrl]").each(function(){
			    ictVideoUrlList.push($(this).val());
			});
			console.log(ictTitleList);
			console.log(ictVideoUrlList);
			
			$.ajax({
			    url: "/lecturer/lectureArray",
		        async : true,
                cache : false,
                type : "post",
                data : {
                    ictTitleList: ictTitleList,
                    ictVideoUrlList: ictVideoUrlList
                },
                success : function(response) {
                    console.log("성공")
                },
                error : function(jqXHR, textStatus, errorThrown) {
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
			})
			
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
		    mainCategoryObject.main_category_seq = "${big.ictgSeq}";
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
		    subCategoryObject.main_category_id = "${small.ictsSeq}";
		    subCategoryObject.sub_category_id = "${small.ictsItem}"
		    subCategoryObject.sub_category_seq = "${small.ictsSeq}"
		    subCategoryObject.sub_category_name = "${small.ictsItem}"    
		    subCategoryArray.push(subCategoryObject);
	    </c:forEach>
	    
	    //메인 카테고리 셋팅
	    var mainCategorySelectBox = $("select[name='ictgItem']");
	    var select = ""
	    for(var i=0;i<mainCategoryArray.length;i++){
	        if(mainCategoryArray[i].main_category_name == "${item.ictgItem}"){
	            mainCategorySelectBox.append("<option name='ictgItem' value='"+mainCategoryArray[i].main_category_seq+"' selected>"+mainCategoryArray[i].main_category_name+"</option>");
	        } else{
	            mainCategorySelectBox.append("<option name='ictgItem' value='"+mainCategoryArray[i].main_category_seq+"'>"+mainCategoryArray[i].main_category_name+"</option>");
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
                        subCategorySelectBox.append("<option name='ictsItem' value='"+subCategoryArray[i].sub_category_seq+"' selected>"+subCategoryArray[i].sub_category_name+"</option>");
                    }else{
	                    subCategorySelectBox.append("<option name='ictsItem' value='"+subCategoryArray[i].sub_category_seq+"'>"+subCategoryArray[i].sub_category_name+"</option>");
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

	<script>
	/**
	 * 저장시 실행 되는 함수
	 * 공백체크 -> 입렵된 값 묶기 -> 컨트롤러 요청 보내기
	 */
	 const onSubmit = () => {
         // validation
         /**
         const header = $('input[name=header]'); // 강의 제목
         const img = $('input[name=img]'); // 대표 이미지
         const body = $('input[name=body]'); // 강의 설명

         // 내용이 비어있으면 제출 X
         // 피드백 메시지 노출
         if (header.val() == '' || body.val() == '' || img.val() == '') {
             alert('내용을 입력해주세요');
             return false;
         }
         */
		 
         let videoCount = 0;
         const title = document.querySelectorAll('.chapterH'); // 대제목 div
         const data = {
        	data: []
          }; // 컨트롤러로 보낼 데이터 만들기

         // 대제목 개수 만큼 반복
         title.forEach((title, i) => {
             const tmp = []; // 임시로 값을 담을 변수

             // 소제목 개수 만큼 반복
             title.querySelectorAll('.body').forEach((body) => {
                 tmp.push({
                     subTitle: body.querySelector('.title').value,
                     link: body.querySelector('.url').value,
                 });
                 videoCount++;
             });

             data.data.push({
                 header: title.querySelector('.bigTitle').value,
                 body: tmp,
             });
         });

         // Ajax request
          $.ajax({
 			url:'./lectureInst',
 			type:'post',
 			data:{
 				data: 
 				JSON.stringify(data)
 				,iltTitle: $("input[name=iltTitle]").val()
 				,iltIftcSeq: $("input[name=sessSeq]").val()
 				,iltPrice: $("input[name=iltPrice]").val()
 				,iltIctgSeq: $("select[name=ictgItem]").val()
 				,iltBody: editor.getHTML()
 				,iltVideoCount: videoCount
 			},
 			success:(res) => {
				if (res.rt == "success") {
					// 업로드 성공
					$("input[name=iltSeq]").val(res.key)
					const goUrlForm = "/lecturer/lectureForm"
					$("form[name=form]").attr("action", goUrlForm).submit();
					
				} else {
					alert("업로드 실패!!");
				}
 			},
 			error:(jqXHR) => {
 				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
 			}
 		});
     }; 
     /**
      * 행 추가 함수
      */
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
     
     const urlParser = (target) => {
    	 const params = new URL(target.value).searchParams;
    	 console.log(params.get("v"))
    	 target.value = params.get("v");
     }
	</script>
	<!-- 
	<script type="text/javascript">
		var count_SmallChapter = 10;
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
