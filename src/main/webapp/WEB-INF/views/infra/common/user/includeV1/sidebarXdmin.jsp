<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>



<aside class="left-sidebar sidebar-dark" id="left-sidebar">
	<div id="sidebar" class="sidebar sidebar-with-footer">
		<!-- Aplication Brand -->
		<div class="app-brand">
			<a href="../codeGroup/codeGroupList" >
				<span id="nextlevel" class="brand-name">LEXTLEVEL</span>
			</a>
		</div>
		<!-- begin sidebar scrollbar -->
		<div class="sidebar-left" data-simplebar style="height: 100%;">
			<!-- sidebar menu -->
			<ul class="nav sidebar-inner" id="sidebar-menu">
				<li>
					<a class="sidenav-item-link" href="../codeGroup/codeGroupList">
						<i class="mdi mdi-briefcase-account-outline"></i>
						<span class="nav-text">CodeGroup</span>
					</a>
				</li>
				<li>
					<a class="sidenav-item-link" href="../code/codeList">
						<i class="mdi mdi-briefcase-account-outline"></i>
						<span class="nav-text">Code</span>
					</a>
				</li>
				<li>
					<a class="sidenav-item-link" href="../code/codeList">
						<i class="fa-solid fa-user-graduate"></i>
						<span class="nav-text">Member</span>
					</a>
				</li>
				<li>
					<a class="sidenav-item-link" href="../code/codeList">
						<i class="fa-regular fa-user"></i>
						<span class="nav-text">Teacher</span>
					</a>
				</li>
				<li>
					<a class="sidenav-item-link" href="../code/codeList">
						<i class="fa-regular fa-bookmark"></i>
						<span class="nav-text">Lecture</span>
					</a>
				</li>
				<li class="section-title">Apps</li>
				<li>
					<a class="sidenav-item-link" href="chat.html">
						<i class="mdi mdi-wechat"></i>
						<span class="nav-text">Chat</span>
					</a>
				</li>
			</ul>
		</div>

		<div class="sidebar-footer">
			<div class="sidebar-footer-content">
				<ul class="d-flex">
					<li>
						<a href="user-account-settings.html" data-toggle="tooltip" title="Profile settings">
							<i class="mdi mdi-settings"></i>
						</a>
					</li>
					<li>
						<a href="#" data-toggle="tooltip" title="No chat messages">
							<i class="mdi mdi-chat-processing"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</aside>