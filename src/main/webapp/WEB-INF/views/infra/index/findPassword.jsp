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
			<div class="container-fluid" style="justify-content: center">
				<div class="row">
					<div class="col-4 text-black"></div>
					<div class="col-4 text-black">
						<div class="d-flex align-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
							<form style="width: 27rem">
								<h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px">새로운 비밀번호를 설정해주세요.</h3>
								<h6 class="fw-normal mb-3 pb-3">
									계정에 연결된 이메일 주소를 입력하면 암호를 재설정할 수 있는 <br /> 링크를 이메일로 보내드릴게요.
								</h6>

								<div class="form-outline mb-4">
									<label class="form-label" for="form2Example18">이메일</label>
									<input type="email" id="form2Example18" class="form-control form-control-lg" placeholder="example@naver.com" style="height: 45px; color: gray; font-size: 12px" />
								</div>

								<div class="d-grid gap-2 col-12 mx-auto">
									<button class="btn btn-dark" type="button" style="height: 45px">인증 메일 전송하기</button>
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
