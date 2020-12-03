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
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
<style>
#header-wrapper{
	background-image: url("${pageContext.request.contextPath}/resorces/img/banner.jpg");
	background-size : cover;
}


#drlink{
font-family: 'Major Mono Display', monospace; 
}


body {
    font-family: "Nanum Gothic", sans-serif;
}

.button-3d {
  position:relative;
  width: auto;
  display:inline-block;
  color:#ecf0f1;
  text-decoration:none;
  border-radius:5px;
  border:solid 1px #f39c12;
  background:#e67e22;
  text-align:center;
  padding:16px 18px 14px;
  margin: 12px;
  
  -webkit-transition: all 0.1s;
	-moz-transition: all 0.1s;
	transition: all 0.1s;
	
  -webkit-box-shadow: 0px 6px 0px #d35400;
  -moz-box-shadow: 0px 6px 0px #d35400;
  box-shadow: 0px 6px 0px #d35400; */
}

 .button-3d:active{
    -webkit-box-shadow: 0px 2px 0px #d35400;
    -moz-box-shadow: 0px 2px 0px #d35400;
    box-shadow: 0px 2px 0px #d35400;
    position:relative;
    top:4px;
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
	<div id="staff" class="container" >
		
		<div class="title">
			<h2>◆우울증</h2>
			</div>							
		<div class="boxA"><img src="${pageContext.request.contextPath}/resources/img/survey/depression1.jpg" width="300" height="300" alt="" /></div>
		<div class="boxB"><img src="${pageContext.request.contextPath}/resources/img/survey/depression2.jpg" width="300" height="300" alt="" /></div>
		<div class="boxC"><img src="${pageContext.request.contextPath}/resources/img/survey/depression3.jpg" width="300" height="300" alt="" /></div>				
	
	
	<div id="page1" class="container"  >
	
		<div class="boxA" ><br/>
			<h2>▶우울증이란?</h2>
			<br/>
			<p>스트레스에 대한 반응으로
				슬픔, 짜증, 분노 등은 누구에게나 오는
				자연스러운 현상입니다.
				
				이러한 현상들이
				'오랜 기간 지속되고
				혼자 만의 힘으로 빠져나올 수 없는 상태가
				지속될 때'를
				우울증이라고 합니다.
				
				이러한 상황에서는
				죽음으로 끝을 낼려는 경우가 굉장히 많아
				개인적으로도, 사회적으로도
				손실이 많다고 할 수 있습니다.
				</p></th>
		</div>
		<div class="boxB"><br/>
			<h2>▶우울증의원인?
			</h2><br/>
			<p>우울증은 하나의 원인으로만
				발생하는 경우는 거의 없습니다.
				복합적으로 발생을 하죠.
				
				각종 스트레스
				(인간관계, 재정문제, 사랑문제, 집안문제)
				신체적 건강문제, 약물 복용,
				지나친 음주 등과 같이
				여러 요인이 동시에 일어날 때 발생합니다.
				
				힘든 일이 복합적으로 발생할 때
				사람은 엄청난 고통을 느끼게 되잖아요?
				그럴 때 우울증에 걸리게 됩니다...
				</p>
				
		</div>
		<div class="boxC"><br/>
			<h2>▶우울증의 증상, 우울증의 증세?
			</h2>
			<p>
				• 슬픔이 지속되거나 이유 없이 눈물이 난다.

				• 식욕이나 수면습관의 큰 변화가 생긴다.
				
				• 짜증 또는 화를 내거나 걱정, 불안 증상이 나타난다.
				
				• 염세적이 되고 매사에 관심이 줄어든다.
				
				• 기운이 없게 느껴진다.
				
				• 죄책감이나 자신이 쓸모없다는 자책감에 빠진다.
				
				• 집중력이 떨어지고 우유부단해진다.
				
				• 이전에 즐기던 일이 재미없어지고, 사회생활이 줄어든다.
				
				• 이유 없이 여기저기가 아프다.
				
				• 죽음이나 자살에 대한 생각을 반복적으로 한다.
			</p>				
			</div>
		
</div>
		<center><h2><a href="survey_depression" class="button-3d">우울증 진단</a></h2></center>



		<div class="title">
		<h2>◆조울증</h2>
		</div>
		<div class="boxD"><img src="${pageContext.request.contextPath}/resources/img/survey/bipolarDisorder1.png" width="300" height="300" alt="" /></div>
		<div class="boxE"><img src="${pageContext.request.contextPath}/resources/img/survey/bipolarDisorder2.png" width="300" height="300" alt="" /></div>
		<div class="boxF"><img src="${pageContext.request.contextPath}/resources/img/survey/bipolarDisorder3.png" width="300" height="300" alt="" /></div>
		
		<div id="page1" class="container" >
		<div class="boxD"><br/>
			<h2>▶조울증의 증상, 조울증의 증세?
			</h2>
			<p>
			• 신체적인 행동뿐만 아니라 정신적인 활동도 활발해지며, 에너지가 증가한다.
			
			• 기분이 고조되고, 과도하게 낙관적이 되며, 자신감이 가득하다.
			
			• 쉽게 짜증을 내며, 공격적인 행동을 보인다.
			
			• 피곤을 느끼지 않으며 수면욕구도 줄어든다.
			
			• 과대사고에 빠져들고, 자존감이 고양된다.
			
			• 말이 빨라지며, 생각이 빠르게 돌아가는 느낌이 든다.
			
			• 충동적이 되며, 판단력이 떨어지고, 주변 일에 쉽게 주의가 끌린다.
			
			• 음주운전, 과속, 정상적이지 않은 과도한 성관계 등 무책임한 행동을 한다.
			
			• 증상이 심한 경우, 환각을 경험하고 망상에 사로잡히게 된다.
			</p>

		</div>
		<div class="boxE"><br/>
			<h2>▶조울증의원인?
				</h2><br/>
			<p>대표적 조울증 증상으로 감정의 변화가 크다는 것입니다. 이 감정은 오행적으로 볼 때 면역과 호르몬을 주관하는 상화(심포. 삼초)의 기운이 다스립니다. 즉 감정을 조절하고 다스리는 상화(심포. 삼초)의 기운이 약해지면 쉽게 감정의 이 변하고 조절 하지 못해 즐거웠다 슬펐다가를 반복 하는 조울증 증상이 발생되는 원인이 됩니다. 
				특히 스트레스를 많이 받게 되면 마음, 감정 , 면역, 호르몬을 주관하는 상화(심포. 삼초)의 기운의 기혈이 막히게 되어 조울증 증상이 쉽게 발생될 수 있습니다. 
				그리고 동양의학적으로 눈에 보이지 않는 에너지, 기운인 기가 제대로 순환이 되어야 인체 질병 질환이 발생되지 않습니다. 그러므로 기혈순환이 안되면 인체 면역과 조절기능을 주관하는 상화(심포. 삼초)의 기운이 약해져서 조울증 증상이 발생되는데 영향을 줍니다.				
				</p>

		</div>
		<div class="boxF"><br/>
			<h2>▶조울증 이란?
			</h2><br/>
			<p>일반적으로 조울증이라고 알려져 있는 마음의 병을 정신과에서는 양극성장애라는 병명을 사용합니다. 양극성장애는 기분, 에너지, 생각과 행동에 극단적인 변화가 특징으로 치료가 가능한 병입니다.			
			</p><br/>

		</div>
		
		
		</div>
		<center><h2><a href="survey_manicDepression" class="button-3d">조울증 진단</a></h2></center>
	</div>
	
</div>

<div id="welcome" class="footer">
		<p>
			&copy; Untitled. All rights reserved. | Photos by <a
				href="http://fotogrph.com/">Fotogrph</a> | Design by <a
				href="http://templated.co" rel="nofollow">TEMPLATED</a>.
		</p>
	</div>


</body>
</html>