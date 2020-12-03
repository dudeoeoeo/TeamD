
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
<link href="resources/css/main_default.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/main_fonts.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<!-- bxSlider Javascript file -->
<script src="resources/js/jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="resources/css/jquery.bxslider.css" rel="stylesheet" />

<script>
$(document).ready(function(){
    $('.bxslider').bxSlider( {
        mode: 'horizontal',// 가로 방향 수평 슬라이드
        speed: 300,        // 이동 속도를 설정
        pager: false,      // 현재 위치 페이징 표시 여부 설정
        moveSlides: 1,     // 슬라이드 이동시 개수
        minSlides: 5,      // 최소 노출 개수
        maxSlides: 5,      // 최대 노출 개수
        slideMargin: 1,    // 슬라이드간의 간격
        auto: true,        // 자동 실행 여부
        //autoHover: true,   // 마우스 호버시 정지 여부
        controls: false    // 이전 다음 버튼 노출 여부
    });
})
</script>

<style>

body {
    font-family: "Nanum Gothic", sans-serif;
}

#header-wrapper{
	background-image: url("${pageContext.request.contextPath}/resorces/img/banner.jpg");
	background-size : cover;
}

@media all and (min-width: 992px) {
	.navbar .nav-item .dropdown-menu{ display: none; }
	.navbar .nav-item:hover .nav-link{ color: black;  }
	.navbar .nav-item:hover .dropdown-menu{ display: block; }
	.navbar .nav-item .dropdown-menu{ margin-top:0; }
}	

#drlink{
font-family: 'Major Mono Display', monospace; 
}

ul .bxslider{
width:auto !important;
}

#bxslider{
width:auto !important;
}


</style>

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
<body>
<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="margin-left: auto"; >
	<div class="brand-text font-weight-light">
	<span class="brand-text font-weight-light">
	<h1><a id="drlink" href="#">Dr.Link</a></h1></span>
	</div>
	<ul class="navbar-nav ml-auto" >
      <li class="nav-item d-none d-sm-inline-block">
        <a href="user_login" class="nav-link">로그인</a>           
      </li>     
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">회원가입</a>           
      </li>     
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">오시는길</a>           
      </li>     
      
    </ul>
    <!-- navbar-nav ml-auto -->
    
</nav>


<div id="header-wrapper"style="background-image: URL(${pageContext.request.contextPath}/resources/img/banner.jpg)"  >
<div id="header-wrapper" style="background-image: URL(${pageContext.request.contextPath}/resources/img/banner.jpg)"  >
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
    <li class="nav-item">
        <a class="nav-link" href="#">병원이야기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">진료예약/안내</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
       	건강/약품정보</a>
       <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">건강정보</a>
          <a class="dropdown-item" href="searchMedicine">약품정보</a>
      </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          AI/설문진단
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="aiEyeTest">AI 눈 진단</a>
          <a class="dropdown-item" href="aiSkinTest">AI 피부 진단</a>
          <a class="dropdown-item" href="aiHairLossTest">AI 탈모 진단</a>
          <a class="dropdown-item" href="survey_main">설문진단</a>
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
			<div class="col-sm-3">
				<div class="position-relative">
				<img src="${pageContext.request.contextPath}/resources/img/sub01.jpg" width="190" height="380" alt="" />
				</div>
			</div>
			<div class="col-sm-3">
				<div class="position-relative">
				<img src="${pageContext.request.contextPath}/resources/img/sub02.jpg" width="190" height="380" alt="" />
				</div>
			</div>
			<div class="col-sm-3">
				<div class="position-relative">
				<img src="${pageContext.request.contextPath}/resources/img/sub03.jpg" width="190" height="380" alt="" />
				</div>
			</div>
			<div class="col-sm-3">
				<div class="position-relative">
				<img src="${pageContext.request.contextPath}/resources/img/sub04.jpg" width="190" height="380" alt="" />
				</div>
			</div>
		</div>
	</div>
	<div id="page" class="container">
	<div class="row">
		<div class="col-sm-4">
			<h2>소식/공지</h2>
			<ul class="style4">
				<li class="first"><a href="#">TESTtestTESTtestTEST</a></li>
				<li><a href="#">TESTtestTESTtestTEST</a></li>
				<li><a href="#">TESTtestTESTtestTEST</a></li>
				<li><a href="#">TESTtestTESTtestTEST</a></li>
				<li><a href="#">TESTtestTESTtestTEST</a></li>
			</ul>
		</div>
		<div class="col-sm-4">
			<h2>진료시간</h2>
			<table border="1" style="cellpadding : 10%; width:90%; text-align:center; ">
				<tr>
					<td>평일</td>
					<td>7:00~16:00</td>
				</tr>
				<tr>			
					<td>토요일</td>
					<td>7:00~13:00</td>
				</tr>
			</table>
			<br/>
			<h2>여기는 뭐 넣지</h2>
			<ul class="style2">
				<li class="second">
					<h5>아이디어</h5>
					<p><a href="#">받습니다</a></p>
				</li>
				<li>
					<h5>아이디어</h5>
					<p><a href="#">받습니다</a></p>
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
	<div id="" class="container">
	
	<ul class="bxslider">
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos1.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos2.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos6.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos3.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos4.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos5.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos7.jpg" /></li>
	</ul>
		
	</div>
</div>

<div class="main-footer" style="text-align: center !important; margin:0 !important;">
		<p>
			서울 금천구 가산디지털2로 123 월드메르디앙2차 | 대표자 : 고현영 |
			<span style="color:red">응급의료센터</span> 02-2626-1114<br/>
			Copyright &copy; by Dr.Link All Rights Reserved.
		</p>
	</div>
	
	
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
