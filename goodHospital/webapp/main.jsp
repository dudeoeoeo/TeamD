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

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<aside class="main-sidebar ">
	<div class="brand-text font-weight-light">
	<span class="brand-text font-weight-light">
	<h1><a href="#">&ensp; Dr.Link</a></h1></span>
			
		</div>
</aside>
<nav class="main-header navbar navbar-expand navbar-white navbar-light" >
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
    <!-- Left navbar links -->
    
</nav>


<div style="background-image: URL(${pageContext.request.contextPath}/resources/img/banner.jpg)">
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
          <a class="dropdown-item" href="#">AI진단</a>
          <a class="dropdown-item" href="#">설문진단</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
	<div id="header" class="content-header">
	<div class="container-fluid">
	</div>
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
