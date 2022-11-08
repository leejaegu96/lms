<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>



<script>

	myLecture = function(){
		form.attr("action", "/member/purchaseHistory").submit();
	}
	
	goWishlist = function(){
		form.attr("action", "/member/wishlist").submit();
	}
	
	goPrint = function(){
		form.attr("action", "/member/print").submit();
	}
	
	goProfile = function(){
		form.attr("action", "/member/profile").submit();
	}
	
	goModPassword = function(){
		form.attr("action", "/member/modPassword").submit();
	}
</script>