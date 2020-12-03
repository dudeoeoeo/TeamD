<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SURVEY_MAIN</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="resources/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

<style>

#drlink{
font-family: 'Major Mono Display', monospace; 
}


body {
    font-family: "Nanum Gothic", sans-serif;
}

</style>

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
          <a class="dropdown-item" href="health_info">건강정보</a>
          <a class="dropdown-item" href="survey_main">약품정보</a>
      </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          AI/설문진단
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="">AI진단</a>
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
		<center><h2 >●조울증  검사진단●</h2></center>
			</div>	
			
<center/><form action="surveyForm2" method="post">

 <fieldset name="m_problem1">
    <legend><b>1. 잠을 청하지만 자꾸만 뒤척이게 되고 잠이 안 온다.</b></legend>
    <hr/> 
    <input type=radio name="m_problem1" value="그렇다">그렇다
    <input type=radio name="m_problem1" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem1" value="보통이다">보통이다
    <input type=radio name="m_problem1" value="아니다">아니다
    <input type=radio name="m_problem1" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem2">
     <legend><b>2. 성적 욕구가 심하다는 느낌이 있다. </b></legend>
     <hr/> 
   	<input type=radio name="m_problem2" value="그렇다">그렇다
    <input type=radio name="m_problem2" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem2" value="보통이다">보통이다
    <input type=radio name="m_problem2" value="아니다">아니다
    <input type=radio name="m_problem2" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem3">
    <legend><b>3. 한 가지 일에 집중하는 것이 어렵고 산만하다. </b></legend>
    <hr/> 
 	<input type=radio name="m_problem3" value="그렇다">그렇다
    <input type=radio name="m_problem3" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem3" value="보통이다">보통이다
    <input type=radio name="m_problem3" value="아니다">아니다
    <input type=radio name="m_problem3" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem4">
     <legend><b>4. 몸이 쳐지고 무기력하며 움직이기가 싫다. </b></legend>
     <hr/> 
    <input type=radio name="m_problem4" value="그렇다">그렇다
    <input type=radio name="m_problem4" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem4" value="보통이다">보통이다
    <input type=radio name="m_problem4" value="아니다">아니다
    <input type=radio name="m_problem4" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem5">
    <legend><b>5. 깊게 무언가를 생각하지 않고 일을 막 벌인다. </b></legend>
    <hr/> 
    <input type=radio name="m_problem5" value="그렇다">그렇다
    <input type=radio name="m_problem5" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem5" value="보통이다">보통이다
    <input type=radio name="m_problem5" value="아니다">아니다
    <input type=radio name="m_problem5" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem6">
     <legend><b>6. 식욕이 줄었다. </b></legend>
     <hr/> 
    <input type=radio name="m_problem6" value="그렇다">그렇다
    <input type=radio name="m_problem6" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem6" value="보통이다">보통이다
    <input type=radio name="m_problem6" value="아니다">아니다
    <input type=radio name="m_problem6" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem7">
    <legend><b>7. 생각은 많은데 정리가 안 된다. </b></legend>
    <hr/> 
    <input type=radio name="m_problem7" value="그렇다">그렇다
    <input type=radio name="m_problem7" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem7" value="보통이다">보통이다
    <input type=radio name="m_problem7" value="아니다">아니다
    <input type=radio name="m_problem7" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem8">
     <legend><b>8. 갑자기 말이 많아지고 빨라지는 것을 느낀다. </b></legend>
     <hr/> 
    <input type=radio name="m_problem8" value="그렇다">그렇다
    <input type=radio name="m_problem8" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem8" value="보통이다">보통이다
    <input type=radio name="m_problem8" value="아니다">아니다
    <input type=radio name="m_problem8" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem9">
    <legend><b>9. 감정을 주체하기 어려워 소리를 지르거나 그러고 싶다. </b></legend>
    <hr/> 
    <input type=radio name="m_problem9" value="그렇다">그렇다
    <input type=radio name="m_problem9" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem9" value="보통이다">보통이다
    <input type=radio name="m_problem9" value="아니다">아니다
    <input type=radio name="m_problem9" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="m_problem10">
     <legend><b>10. 사소한 일에 감정의 변화가 빠르게 일어난다. </b></legend>
     <hr/> 
    <input type=radio name="m_problem10" value="그렇다">그렇다
    <input type=radio name="m_problem10" value="그렇지않다">그렇지 않다
    <input type=radio name="m_problem10" value="보통이다">보통이다
    <input type=radio name="m_problem10" value="아니다">아니다
    <input type=radio name="m_problem10" value="매우아니다">매우아니다
    <hr/> 
</fieldset><br/>

 <input type="submit" value="제출하기"/>
</form>
</div>
</div>

  </body>





<div id="copyright" class="container">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>
</html>