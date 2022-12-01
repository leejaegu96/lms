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

</head>
<link rel="stylesheet" type="text/css" href="https://printjs-4de6.kxcdn.com/print.min.css">
<style type="text/css">
td {
	font-size: 1.1em;
	color: #80807D;
}

@media print {
	@page {
		margin-top: 0;
		margin-bottom: 0;
	}
	body {
		padding-top: 72px;
		padding-bottom: 72px;
	}
}
</style>
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" onkeydown="return false">
	<form method="post" name="form" action="#" id="printJS-form">
		<div id="idPrint">
			<div style="position: relative;">
				<img alt="" src="../resources/assets/images/certificates.png" onclick="printJS('printJS-form', 'html')" style="cursor: pointer; width: 60em; margin: auto; Display: Flex">
			</div>
			<div style="position: absolute; top: 280px; left: 280px;">
				<table style="height:100px;">
					<tr>
						<td style="text-align: left; width: 70px; height:20px;">성&nbsp;&nbsp;&nbsp;명</td>
						<td style="text-align: left; width: 10px; height:20px;">:</td>
						<td style="text-align: left; height:20px;">이재구</td>
					</tr>
					<tr>
						<td style="text-align: left;">과정명</td>
						<td style="text-align: left;">:</td>
						<td style="text-align: left;">생활코딩</td>
					</tr>
				</table>
			</div>
			<div style="position: absolute; top: 400px; left: 280px;">
				<span style="text-align:center; font-weight:blod; color: #80807D; font-size: 1.2em">
					NEXT LEVEL에서 교육과정을 성실히 이수하였기에<br>
					위 수료증을 수여합니다.
				</span>
			</div>
		</div>
	</form>
	
	<script src="https://printjs-4de6.kxcdn.com/print.min.js"></script>
	<script type="text/javascript">
	const onPrintFn = () => {
	    const html = document.querySelector('html');
	    const printSection = document.querySelector('.printJS-form').innerHTML; //프린트 영역
	    const printDiv = document.createElement("DIV");
	    html.appendChild(printDiv);
	    printDiv.innerHTML = printSection; //printDiv에 프린트 영역 내용을 담아줌
	    document.body.style.display = 'none'; //전체 hide
	    window.print(); //printDiv를 프린트
	    document.body.style.display = 'block'; //프린트 후 전체 show
	    printDiv.style.display = 'none'; // printDiv hide
	  }
    </script>
</body>
</html>
