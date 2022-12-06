<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<c:choose>
	<c:when test="${fn:length(commentList) eq 0 }">
	</c:when>
	<c:otherwise>
		<c:forEach items="${commentList}" var="commentList" varStatus="status">
			<div id="comment-1" class="comment">
				<div class="d-flex">
					<div>
						<h5>
							<a href="">${commentList.ifmmName}</a>
						</h5>
						<time datetime="${commentList.ilrRegDateTime}">${commentList.ilrRegDateTime}</time>
						<p>${commentList.ilrBody}</p>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- pagination s -->
		<%@include file="../common/user/includeV1/pagination.jsp"%>
		<!-- pagination e -->
	</c:otherwise>
</c:choose>