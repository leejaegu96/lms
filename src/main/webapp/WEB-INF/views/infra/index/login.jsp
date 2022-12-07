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
	<main>
		<section class="vh-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-6 text-black">
						<div class="px-5 ms-xl-4">
							<!-- <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085"></i>  -->
							<!-- <span class="h1 fw-bold mb-0">NEXT LEVEL</span> -->
						</div>

						<div class="d-flex align-items-center ">
							<form id="form" name="form" method="post" style="width: 23rem; margin-left: 200px">
								<input type="hidden" name="name" />
								<input type="hidden" name="snsId" />
								<input type="hidden" name="phone" />
								<input type="hidden" name="email" />
								<input type="hidden" name="token" />
								<div class="row" style="margin-top: 100px;">
									<h3 class="fw-normal mb-3 pb-3" id="userHeader">사용자 로그인</h3>
									<h3 class="fw-normal mb-3 pb-3" style="display: none" id="teacherHeader">강사 로그인</h3>
									<div class="form-check form-switch form-check-reverse">
										<input class="form-check-input" id="type" type="checkbox" value="1" id="type">
										<input class="form-check-input" id="type" type="hidden" value="0" id="type">
										<label class="form-check-label" for="type">강사이신가요?</label>
									</div>
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmId">ID</label>
									<input type="email" id="ifmmId" name="ifmmId" value="xdmin" class="form-control form-control-lg" style="color: gray; font-size: 12px" />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmPassword">PW</label>
									<input type="password" id="ifmmPassword" value="1234" name="ifmmPassword" class="form-control form-control-lg" style="color: gray; font-size: 12px" />
								</div>

								<div class="d-grid gap-2 col-12 mx-auto">
									<button class="btn" type="button" style="background-color: orange; color: white" onClick="onLogin()">로그인</button>
								</div>
								<hr />
								<div class="d-grid gap-2 col-12 mx-auto">
									<button type="button" id="kakaoBtn" class="btn btn-warning" style="font-weight: bold; height: 40px">카카오로 3초 만에 시작하기</button>
									<button type="button" id="naverBtn" class="btn btn-success" style="font-weight: bold; color: white; height: 40px">네이버로 시작하기</button>
									<!-- 
									<button type="button" class="btn btn-primary" style="font-weight: bold; color: white; height: 40px">페이스북으로 시작하기</button>
									<button type="button" class="btn btn-light" style="font-weight: bold; height: 40px">구글로 시작하기</button>
									<button type="button" class="btn btn-dark" style="font-weight: bold; height: 40px">애플로 시작하기</button>
									 -->
								</div>

								<div style="margin-top: 20px">
									<p class="small mb-5 pb-lg-2">
										<a class="text-muted">비밀번호를 잊어버리셨습니까?</a>
									</p>
									<p class="small mb-5 pb-lg-2">
										<a class="text-muted" href="/index/signUp">회원가입하기</a>
									</p>
								</div>
							</form>
						</div>
					</div>
					<div class="col-sm-6 px-0 d-none d-sm-block">
						<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img3.webp" alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left" />
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->
	
	<script>
	let typeChecked = false;
	
	document.getElementById('type').addEventListener('click', (e) => {
	    if (e.target.checked == true) {
	    	typeChecked = true;
	    	document.getElementById('userHeader').style.display = 'none';
	    	document.getElementById('teacherHeader').style.display = 'block';
	    } else {
	    	typeChecked = false
	    	document.getElementById('teacherHeader').style.display = 'none';
	    	document.getElementById('userHeader').style.display = 'block';
	    }
	});
	function onLogin() {
	    if (typeChecked == true) {
	        $.ajax({
				url:'./teacherLoginProc',
				type:'post',
				data:{
					"iftcId" : $("#ifmmId").val(),
					"iftcPassword" : $("#ifmmPassword").val(),
				},
				success:(res) => {
					if (res.rt == "success") {
						alert("로그인 성공!");
						location.href="/index/home";
					} else {
						alert("회원가입 실패");
					}
				},
				error:(jqXHR) => {
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	    } else{
	        $.ajax({
				url:'./loginProc',
				type:'post',
				data:{
					"ifmmId" : $("#ifmmId").val(),
					"ifmmPassword" : $("#ifmmPassword").val(),
				},
				success:(res) => {
					if (res.rt == "success") {
					    if($("#ifmmId").val() == "xdmin"){
					        alert("로그인 성공!");
					        location.href="/";
					    }else{
					        alert("로그인 성공!");
							location.href="/index/home";
					    }
					} else {
						alert("회원가입 실패");
					}
				},
				error:(jqXHR) => {
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	    }
	};
	
	/* kakao login test s */
	Kakao.init('b9cf1eafc801ea58dba76198cda5831f'); // test 용
    console.log(Kakao.isInitialized());

    $("#kakaoBtn").on("click", function() {

        Kakao.Auth.login({
            success : function(response) {
                Kakao.API.request({
                    url : '/v2/user/me',
                    success : function(response) {

                        var accessToken = Kakao.Auth.getAccessToken();
                        Kakao.Auth.setAccessToken(accessToken);

                        var account = response.kakao_account;

                        console.log(response)
                        console.log("email : " + account.email);

                        $("input[name=snsId]").val("카카오로그인");
                        $("input[name=name]").val(account.profile.nickname);
                        $("input[name=email]").val(account.email);
                        $("input[name=token]").val(accessToken);

                        /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */

                        $.ajax({
                            async : true,
                            cache : false,
                            type : "POST",
                            url : "/index/kakaoLoginProc",
                            data : {
                                "name" : $("input[name=name]").val(),
                                "snsId" : $("input[name=snsId]").val(),
                                "email" : $("input[name=email]").val(),
                                "token" : $("input[name=token]").val()
                            },
                            success : function(response) {
                                if (response.rt == "fail") {
                                    alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
                                    return false;
                                } else {
                                    window.location.href = "/index/home";
                                }
                            },
                            error : function(jqXHR, status, error) {
                                alert("알 수 없는 에러 [ " + error + " ]");
                            }
                        });
                    },
                    fail : function(error) {
                        console.log(error)
                    },
                })
            },
            fail : function(error) {
                console.log(error)
            },
        })
    });
    /* kakao login test e */
    
    
	</script>
	<script type="text/javascript">
	/* naver login test s */

    /* var naverLogin = new naver.LoginWithNaverId(
    {
    	clientId: "b8EhDTV3tvvAE_gRRBoJ",
    	callbackUrl: "http://localhost:8080/userLogin",
    	isPopup: false,
    	loginButton: {color: "green", type: 3, height: 70} 
    }
    ); */
    $("#naverBtn").on("click", function() {
        var naverLogin = new naver.LoginWithNaverId({
            clientId : "4JOr4ik1m49VZEf6PHR7",
            callbackUrl : "http://localhost:8080/index/login",
            isPopup : true
        });

        naverLogin.init();
		
        naverLogin.getLoginStatus(function(status) {
            if (!status) {
                naverLogin.authorize();
            } else {
                setLoginStatus(); //하늘님 메소드 실행 -> Ajax
            }
        });

        console.log(naverLogin);

        window.addEventListener('load', function() {
            if (naverLogin.accessToken != null) {
                naverLogin.getLoginStatus(function(status) {
                    if (status) {
                        /* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
                        setLoginStatus();
                    }
                });
            }

        });
        
        function setLoginStatus() {
            $.ajax({
                async : true,
                cache : false,
                type : "POST",
                url : "/index/naverLoginProc",
                data : {
                    "name" : naverLogin.user.name,
                    "snsId" : "네이버로그인",
                    "phone" : naverLogin.user.mobile,
                    "email" : naverLogin.user.email
                },
                success : function(response) {
                    if (response.rt == "fail") {
                        alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
                        return false;
                    } else {
                        location.href = "/index/home";
                    }
                },
                error : function(jqXHR, status, error) {
                    alert("알 수 없는 에러 [ " + error + " ]");
                }
            });
        }
        
    });
	</script>
    

</body>
</html>
