<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	

	
	function doSubmit(f) {
		
		if (f.usrID.value == "") {
		
			alert("아이디를 입력하시기 바랍니다.");
			f.usrID.focus();
			return false;
		
		}
	
		if (f.usrPW.value == "") {
		
			alert("비밀번호를 입력하시기 바랍니다.");
			f.usrPW.focus();
			return false;
		
		}
	
		return true;
	
	}
	
	//아이디 체크
	function idCheck() {
		
		var id = document.getElementById('usrID');
		
		var blank = /[\s]/gi;
		
		if (blank.test(id.value) == true) {
			
			alert('공백은 사용할 수 없습니다');
			id.value = "";
			return false;
			
		}
		
		var special = /[.`~!@\#$%<>^&*\()\-=+_\’:;]/gi;
		
		if (special.test(id.value) == true) {
			
			alert('특수문자는 사용이 불가능합니다');
			id.value = "";
			return false;
			
		}
		
		var hangle = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/gi;
		
		if (hangle.test(id.value) == true) {
			
			alert('한글은 사용이 불가능합니다');
			id.value = "";
			return false;
			
		}
		
	}
	
	//비밀번호 체크
	function pwCheck() {
		
		var pw = document.getElementById('usrPW');
		
		var blank = /[\s]/gi;
		
		if (blank.test(pw.value) == true) {
			
			alert('공백은 사용할 수 없습니다');
			pw.value = "";
			return false;
			
		}
		
		
		
		var hangle = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]/gi;
		
		if (hangle.test(pw.value) == true) {
			
			alert('한글은 사용이 불가능합니다');
			pw.value = "";
			return false;
			
		}
		
	}

</script>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Argon Dashboard - Free Dashboard for Bootstrap 4</title>
  <!-- Favicon -->
  <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="../assets/css/argon.css?v=1.0.0" rel="stylesheet">
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body class="bg-default">
<form name="form1" action="/loginProc.do" method="post" onsubmit="return doSubmit(this);">
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
      <div class="container px-4">
        <a class="navbar-brand" href="/home.do">
          <img src="../assets/img/brand/white.svg" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-collapse-main">
          <!-- Collapse header -->
          <div class="navbar-collapse-header d-md-none">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="../index.html">
                  <img src="../assets/img/brand/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <!-- Navbar items -->
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link nav-link-icon" onclick="pageMove.single('home')" style="cursor:pointer">
                <i class="ni ni-planet"></i>
                <span class="nav-link-inner--text">홈</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" onclick="pageMove.usr('register')" style="cursor:pointer">
                <i class="ni ni-circle-08"></i>
                <span class="nav-link-inner--text">회원가입</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-link-icon" onclick="pageMove.single('login')" style="cursor:pointer">
                <i class="ni ni-key-25"></i>
                <span class="nav-link-inner--text">로그인</span>
              </a>
            </li>
            <%--<li class="nav-item">
              <a class="nav-link nav-link-icon" href="../examples/profile.html">
                <i class="ni ni-single-02"></i>
                <span class="nav-link-inner--text">Profile</span>
              </a>
            </li>--%>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header -->
    <div class="header bg-gradient-primary py-7 py-lg-8">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6">
              <h1 class="text-white">반가워요!</h1>
              <p class="text-lead text-light">사용하시기에 앞서 로그인해주시길 바랍니다.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="separator separator-bottom separator-skew zindex-100">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
      </div>
    </div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
          <div class="card bg-secondary shadow border-0">
            <div class="card-body px-lg-5 py-lg-5">
              <div class="text-center text-muted mb-4">
                <small>아이디와 비밀번호를 입력해주세요</small>
              </div>
              <form role="form">
                <div class="form-group mb-3">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                    </div>
                    <input name="usrID" id="usrID" class="form-control" placeholder="아이디" type="text" onkeyup="idCheck()">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    <input name="usrPW" id="usrPW" class="form-control" placeholder="비밀번호" type="password" onkeyup="pwCheck()">
                  </div>
                </div>
                <div class="custom-control custom-control-alternative custom-checkbox">
                  <input class="custom-control-input" id=" customCheckLogin" type="checkbox">
                  <label class="custom-control-label" for=" customCheckLogin">
                    <span class="text-muted">비밀번호 기억하기</span>
                  </label>
                </div>
                <div class="text-center">
                  <input type="submit" value="로그인" class="btn btn-primary my-4">
                  <a id="kakao-login-btn"></a>
				<a href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
  					//<![CDATA[
    				// 사용할 앱의 JavaScript 키를 설정해 주세요.
    				Kakao.init('1f2f7404c5c8929debca96bb8f0debca');
   					// 카카오 로그인 버튼을 생성합니다.
    				Kakao.Auth.createLoginButton({
      				container: '#kakao-login-btn',
      				 success: function(authObj) {
      			        // 로그인 성공시, API를 호출합니다.
      			        Kakao.API.request({
      			          url: '/v2/user/me',
      			          success: function(res) {
      			            alert(JSON.stringify(res));
      			          },
      			          fail: function(error) {
      			            alert(JSON.stringify(error));
      			          }
      			        });
      			      },
      			      fail: function(err) {
      			        alert(JSON.stringify(err));
      			      }
      			    });
   				function ktout() {
   					Kakao.Auth.logout(function () {
   						setTimeout(function(){
   							location.href="http://localhost:9090/login.do"
   						},1000);
   					});
   				}
      			  //]]>
      			</script>
                </div>
              </form>
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-6">
              <a href="/idFind.do" class="text-light"><small>아이디/비밀번호를 잊으셨나요?</small></a>
            </div>
            <div class="col-6 text-right">
              <a onclick="pageMove.usr('register')" style="cursor:pointer" class="text-light"><small>회원가입</small></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer -->
  <footer class="py-5">
    <div class="container">
      <div class="row align-items-center justify-content-xl-between">
        <div class="col-xl-6">
          <div class="copyright text-center text-xl-left text-muted">
          </div>
        </div>
        <div class="col-xl-6">
          <ul class="nav nav-footer justify-content-center justify-content-xl-end">
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <!-- Argon Scripts -->
  <!-- Core -->
 <%@include file="/WEB-INF/view/jsCss.jsp" %>
  </form>
</body>

</html>