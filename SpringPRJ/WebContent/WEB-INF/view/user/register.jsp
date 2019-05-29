<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"
	type="text/javascript"></script>
<script type="text/javascript">

	function doSubmit(f) {
		
		var f = document.getElementById("f");
		
		var idcnt = this.idcnt;
		
		if (f.usrName.value == "") {

			alert("이름을 입력하시기 바랍니다.");
			f.usrName.focus();
			return false;

		}
		
		if (f.usrID.value == "") {

			alert("아이디를 입력하시기 바랍니다.");
			f.usrID.focus();
			return false;

		}
		

		
		if (idcnt == 0) {

			alert("아이디 중복확인을 해주세요.");
			f.usrID.focus();
			return false;
		}
		
		if (f.usrHPNum.value == "") {

			alert("전화번호를 입력하시기 바랍니다.");
			f.usrHPNum.focus();
			return false;

		}
		
		if (f.usrEmail.value == "") {

			alert("이메일 입력하시기 바랍니다.");
			f.usrEmail.focus();
			return false;

		}

		if (f.usrPW.value == "") {

			alert("비밀번호를 입력하시기 바랍니다.");
			f.usrPW.focus();
			return false;

		}

		
		


	}
	

/* 
	const vali = {
		count:[],
		lengthCheck : function (e){
			vali.count.push(e);
			if(e.keyCode === 8 || e.keyCode === 46){
				vali.count.pop();
				vali.count.length=vali.count.length-1;
			}		
			console.log(vali.count.length);
			if(vali.count.length === 0){
				alert("공백입니다.")
				return false
			}
		}
			
	} */
	/*
	vali.id()
	*/
	
	
	/* //아이디 체크
	function idCheck() {

		if (blank.test(id.value) == true) {

			alert('공백은 사용할 수 없습니다');
			id.value = "";
			return false;

		}

		if (special.test(id.value) == true) {

			alert('특수문자는 사용이 불가능합니다');
			id.value = "";
			return false;

		}


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

	} */
	
	
</script>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Start your development with a Dashboard for Bootstrap 4.">
<meta name="author" content="Creative Tim">
<title>Argon Dashboard - Free Dashboard for Bootstrap 4</title>

<!-- Favicon -->
<link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<!-- Icons -->
<link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
<link
	href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<!-- Argon CSS -->
<link type="text/css" href="../assets/css/argon.css?v=1.0.0"
	rel="stylesheet">
</head>

<body class="bg-default">
	<form action="/usr/regProc.do" name="f" id="f" method="post" onsubmit="return doSubmit(this)">
		<div class="main-content">
			<!-- Navbar -->
			<nav
				class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
				<div class="container px-4">
					<a class="navbar-brand" href="http://localhost:9090/home.do"> <img
						src="../assets/img/brand/white.svg" />
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbar-collapse-main"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbar-collapse-main">
						<!-- Collapse header -->
						<div class="navbar-collapse-header d-md-none">
							<div class="row">
								<div class="col-6 collapse-brand">
									<a href="../index.html"> <img
										src="../assets/img/brand/blue.png">
									</a>
								</div>
								<div class="col-6 collapse-close">
									<button type="button" class="navbar-toggler"
										data-toggle="collapse" data-target="#navbar-collapse-main"
										aria-controls="sidenav-main" aria-expanded="false"
										aria-label="Toggle sidenav">
										<span></span> <span></span>
									</button>
								</div>
							</div>
						</div>
						<!-- Navbar items -->
						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link nav-link-icon"
								href="/home.do"> <i class="ni ni-planet"></i> <span
									class="nav-link-inner--text">홈</span>
							</a></li>
							<li class="nav-item"><a class="nav-link nav-link-icon"
								href="/register.do"> <i class="ni ni-circle-08"></i> <span
									class="nav-link-inner--text">회원가입</span>
							</a></li>
							<li class="nav-item"><a class="nav-link nav-link-icon"
								href="/login.do"> <i class="ni ni-key-25"></i> <span
									class="nav-link-inner--text">로그인</span>
							</a></li>
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
								<p class="text-lead text-light">사이트를 이용하시기에 앞서 회원가입 부탁드립니다.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="separator separator-bottom separator-skew zindex-100">
					<svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none"
						version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
        </svg>
				</div>
			</div>
			<!-- Page content -->
			<div class="container mt--8 pb-5">
				<!-- Table -->
				<div class="row justify-content-center">
					<div class="col-lg-6 col-md-8">
						<div class="card bg-secondary shadow border-0">
							<div class="card-header bg-transparent pb-5">
								<div class="card-body px-lg-5 py-lg-5">
									<div class="text-center text-muted mb-4">
										<small>회원가입하실 정보를 입력해주세요.</small>
									</div>
									<form role="form">
										<div class="form-group">
											<div class="input-group input-group-alternative mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="ni ni-hat-3"></i></span>
												</div>
												<input name="usrName" class="form-control" placeholder="이름"
													type="text">
											</div>
										</div>
										<div class="form-group">
											<div class="input-group input-group-alternative mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="ni ni-email-83"></i></span>
												</div>
												<input id="usrID" name="usrID" class="form-control"
													placeholder="아이디" type="text" onkeyup="check.idCheck()">
													<input
													class="btn btn-primary" value="중복 확인"
													type="button" onclick="func.idChk()"/>
											</div>
										</div>
										<script>
										
										
										</script>
										<div class="form-group">
											<div class="input-group input-group-alternative mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="ni ni-email-83"></i></span>
												</div>
												<input name="usrHPNum" id="usrHPNum" class="form-control"
													placeholder="전화번호" type="text">
											</div>
										</div>
										<div class="form-group">
											<div class="input-group input-group-alternative mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="ni ni-email-83"></i></span>
												</div>
												<input name="usrEmail" id="usrEmail" class="form-control"
													placeholder="이메일" type="email">
											</div>
										</div>
										<div class="form-group">
											<div class="input-group input-group-alternative">
												<div class="input-group-prepend">
													<span class="input-group-text"><i
														class="ni ni-lock-circle-open"></i></span>
												</div>
												<input name="usrPW" id="usrPW" class="form-control" placeholder="비밀번호"
													type="password">
											</div>
										</div>
										<div class="text-muted font-italic">
											<small>비밀번호 강도: <span
												class="text-red font-weight-700">없음</span></small>
										</div>

										<div class="text-center">
											<input type="submit" value="회원가입"
												class="btn btn-primary mt-4">
										</div>
									</form>
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
						<div class="col-xl-6"></div>
					</div>
				</div>
				<%@include file="/WEB-INF/view/jsCss.jsp" %>
			</footer>
		</div>
	</form>
</body>

</html>