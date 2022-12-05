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
									<div class="row gx-3 gy-2">
										<div class="col-3" style="margin-bottom: 10px;">
											<select class="form-control rounded-0" id="exampleFormControlSelect14">
												<option selected>사용여부</option>
												<option value="1">Y</option>
												<option value="2">N</option>
											</select>
										</div>
										<div class="col-3" style="margin-bottom: 10px;">
											<select class="form-control rounded-0" id="exampleFormControlSelect14">
												<option selected>수정일</option>
												<option value="1"></option>
												<option value="2"></option>
												<option value="3"></option>
												<option value="4"></option>
											</select>
										</div>
										<div class="col-3" style="margin-bottom: 10px;">
											<input type="text" class="form-control" placeholder="시작일">
										</div>
										<div class="col-3" style="margin-bottom: 10px;">
											<input type="text" class="form-control" placeholder="종료일">
										</div>
										<div class="col-3" style="margin-bottom: 10px;">
											<select class="form-control rounded-0" id="exampleFormControlSelect14">
												<option selected>검색구분</option>
												<option value="1">--</option>
												<option value="2">--</option>
												<option value="3">--</option>
												<option value="4">--</option>
											</select>
										</div>
										<div class="col-3" style="margin-bottom: 10px;">
											<form class="d-flex" role="search">
												<input class="form-control" type="text" id="searchInput" placeholder="검색어" onkeyup="myFunction()" title="Type in a name">
											</form>
										</div>
										<div class="col-3" style="margin-bottom: 10px;">
											<form class="d-flex" role="search">
												<button class="btn btn-outline-primary" type="submit" style="margin-right: 5px;">
													<i class="fa-solid fa-magnifying-glass"></i>
												</button>
												<button class="btn btn-outline-danger" type="submit">
													<i class="fa-solid fa-arrow-rotate-left"></i>
												</button>
											</form>
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
															<input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.ifcdSeq }"/>" class="form-check-input">
														</div>
													</td>
													<td>${index.status }</td>
													<td>${list.ifcgSeq }</td>
													<td>${list.ifcgName }</td>
													<td>${list.ifcgNameEng }</td>
													<td>${list.count }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="../../common/user/includeV1/footerXdmin.jsp"%>
			
</body>
</html>
