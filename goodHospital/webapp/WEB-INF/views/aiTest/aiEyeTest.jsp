<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
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




<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="margin-left: auto;" >
	<div class="brand-text font-weight-light">
	<span class="brand-text font-weight-light">
	<h1><a id="drlink" href="#">Dr.Link</a></h1></span>
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
          <a class="dropdown-item" href="#">AI 눈 진단</a>
          <a class="dropdown-item" href="#">AI 피부 진단</a>
          <a class="dropdown-item" href="#">AI 탈모 진단</a>
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


  
  
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Adventure Tours &amp; Trips">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>aiEyeTest</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aiTest/aiTestPage.css" media="screen">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aiTest/aiEyeTest.css" media="screen">
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/aiTest/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="${pageContext.request.contextPath}/resources/js/aiTest/aiTestPage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.0.9, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,990i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "teamD",
		"url": "index.html",
		"logo": "images/AdminLTELogo.png"
}</script>
    <meta property="og:title" content="aiEyeTest">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
  </head>
  <body class="u-body">
    <section class="u-clearfix u-section-1" id="sec-9473">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-font-merriweather u-text u-text-1">안녕하세요. AI 눈 진단 서비스입니다.</h2>
        <p class="u-align-center u-text u-text-2">"의사 한 명이 진단하는 것보다 2~3명이 보는 게 훨씬 더 정확하죠.&nbsp;의사 한 명이 혹시나 놓칠 수 있는 소견을&nbsp;&nbsp;<br>우리가 만든 인공지능(AI) 의료 소프트웨어가 잡아주기 때문에 더욱 정밀한 진료가 가능해져요."&nbsp;
        </p>
        <p class="u-text u-text-default u-text-3">- 의료 소프트웨어 전문업체 
뷰노의 김현준 대표 </p>
        <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout u-valign-middle u-container-layout-1">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/eyeRight1.jpg" alt="" class="u-border-10 u-border-custom-color-2 u-image u-image-round u-radius-30 u-image-1" data-image-width="600" data-image-height="682">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/eyeError1.jpg" alt="" class="u-border-10 u-border-custom-color-1 u-image u-image-round u-radius-30 u-image-2" data-image-width="564" data-image-height="564">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/eyeError2.jpg" alt="" class="u-border-10 u-border-custom-color-1 u-image u-image-round u-radius-30 u-image-3" data-image-width="400" data-image-height="400">
            <img src="${pageContext.request.contextPath}/resources/img/aiTest/eyeError3.jpg" alt="" class="u-border-10 u-border-custom-color-1 u-image u-image-round u-radius-30 u-image-4" data-image-width="225" data-image-height="225">
            <p class="u-text u-text-default u-text-4">정확한 진단을 위하여 정면에서 촬영한 사진을 업로드 해주세요.<br>
            </p>
            <p class="u-text u-text-default u-text-5">
              <span style="font-size: 0.875rem;">지나친 메이크업, 얼굴 전체모습,&nbsp; 측면 모습 등은 정확한 AI진단이 어려울수 있습니다.</span>
              <br>
            </p>
          </div>
        </div>
        
        
        
<script class="jsbin" src="${pageContext.request.contextPath}/resources/js/aiTest/aiEyeTest.js"></script>
<div class="file-upload">
  <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">이미지 추가</button>

  <div class="image-upload-wrap">
    <input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
    <div class="drag-text">
      <h3>이미지를 여기에 올려 놓으세요.</h3>
    </div>
  </div>
  <div class="file-upload-content">
    <img class="file-upload-image" src="#" alt="your image" />
    <div class="image-title-wrap">
     <span class="image-title">Uploaded Image</span><p>
      <button type="button" onclick="removeUpload()" class="remove-image">삭제</button>
      <button type="button" onclick="removeUpload()" class="save-image">전송</button>
    </div>
  </div>
</div>





        <h2 class="u-align-center u-heading-font u-subtitle u-text u-text-6">-진단 예측 결과-</h2>
        <div class="u-clearfix u-gutter-6 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-size-39 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-2">
                  <h3 class="u-text u-text-7">다래끼</h3>
                  <p class="u-text u-text-8">눈꺼풀에 생기는 화농성 염증의 통칭이다. 눈꺼풀에는 여러 종류의 분비샘이 있는데 이 분비샘에 발생한 급성 염증을 다래끼라고 한다.
 심한 경우 고름집이 잡히기도 한다. 안과에 내원하는 환자들의 대부분은 이렇게 고름샘이 잡혀있는 상태로 온다. 눈꺼풀과 그 주위가
 붓는 것은 물론이고 정말로 극심한 경우 얼굴 전체가 부어 오르기도 한다.</p>
                </div>
              </div>
              <div class="u-align-center-xl u-container-style u-layout-cell u-right-cell u-size-21 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-3">
                  <img class="u-expanded-width-sm u-expanded-width-xs u-image u-image-contain u-image-round u-image-5" src="${pageContext.request.contextPath}/resources/img/aiTest/eyeExample1.jpg" data-image-width="450" data-image-height="450">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-clearfix u-gutter-6 u-layout-wrap u-layout-wrap-2">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-size-39 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-4">
                  <h3 class="u-text u-text-9">눈꼽</h3>
                  <p class="u-text u-text-10">
                    <a class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-1" href="https://namu.wiki/w/%EC%95%88%EA%B5%AC" title="안구">눈</a>에 쌓인 이물질과 <a class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-2" href="https://namu.wiki/w/%EB%A8%BC%EC%A7%80" title="먼지">먼지</a>가 안구 옆의 오목한 부분에 쌓인 것. '아주 작은 것이나 적은 것'을 비유적으로 의미한다.<br>
                    <br>
                    <a class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-3" href="https://namu.wiki/w/%EB%B0%B0%EA%BC%BD" title="배꼽">배꼽</a>과 연결시키거나 '눈꼽'으로 발음되어서 눈'꼽'으로 잘못 알고 있는 사람도 많은데, 눈곱이 옳은 표현이다. 국어 사전을 찾아보면 곱이란 '부스럼이나 헌데에 끼는 골마지 모양의 물질', 즉 그냥 이물질이라는 것을 알 수 있으며 <a class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-4" href="https://namu.wiki/w/%EA%B3%B1%EC%B0%BD" title="곱창">곱창</a>을 생각하면 헷갈리지 않는다.
                  </p>
                </div>
              </div>
              <div class="u-align-center-xl u-container-style u-layout-cell u-right-cell u-size-21 u-layout-cell-4">
                <div class="u-container-layout u-valign-middle u-container-layout-5">
                  <img class="u-expanded-width-sm u-expanded-width-xs u-image u-image-contain u-image-round u-image-6" src="${pageContext.request.contextPath}/resources/img/aiTest/eyeExample2.jpg" data-image-width="280" data-image-height="180">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-1d97"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>