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

<title>NEXTLEVEL</title>
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
	<main>
		<section class="vh-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-6 text-black">
						<div class="px-5 ms-xl-4">
							<!-- <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085"></i>  -->
							<!-- <span class="h1 fw-bold mb-0">NEXT LEVEL</span> -->
						</div>

						<div class="d-flex align-items-center ">
							<form style="width: 23rem; margin-left: 200px">
								<div class="row" style="margin-top:100px;">
									<h3 class="fw-normal mb-3 pb-3" id="userHeader">사용자 로그인</h3>
									<h3 class="fw-normal mb-3 pb-3" style="display: none" id="teacherHeader">강사 로그인</h3>
									<div class="form-check form-switch form-check-reverse">
										<input class="form-check-input" id="type" type="checkbox" value="1" id="type" >
										<input class="form-check-input" id="type" type="hidden" value="0" id="type" >
										<label class="form-check-label" for="type">강사이신가요?</label>
									</div>
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmId">ID</label>
									<input type="email" id="ifmmId" name="ifmmId" class="form-control form-control-lg" style="color: gray; font-size: 12px" />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmPassword">PW</label>
									<input type="password" id="ifmmPassword" name="ifmmPassword" class="form-control form-control-lg" style="color: gray; font-size: 12px" />
								</div>

								<div class="d-grid gap-2 col-12 mx-auto">
									<button class="btn" type="button" style="background-color: orange; color: white" onClick="onLogin()">로그인</button>
								</div>
								<hr />
								<div class="d-grid gap-2 col-12 mx-auto">
									<button type="button" class="btn btn-warning" style="font-weight: bold; height: 40px">카카오로 3초 만에 시작하기</button>
									<button type="button" class="btn btn-success" style="font-weight: bold; color: white; height: 40px">네이버로 시작하기</button>
									<button type="button" class="btn btn-primary" style="font-weight: bold; color: white; height: 40px">페이스북으로 시작하기</button>
									<button type="button" class="btn btn-light" style="font-weight: bold; height: 40px">구글로 시작하기</button>
									<button type="button" class="btn btn-dark" style="font-weight: bold; height: 40px">애플로 시작하기</button>
								</div>

								<div style="margin-top: 20px">
									<p class="small mb-5 pb-lg-2">
										<a class="text-muted" href="./pwd.html">비밀번호를 잊어버리셨습니까?</a>
									</p>
									<p class="small mb-5 pb-lg-2">
										<a class="text-muted" href="./signup.html">회원가입하기</a>
									</p>
								</div>
							</form>
						</div>
					</div>
					<div class="col-sm-6 px-0 d-none d-sm-block">
						<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img3.webp" alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left" />
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
	<script>
	let typeChecked = false;
	
	document.getElementById('type').addEventListener('click', (e) => {
	    if (e.target.checked == true) {
	    	typeChecked = true;
	    	document.getElementById('userHeader').style.display = 'none';
	    	document.getElementById('teacherHeader').style.display = 'block';
	    } else {
	    	typeChecked = false
	    	document.getElementById('teacherHeader').style.display = 'none';
	    	document.getElementById('userHeader').style.display = 'block';
	    }
	});
	function onLogin() {
	    if (typeChecked == true) {
	        $.ajax({
				url:'./teacherLoginProc',
				type:'post',
				data:{
					"iftcId" : $("#ifmmId").val(),
					"iftcPassword" : $("#ifmmPassword").val(),
				},
				success:(res) => {
					if (res.rt == "success") {
						alert("로그인 성공!");
						location.href="/index/home";
					} else {
						alert("회원가입 실패");
					}
				},
				error:(jqXHR) => {
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	    } else{
	        $.ajax({
				url:'./loginProc',
				type:'post',
				data:{
					"ifmmId" : $("#ifmmId").val(),
					"ifmmPassword" : $("#ifmmPassword").val(),
				},
				success:(res) => {
					if (res.rt == "success") {
						alert("로그인 성공!");
						location.href="/index/home";
					} else {
						alert("회원가입 실패");
					}
				},
				error:(jqXHR) => {
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	    }
	};
	</script>

</body>
</html>
