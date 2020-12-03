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

<link rel="stylesheet" type="text/css" href="resources/css/login.css" media="all" />

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


    $(function(){  
      	    	
    	var member = $('#tab1');    	
    	var admin = $('#tab2');    	
    	var memberFrom = $('.loginFrom');    	
    	var adminFrom = $('.adminFrom');    	
    	
    	adminFrom.hide();    	
    	memberFrom.show();
    	
    	
    	member.click(function(){    		
    		adminFrom.hide();        	
        	memberFrom.show();  	    
   
    	});	
    	
    	
    	admin.click(function(){    		
    		adminFrom.show();        	
        	memberFrom.hide();
    	       
    	});	  
   });	 	

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


<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="margin-left: auto;" >
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
      <li class="nav-item">
        <a class="nav-link" href="#">건강/약품정보</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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

	
<div class="wrapper fadeInDown">
	<div class="container">
		<div class="title" style="margin: 1em !important;">
			<h3>로그인</h3>
		</div>
	
		<div class="card login-card" style="margin: 1rem !important;">
	        <div class="row no-gutters">
		        <div class="col-md-5">
		          	<div class="loginCont2">
						<ul>
							<li>회원님의 개인정보보호를 위하여 약 10분 동안 화면 이동이 없을 경우 자동으로<br>로그아웃 처리됩니다.</li>
							<li>비밀번호는 주기적으로 변경하고 타인에게 노출되지 않도록 주의하시기 바랍니다.</li>
							<li>로그인 후 모든 정보는 암호화하여 전송됩니다.</li>							
						</ul>
					</div>
		       	 </div>		
	       		<div class="col-md-7">
	            	<div class="card-body">
	              		<div id="formContent" class="card-body login-card-body">
							  
							<p class="login-card-description">
							<li id="tab1" class="btnCon"><a href="#tab1">회원</a></li>
							<li id="tab2" class="btnCon"><a href="#tab2">의료진</a></li>    
							</p>
							
							<form class="loginFrom" action="" method="post">  
								<div class="input-group mb-3">
						          <input type="email" class="form-control" placeholder="Email">
						          <div class="input-group-append">
						            <div class="input-group-text">
						              <span class="fas fa-envelope"></span>
						            </div>
						          </div>
						        </div>
						        <div class="input-group mb-3">
						          <input type="password" class="form-control" placeholder="Password">
						          <div class="input-group-append">
						            <div class="input-group-text">
						              <span class="fas fa-lock"></span>
						            </div>
						          </div>
						        </div>
									<input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
									<div class="col-8" style = "margin : auto;">
				            <button type="submit" class="btn btn-block btn-primary float-sm-right" style="width:100px !important;" formaction = "">ID찾기</button>
				            <button type="submit" class="btn btn-block btn-primary" style="width:100px !important;" formaction = "">회원가입</button>
						</div>
							 </form> 
		    
							<form class="doctor_main"  action="" method="post">
						    <div class="input-group mb-3">
					          <input type="email" class="form-control" placeholder="의료진 번호">
					          <div class="input-group-append">
					            <div class="input-group-text">
					              <span class="fas fa-envelope"></span>
					            </div>
					          </div>
					        </div>
					        <div class="input-group mb-3">
					          <input type="password" class="form-control" placeholder="Password">
					          <div class="input-group-append">
					            <div class="input-group-text">
					              <span class="fas fa-lock"></span>
					            </div>
					          </div>
					        </div>
							  <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
							  <div class="col-8" style = "margin : auto;">
				            <button type="submit" class="btn btn-block btn-primary float-sm-right" style="width:100px !important;" formaction = "">ID찾기</button>
				            <button type="submit" class="btn btn-block btn-primary" style="width:100px !important;" formaction = "">회원가입</button>
						</div>
							</form>
							
          				
						</div>
	                
	                <nav class="login-card-footer-nav">
	                </nav>
	            </div>
	          </div>
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
