<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>



<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
	<div class="container d-flex justify-content-between align-items-center">
		<div class="logo">
			<h1>
				<a href="../index/home">NEXTLEVEL</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>

		<nav id="navbar" class="navbar">
			<ul>
				<c:choose>
					<c:when test="${sessType eq 1 }">
						<li><a href="Javascript:goMypage()">마이페이지</a></li>
						<li><a href="Javascript:logout()">로그아웃 </a></li>
					</c:when>
					<c:when test="${sessType eq 2 }">
						<li><a href="Javascript:goTeacherMypage()">강사 마이페이지</a></li>
						<li><a href="Javascript:logout()">로그아웃 </a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/index/signUp">회원가입 </a></li>
						<li><a href="../index/login">로그인</a></li>
					</c:otherwise>
				</c:choose>
				
				
				
			</ul>
		</nav>
		<!-- .navbar -->
	</div>
</header>
<!-- End Header -->