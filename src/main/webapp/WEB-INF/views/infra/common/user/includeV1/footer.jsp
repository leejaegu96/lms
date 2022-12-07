<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!-- ======= Footer ======= -->
<footer id="footer">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 footer-links">
					<h4>NEXTLEVEL</h4>
					<ul>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Home</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">About us</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Services</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Terms of service</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Privacy policy</a>
						</li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 footer-links">
					<h4>Our Services</h4>
					<ul>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Web Design</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Web Development</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Product Management</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Marketing</a>
						</li>
						<li>
							<i class="bx bx-chevron-right"></i>
							<a href="#">Graphic Design</a>
						</li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 footer-contact">
					<h4>Contact Us</h4>
					<p>printf("Hello world!");</p>
				</div>

				<div class="col-lg-3 col-md-6 footer-info">
					<h3>About NextLevel</h3>
					<p>랩배틀 신청 받습니다.</p>
					<div class="social-links mt-3"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="copyright">
			&copy; Copyright <strong><span>Eterna</span></strong>. All Rights Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/ -->
			Designed by
			<a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</div>
</footer>
<!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
	<i class="bi bi-arrow-up-short"></i>
</a>

<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 로그인 -->
<!-- 네이버 로그인 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<!-- 네이버 로그인 -->

<!-- Vendor JS Files -->
<script src="../../../../resources/template/user_Eterna/assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="../../../../resources/template/user_Eterna/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../../../resources/template/user_Eterna/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="../../../../resources/template/user_Eterna/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="../../../../resources/template/user_Eterna/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="../../../../resources/template/user_Eterna/assets/vendor/waypoints/noframework.waypoints.js"></script>
<script src="../../../../resources/template/user_Eterna/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="../../../../resources/template/user_Eterna/assets/js/main.js"></script>
<script src="https://kit.fontawesome.com/06cf56417a.js" crossorigin="anonymous"></script>

<script>
    var form = $("form[name=form]");

    logout = function() {
        $.ajax({

            url : "/index/logoutProc",

            type : 'post',

            async : false,

            data : {

            },

            success : function(data) {
                alert('logout');
                form.attr("action", "/index/login").submit();
            },

            error : function(request, status, error) {
                console.log("code: " + request.status)
                console.log("message: " + request.responseText)
                console.log("error: " + error);
            }
        });
    }

    goMypage = function() {
        form.attr("action", "/member/dashboard").submit();
    }
    goTeacherMypage = function() {
        form.attr("action", "/lecturer/lectureList").submit();
    }
    goXdminpage = function() {
        form.attr("action", "/lecture/lectureList").submit();
    }
</script>

