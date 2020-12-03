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
.contents {
    width: 100%;
    overflow: hidden;
    background: #ffffff;
    padding-top: 26px;
    padding-bottom: 4em;
}
.sub_line {
    border-bottom: 2px solid #d0d0d0;
}
#sub_left h2.title {
    box-sizing: border-box;
    width: 244px;
    height: 98px;
    padding: 2em 1em;
    margin-bottom: .5em;
}
#sub_left h2.title {
    background: urlbackground-image: URL(${pageContext.request.contextPath}/resources/img/banner.jpg) no-repeat center;
}
#sub_left .snb {
    box-sizing: border-box;
    width: 244px;
    padding: 2em;
    margin-bottom: 2em;
    border: 3px solid #f58e50;
    border-radius: 10px;
}

#sub_left .sub_time {
    padding: 1em;
    margin-bottom: 2em;
    width: 244px;
}
.sub_head .top_location {
    margin-bottom: 54px;
    text-align: right;
}
.sub_container #sub_contents {
    float: right;
    width: 640px;
    margin-right: 0px;
}
#sub_left .snb ul li {
    padding: 11px 0;
    border-bottom: 2px solid #e9e9e9;
}

.sub_container #sub_left {
    float: left;
    width: 330px;
}
.sub_container #sub_contents {
    float: right;
    width: 640px;
    margin-right: 0px;
}
.sub_head .top_location {
    margin-bottom: 54px;
    text-align: right;
}
.sub_head .bot_title h3 {
    position: relative;
    height: 98px;
    line-height: 98px;
    font-size: 2.4em;
    font-weight: 400;
    float: left;
    color: #4e4e4e;
}
li, ol, ul {
    margin: 0;
    padding: 0;
    list-style: none inside;
}
.sub_head .top_location li {
    display: inline-block;
    margin-right: .5em;
    padding-right: 1em;
    background: url("${pageContext.request.contextPath}/resorces/img/health.png") no-repeat center right;
    color: #4e4e4e;
}





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
        <a href="#" class="nav-link">로그인</a>           
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


<div id="header-wrapper"  style="background-image: URL(${pageContext.request.contextPath}/resources/img/banner.jpg)"  >
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
<div id="contents sub_line">

	<div class="sub_container">
	<div id="sub_left">
	<h2 class="title">
	<span>건강정보</span>
	</h2>

	<div class="snb">
		
			<ul class="style4">
				<li class="first"><a href="#">건강컬럼</a></li>
				<li><a href="#">건강강좌</a></li>
				<li><a href="#">이럴떈이렇게</a></li>
			</ul>
		</div>
		
		<div class="sub_time">
			<h2>진료시간</h2>
			<ul>
				<li>
					<span>평일</span>
					"7:00~16:00"
					
				</li>
				<li>			
					<span>토요일</span>
					"7:00~13:00"
				</li>
			</ul>
		</div>
	</div>
	<div class="sub_head">
						<!-- Location -->
						<div class="top_location">
							<ul>
								<li>홈</li>
								<li>건강정보</li>
								<li class="current">건강칼럼</li>
							</ul>
						</div>

						<!-- Sub title -->
						<div class="bot_title">
							<h3><span>건강칼럼</span></h3>
						</div>
					</div>
		
		
	<table border="0" cellpadding="0" cellspacing="0" width="528">
<form name="frmNews" method="post" action="NewsList.asp">                                  
<tr>
    <td height="28"><select name='Gubun'><option value='A'>제목</option><option value='B'>내용</option></select>
    <input type="text" class="form1" name="keyword" value="" maxlength=20 style="width:100; padding-left:5"> 
    <input type=image src="/news/icon/net_skin/common_butn_search_01.gif" border="0" align="absmiddle">
    </td>
</tr>
</form>
</table>
<table cellpadding=0 cellspacing=0 border=0 width="530">
<tr>
    <td align="center">

    <table width="528" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor=#FFFFFF>
    <tr>
        <td align="center" background="/news/icon/net_skin/table_bg_01.gif" style="height:32px;width:50;"><font color=#666666>번호</font></td>
        <td background="/news/icon/net_skin/table_bg_02.gif" align="Center" style="height:32px;width:1px;"><IMG src="/news/icon/net_skin/table_img_01.gif"></td>
        <td align="center" nowrap background="/news/icon/net_skin/table_bg_02.gif" style="height:32px;width:200;"><font color=#666666>제목</font></td>
        <td background="/news/icon/net_skin/table_bg_02.gif" align="Center" style="height:32px;width:1px;"><IMG src="/news/icon/net_skin/table_img_01.gif"></td>
        <td align="center" nowrap background="/news/icon/net_skin/table_bg_02.gif" style="height:32px;width:100;"><font color=#666666>등록일</font></td>
        <td background="/news/icon/net_skin/table_bg_02.gif" align="Center" style="height:32px;width:1px;"><IMG src="/news/icon/net_skin/table_img_01.gif"></td>
    </tr>    <tr>
        <td align="center">1179</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26771&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">불면증, 한 번 걸리면 낫기 어려워</a> </td>
        <td></td>
        <td align="center">2020-11-13</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1178</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26770&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">귀지로 스트레스 호르몬을 측정할 수 있다?</a> </td>
        <td></td>
        <td align="center">2020-11-13</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1177</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26768&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">스트레스로 생기는 편두통 줄이는 간단한 방법 4</a> </td>
        <td></td>
        <td align="center">2020-10-29</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1176</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26767&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">설탕 없는 다이어트 음료, 심장에 어떤 영향을 줄까?</a> </td>
        <td></td>
        <td align="center">2020-10-29</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1175</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26764&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">껌을 씹는 게 체중 감량에 도움이 될까?</a> </td>
        <td></td>
        <td align="center">2020-10-21</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1174</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26762&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">매일 계란을 먹으면 우리 몸에 어떤 일이 일어날까?</a> </td>
        <td></td>
        <td align="center">2020-10-21</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1173</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26761&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">종달새형 vs 올빼미형 두통 환자, 두통 빈도와 호발 </a> </td>
        <td></td>
        <td align="center">2020-10-15</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1172</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26760&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">간에 지방이 쌓인다? 지방간에 관한 궁금증 풀이</a> </td>
        <td></td>
        <td align="center">2020-10-15</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1171</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26759&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">식품 속 발암 추정물질 ‘아크릴아마이드’ 안전관리 </a> </td>
        <td></td>
        <td align="center">2020-10-15</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    <tr>
        <td align="center">1170</td>
        <td></td>
        <td height="25"><a href="NewsView.asp?srno=26755&page=1&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=">혈당 조절이 뇌 건강에 영향을 미쳐 (연구)</a> </td>
        <td></td>
        <td align="center">2020-10-13</td>
        <td></td>
    </tr>
    <tr height="1">
        <td colSpan="6" height="1" style="HEIGHT: 1px" background="/news/icon/net_skin/list_line_01.gif"></td>
    </tr>    </table>

    <br><p>
    <table width="528" height=30 border="0" align="center" cellpadding="0" cellspacing="0" style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" class="table2">
    <tr>
        <td colspan="3" height="30" align="center"><img src='/BasicClass/BasicImages/board_icon_pre_02.gif' border=0 align=absmiddle>&nbsp;<img src='/BasicClass/BasicImages/board_icon_pre_01.gif' border=0 align=absmiddle>&nbsp;<b><font class=text6>1</font></b>&nbsp;<a href=/News/NewsList.asp?page=2&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>2</a>&nbsp;<a href=/News/NewsList.asp?page=3&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>3</a>&nbsp;<a href=/News/NewsList.asp?page=4&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>4</a>&nbsp;<a href=/News/NewsList.asp?page=5&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>5</a>&nbsp;<a href=/News/NewsList.asp?page=6&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>6</a>&nbsp;<a href=/News/NewsList.asp?page=7&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>7</a>&nbsp;<a href=/News/NewsList.asp?page=8&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>8</a>&nbsp;<a href=/News/NewsList.asp?page=9&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>9</a>&nbsp;<a href=/News/NewsList.asp?page=10&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=>10</a>&nbsp;<a href=/News/NewsList.asp?page=2&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=><img src='/BasicClass/BasicImages/board_icon_next_01.gif' valign=absmiddle border=0 align=absmiddle></a>&nbsp;<a href=/News/NewsList.asp?page=11&Menu=0&Gubun=&GubunSrno=0&PageSize=10&Key=&KeyWord=><img src='/BasicClass/BasicImages/board_icon_next_02.gif' valign=absmiddle border=0 align=absmiddle></a>                                                                          
        </td>
    </tr>
    </table>
    
    </td>
</tr>
</table>
<br><br>
<!-- 공통 테이블 마침 -->			 				</div>
				<!-- /sub_contents -->
			</div>
			<!-- /sub_container -->
		</div>	


<div id="page1" class="container"  >
			
	</div>
	<ul class="bxslider">
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos1.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos2.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos3.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos4.jpg" /></li>
	  <li id="bxslider"><img src="${pageContext.request.contextPath}/resources/img/hos5.jpg" /></li>
	</ul>
		
	</div>
</div>
</div>
</div>


<div id="copyright" class="container">
		<p>
			&copy; Untitled. All rights reserved. | Photos by <a
				href="http://fotogrph.com/">Fotogrph</a> | Design by <a
				href="http://templated.co" rel="nofollow">TEMPLATED</a>.
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
