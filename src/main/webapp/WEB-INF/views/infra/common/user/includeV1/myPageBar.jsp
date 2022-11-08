<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>



	<div class="col-lg-4">
		<div class="sidebar">
			<h3 class="sidebar-title"><a href="dashboard" style="color:black;">Mypage</a></h3>
			<div class="sidebar-item categories">
				<ul>
					<li>
						<a href="javascript:myLecture()">
							구매목록 <span>(25)</span>
						</a>
					</li>
					
					<li>
						<a href="javascript:goWishlist()">
							찜 목록 <span>(12)</span>
						</a>
					</li>
					
					<li>
						<a href="javascript:goPrint()">
							수료증 출력 <span>(22)</span>
						</a>
					</li>
					
					<li>
						<a href="javascript:goProfile()">
							프로필
						</a>
					</li>
					
					<li>
						<a href="javascript:goModPassword()">
							비밀번호 수정
						</a>
					</li>
				</ul>
			</div>
			<!-- End sidebar categories-->
	
			<h3 class="sidebar-title">Recent Posts</h3>
			<div class="sidebar-item recent-posts">
				<div class="post-item clearfix">
					<img src="https://cdn.class101.net/images/0f25f15c-dfba-4ba1-979f-24a88809e665/960xauto.webp" alt="" />
					<h4>
						<a href="blog-single.html">권도수의 [목,어깨 집중 프로젝트] : 망가진 자세로 하루를 보내는 나를 위한 셀프 관리</a>
					</h4>
					<time datetime="2020-01-01">Jan 1, 2020</time>
				</div>
	
				<div class="post-item clearfix">
					<img src="https://cdn.class101.net/images/37d8a757-0f38-4424-a58f-b71444a712f8/960xauto.webp" alt="" />
					<h4>
						<a href="blog-single.html">아이패드 하나로 기록하는 키츠의 아날로그 텍스처 일상</a>
					</h4>
					<time datetime="2020-01-01">Jan 1, 2020</time>
				</div>
	
				<div class="post-item clearfix">
					<img src="https://cdn.class101.net/images/10c624cc-522e-4408-9bcf-ba802596eba5/960xauto.webp" alt="" />
					<h4>
						<a href="blog-single.html">(2022년 전면개정판) 가장 빠르게 돈 버는 유튜브 채널 만드는 방법</a>
					</h4>
					<time datetime="2020-01-01">Jan 1, 2020</time>
				</div>
	
				<div class="post-item clearfix">
					<img src="https://cdn.class101.net/images/c019f819-4c73-4255-a194-913107e681a8/960xauto.webp" alt="" />
					<h4>
						<a href="blog-single.html">[미니클래스] 내 몸은 내가 관리한다! 홈 메이드 건강 차(혈액 순환과 피로 회복)</a>
					</h4>
					<time datetime="2020-01-01">Jan 1, 2020</time>
				</div>
	
				<div class="post-item clearfix">
					<img src="https://cdn.class101.net/images/d0b5915e-c227-484e-a0d3-16dc2c808a1a/960xauto.webp" alt="" />
					<h4>
						<a href="blog-single.html">20년 경력자가 알려주는 미드 번역으로 배우는 영상 번역 실무</a>
					</h4>
					<time datetime="2020-01-01">Jan 1, 2020</time>
				</div>
			</div>
			<!-- End sidebar recent posts-->
		</div>
		<!-- End sidebar -->
	</div>
	<!-- End blog sidebar -->