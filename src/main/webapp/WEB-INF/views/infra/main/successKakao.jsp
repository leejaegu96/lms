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

<title>성공페이</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- include link -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->
<style>
.pie-chart {
	position: relative;
	display: inline-block;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	transition: 0.3s;
}

span.center {
	background: #fff;
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	text-align: center;
	line-height: 50px;
	font-size: 15px;
	transform: translate(-50%, -50%);
}

.topTitle {
	font-weight: bold;
	font-size: 14px;
	float: left;
}

.subTitle {
	font-weight: bold;
	font-size: 12px;
	color: gray;
	float: right;
}

#cardSize {
	height: 220px;
}

#colPad {
	padding-bottom: 10px;
}

.cardContents {
	font-size: 13px;
}

.cardNoContents {
	text-align: center;
	font-size: 13px;
	color: gray;
}

.progressDetailL {
	font-size: 10px;
	float: left;
}

.progressDetailR {
	font-size: 10px;
	float: right;
}

#stTitle {
	font-size: 50px;
	font-weight: bold;
	text-align: center;
}

#stContents {
	font-size: 13px;
	font-weight: bold;
	text-align: center;
}

.lectureL {
	font-size: 13px;
	float: left;
}

.lectureR {
	font-size: 10px;
	float: right;
}
</style>
</head>

<body>
<form method="post" name= "form">
	성공성공성공!!!!!!!!!
	http://localhost:8080/member/successKakao
	
	${tid}
	
	<input type="hidden" id="pg" value="<%= request.getParameter("pg_token") %>"/>	
</form>
<script>
	
</script>

 <script>
	$(document).ready(function(){
	   
		var pg1 = $("#pg").val();
		alert(pg1);
		
		$.ajax({ 
			url : "/member/kakaopay.approve",   			
			dataType : 'json',
			type:"POST",
			data : {
				pg:  pg1,
				tid: "${tid}"
			},
			success : function(data) {
				console.log(data);
		     },
		          
			error : function(request, status, error){     							
				  	console.log("code: " + request.status)	
			        console.log("message: " + request.responseText)
			        console.log("error: " + error);
				 }	     
		});
		return false;
	});
</script> 


</body>
</html>
