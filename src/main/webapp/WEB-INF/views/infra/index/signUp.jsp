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

	<main id="main">
		<section id="services" class="services">
			<div class="container-fluid">
				<div class="row">
					<div class="col-4 text-black"></div>
					<div class="col-4">
						<div class="d-flex align-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
							<form style="width: 27rem" style="justify-content: center">
								<div class="row">
									<h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px">회원가입</h3>
									<div class="col">
										<h5 style="float: right; color: gray">수강생</h5>
										<h5 style="float: right; color: gray">강사 &nbsp;&nbsp;</h5>
									</div>
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="form2Example18">이름 </label>
									<input type="text" id="form2Example8" class="form-control form-control-lg" placeholder="홍길동" style="color: gray; font-size: 12px" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="form2Example18">이메일</label>
									<input type="email" id="form2Example18" class="form-control form-control-lg" placeholder="example@naver.com" style="color: gray; font-size: 12px" />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form2Example28">비밀번호</label>
									<input type="password" id="form2Example28" class="form-control form-control-lg" placeholder="******" style="color: gray; font-size: 12px" />
									<h6 style="color: gray; font-size: 13px">영문 대소문/숫자/특수문자 중 2가지 이상 조합, 8자 이상</h6>
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form2Example28">비밀번호 확인 </label>
									<input type="password" id="form2Example28" class="form-control form-control-lg" placeholder="******" style="color: gray; font-size: 12px" />
								</div>

								<div class="d-grid gap-2 col-12 mx-auto">
									<button class="btn" type="button" style="background-color: orange; color: white">동의하고 회원가입</button>
								</div>
								<hr />
								<div class="d-grid gap-2 col-12 mx-auto">
									<button type="button" class="btn btn-warning" style="font-weight: bold; height: 40px">카카오로 3초 만에 시작하기</button>
									<button type="button" class="btn btn-success" style="font-weight: bold; color: white; height: 40px">네이버로 시작하기</button>
									<button type="button" class="btn btn-primary" style="font-weight: bold; color: white; height: 40px">페이스북으로 시작하기</button>
									<button type="button" class="btn btn-light" style="font-weight: bold; height: 40px">구글로 시작하기</button>
									<button type="button" class="btn btn-dark" style="font-weight: bold; height: 40px">애플로 시작하기</button>
								</div>
							</form>
						</div>
						<div class="col-4 text-black"></div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->

</body>
</html>
