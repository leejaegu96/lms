<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Mono - Responsive Admin & Dashboard Template</title>

<%@include file="../../common/user/includeV1/linkXdmin.jsp"%>

</head>


<body class="navbar-fixed sidebar-fixed" id="body">
	<script>
        NProgress.configure({
            showSpinner : false
        });
        NProgress.start();
    </script>

	<!-- ====================================
    ——— WRAPPER
    ===================================== -->
	<div class="wrapper">
		<!-- ====================================
          ——— LEFT SIDEBAR WITH OUT FOOTER
        ===================================== -->
		<%@include file="../../common/user/includeV1/sidebarXdmin.jsp"%>
		<!-- ====================================
      ——— PAGE WRAPPER
      ===================================== -->
		<div class="page-wrapper">
			<!-- Header -->
			<%@include file="../../common/user/includeV1/headerXdmin.jsp"%>
			<!-- ====================================
        ——— CONTENT WRAPPER
        ===================================== -->
			<form name="form">
				<div class="content-wrapper">
					<div class="content">
						<!-- For Components documentaion -->
						<div class="card card-default">
							<div class="px-6 py-4">
								<div class="card card-default">
									<div class="card-header">
										<h2>CodeGroupList</h2>
									</div>

									<div class="card-body">
										<form method="post" name="formList" id="formList">
											<span>Total: ${vo.totalRows }</span>
											<input type="hidden" name="ifcdSeq">
											<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
											<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
											<input type="hidden" name="checkboxSeqArray">
											<div class="row gx-3 gy-2">
												<div id="shDelNy" name="shDelNy" class="col-3" style="margin-bottom: 10px;">
													<select class="form-control rounded-0" id="exampleFormControlSelect14">
														<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>사용여부</option>
														<option value="1" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>Y</option>
														<option value="0" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>N</option>
													</select>
												</div>
												<div id="shOptionDate" name="shOptionDate" class="col-3" style="margin-bottom: 10px;">
													<select class="form-control rounded-0" id="exampleFormControlSelect14">
														<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
														<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
														<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
														<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>날짜</option>
													</select>
												</div>
												<div class="col-3" style="margin-bottom: 10px;">
													<input type="text" class="form-control" id="shDateStart" placeholder="시작일" <fmt:formatDate  value="${vo.shDateStart}" />>
												</div>
												<div class="col-3" style="margin-bottom: 10px;">
													<input type="text" class="form-control" id="shDateEnd" placeholder="종료일" <fmt:formatDate  value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>>
												</div>
												<div class="col-3" style="margin-bottom: 10px;">
													<select id="shOption" name="shOption" class="form-control rounded-0" id="exampleFormControlSelect14">
														<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
														<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
														<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
														<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영문)</option>
													</select>
												</div>
												<div class="col-3" style="margin-bottom: 10px;">
													<input class="form-control" type="text" placeholder="검색어" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>">
												</div>
												<div class="col-3" style="margin-bottom: 10px;">
													<button class="btn btn-outline-primary" type="submit" style="margin-right: 5px;">
														<i class="fa-solid fa-magnifying-glass"></i>
													</button>
													<button class="btn btn-outline-danger" type="submit">
														<i class="fa-solid fa-arrow-rotate-left"></i>
													</button>
												</div>
											</div>
											<table class="table ">
												<thead class="thead-light">
													<tr>
														<th scope="col">
															<div class="form-check" id="" style="height: 20px;">
																<input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input">
															</div>
														</th>
														<th scope="col">#</th>
														<th scope="col">코드그룹 코드</th>
														<th scope="col">코드그룹 이름(한글)</th>
														<th scope="col">코드그룹 이름(영문)</th>
														<th scope="col">코드 갯수</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="list" items="${list }" varStatus="status">
														<tr>
															<td scope="row">
																<div class="form-check">
																	<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.ifcgSeq }"/>" class="form-check-input">
																</div>
															</td>
															<td>
																<c:out value="${vo.totalRows - ((vo.thisPage -1) * vo.rowNumToShow + status.index) }" />
															</td>
															<td>${list.ifcgSeq }</td>
															<td>${list.ifcgNameKor }</td>
															<td>${list.ifcgNameEng }</td>
															<td>${list.count }</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="row">
												<!-- pagination s -->
												<%@include file="../../common/user/includeV1/pagination.jsp"%>
												<!-- pagination e -->
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<%@include file="../../common/user/includeV1/footerXdmin.jsp"%>
			<script type="text/javascript">
                var goUrlList = "/codeGroup/codeGroupList";
                var seq = $("input:hidden[name=ifcgSeq]");
                var form = $("form[name=formList]");
                var checkboxSeqArray = [];

                goForm = function(keyValue) {
                    /* if(keyValue != 0) seq.val(btoa(keyValue)); */
                    seq.val(keyValue);
                    form.attr("action", goUrlForm).submit();
                }

                goList = function(thisPage) {
                    $("input:hidden[name=thisPage]").val(thisPage);
                    form.attr("action", goUrlList).submit();
                }

                $("btnReset").on("click", function() {
                    $(location).attr("href", goUrlList)
                })

                $("#checkboxAll").click(function() {
                    if ($("#checkboxAll").is(":checked"))
                        $("input[name=checkboxSeq]").prop("checked", true);
                    else
                        $("input[name=checkboxSeq]").prop("checked", false);
                });

                $("input[name=checkboxSeq]").click(function() {
                    var total = $("input[name=checkboxSeq]").length;
                    var checked = $("input[name=checkboxSeq]:checked").length;

                    if (total != checked)
                        $("#checkboxAll").prop("checked", false);
                    else
                        $("#checkboxAll").prop("checked", true);
                });
            </script>
</body>
</html>
