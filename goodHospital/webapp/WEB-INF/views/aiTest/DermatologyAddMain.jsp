<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="resources/css/main_default.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/main_fonts.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style>

body {
    font-family: "Nanum Gothic", sans-serif;
}

#header-wrapper{
	background-image: url("${pageContext.request.contextPath}/resorces/img/banner.jpg");
	background-size : cover;
}

</style>

	<!-- 피부진단 css -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="안녕하세요. AI 피부 진단 서비스입니다., -진단 예측 결과-">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>피부검사</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aiTest/Dermatology/nicepage.css" media="screen">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aiTest/Dermatology/Page-2.css" media="screen">
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/aiTest/Dermatology/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/aiTest/Dermatology/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.0.8, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,990i">
    
    <!-- 파일업로드 링크 -->
    <link href="${pageContext.request.contextPath}/resources/css/aiTest/ophthalmology/fileupload.css" rel="stylesheet" type="text/css" media="all" />
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
	}
	</script>
    <meta property="og:title" content="Page 2">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">

</head>
<body class="u-body">
<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="margin-left: auto;" >
	<div class="brand-text font-weight-light">
	<span class="brand-text font-weight-light">
	<h1><a href="#">Dr.Link</a></h1></span>
	</div>
	<ul class="navbar-nav ml-auto" >
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">로그인</a>           
      </li>     
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">회원가입</a>           
      </li>     
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">오시는길</a>           
      </li>     
    </ul>
</nav>


<div>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	    <li class="nav-item active">
	        <a class="nav-link" href="#">병원이야기</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">진료예약/안내</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">건강/약품정보</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          AI/설문진단
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" >AI진단</a>
	          <a class="dropdown-item" href="#">AI피부진단</a>
	          <a class="dropdown-item" href="#">설문진단</a>
	        </div>
	      </li>
	    </ul>
	  </div>
	</nav>
</div>








<header class="u-align-left u-clearfix u-header u-header" id="sec-f235"><div class="u-clearfix u-sheet u-sheet-1"></div></header> 
    <section class="u-clearfix u-section-1" id="sec-ea99">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-font-merriweather u-text u-text-1">안녕하세요. AI 피부 진단 서비스입니다.</h2>
        <p class="u-align-center u-text u-text-2">“향후 의료계에서 AI와 의사는 서로를 대체하는 것이 아닌 상호 보완적인 역할을 할 것이며&nbsp;<br>의사의 진단능력을 향상시켜주는 조력자가 될 것으로 기대한다”
        </p>
        <p class="u-text u-text-default u-text-3">- 분당서울대병원 피부과 나정임 교수</p>
        <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/Dermatology/skinRight1.jpg" alt="" class="u-border-10 u-border-custom-color-2 u-image u-image-round u-radius-30 u-image-1" data-image-width="512" data-image-height="341">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/Dermatology/skinError1.jpg" alt="" class="u-border-10 u-border-custom-color-1 u-image u-image-round u-radius-30 u-image-2" data-image-width="416" data-image-height="317">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/Dermatology/skinError2.jpg" alt="" class="u-border-10 u-border-custom-color-1 u-image u-image-round u-radius-30 u-image-3" data-image-width="600" data-image-height="600">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/Dermatology/skinError3.jpg" alt="" class="u-border-10 u-border-custom-color-1 u-image u-image-round u-radius-30 u-image-4" data-image-width="510" data-image-height="389">
            <p class="u-text u-text-default u-text-4">정확한 진단을 위하여 증상범위만 촬영한 사진을 업로드 해주세요.<br>
            </p>
            <p class="u-text u-text-default u-text-5">
              <span style="font-size: 0.875rem;">멀리서 촬영, 타투 포함, 사물 또는 눈,코,입 등이 포함된 사진으로는 정확한 AI진단이 어려울수 있습니다.</span>
              <br>
            </p>
          </div>
        </div>
        










<div id="wrapper">
	<div id="staff" class="container">
		<div class="title">
			<h3>최선의 진료로 환자의 건강한 삶에 기여한다</h3>
		</div>
		<div class="row">
		<div class="col-sm-4">
			<div class="position-relative">
			<img src="${pageContext.request.contextPath}/resources/img/pic01.jpg" width="225" height="350" alt="" />
			</div>
		</div>
		<div class="col-sm-4">
			<div class="position-relative">
			<img src="${pageContext.request.contextPath}/resources/img/pic02.jpg" width="225" height="350" alt="" />
			</div>
		</div>
		<div class="col-sm-4">
			<div class="position-relative">
			<img src="${pageContext.request.contextPath}/resources/img/pic03.jpg" width="225" height="350" alt="" />
			</div>
		</div>
		</div>
	</div>
	<div id="page" class="container">
	<div class="row">
		<div class="col-sm-4">
			<h2>소식/공지</h2>
			<p>TESTtestTESTtestTEST</p>
			<ul class="style4">
				<li class="first"><a href="#">TESTtestTESTtestTEST</a></li>
				<li><a href="#">TESTtestTESTtestTEST</a></li>
				<li><a href="#">TESTtestTESTtestTEST</a></li>
			</ul>
		</div>
		<div class="col-sm-4">
			<h2>Praesent<br />
				<span> scelerisque scelerisque</span></h2>
			<ul class="style3">
				<li class="first">
					<p class="date"><a href="#">Jan<b>30</b></a></p>
					<h3>Amet sed volutpat mauris</h3>
					<p><a href="#">Mauris tempus nibh sodales adipiscing dolore.</a></p>
				</li>
				<li>
					<p class="date"><a href="#">Jan<b>28</b></a></p>
					<h3>Sagittis diam dolor amet</h3>
					<p><a href="#">Duis arcu tortor fringilla sed  sed magna.</a></p>
				</li>
			</ul>
		</div>
		<div class="col-sm-4">
			<h2>온라인채널</h2>
			<img width="300" src="${pageContext.request.contextPath}/resources/img/insta_empty.jpg">
			<img width="300" src="${pageContext.request.contextPath}/resources/img/insta.jpg">
		</div>
	</div>
	</div>
</div>
<div id="welcome-wrapper">
	<div id="welcome" class="container">
		<div class="title">
			<h2>다람쥐</h2>
		</div>
			<p>
				쳇바퀴<strong>굴러간다</strong>도르르르르
				<a href="http://templated.co" rel="nofollow">TEMPLATED</a>. 
				The photos in this template are from 
				<a href="http://fotogrph.com/"> Fotogrph</a>. 
				This free template is released under the 
				<a href="http://templated.co/license">Creative Commons Attribution</a>
				license, so you're pretty much free to do whatever you want with it
				(even use it commercially) provided you give us credit for it. Have
				fun :)
			</p>
		</div>
</div>
<div id="copyright" class="container">
		<p>
			&copy; Untitled. All rights reserved. | Photos by <a
				href="http://fotogrph.com/">Fotogrph</a> | Design by <a
				href="http://templated.co" rel="nofollow">TEMPLATED</a>.
		</p>
	</div>
	
	
<!-- jQuery -->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="resources/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="resources/js/demo.js"></script>
<script src="resources/js/pages/dashboard3.js"></script>


<!-- jQuery UI -->
<script src="resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/js/adminlte.min.js"></script>
</body>
</html>
