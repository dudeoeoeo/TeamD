<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<center><h2>●우울증  검사진단●</h2></center>
			</div>	
			
<center/><form action="surveyForm1" method="post"> 
<!--  <input type="radio" name="problem1"/> <br/>
 <input type="radio" name="problem2"/> <br/> <br/> -->
 	


  <fieldset name="problem1">
    <legend><b>1. 평소에는 아무렇지도 않던 일들이 괴롭고 귀찮게 느껴졌다.</b></legend> 
    <hr/> 
    <input type=radio name="problem1" value="그렇다">그렇다
    <input type=radio name="problem1" value="그렇지 않다">그렇지 않다
    <input type=radio name="problem1" value="보통이다">보통이다
    <input type=radio name="problem1" value="아니다">아니다
    <input type=radio name="problem1" value="매우아니다">매우아니다 
    <hr/>  
 </fieldset>
<fieldset name="problem2">
     <legend><b>2. 먹고 싶지 않고 식욕이 없다. </b></legend>
     <hr/> 
   	<input type=radio name="problem2" value="그렇다">그렇다
    <input type=radio name="problem2" value="그렇지않다">그렇지 않다
    <input type=radio name="problem2" value="보통이다">보통이다
    <input type=radio name="problem2" value="아니다">아니다
    <input type=radio name="problem2" value="매우아니다">매우아니다
    <hr/> 
</fieldset>

<fieldset name="problem3">
    <legend><b>3. 어느 누가 도와준다 하더라도 나의 울적한 기분을 떨쳐 버릴 수 없을 것 같다. </b></legend>
    <hr/> 
 	<input type=radio name="problem3" value="그렇다">그렇다
    <input type=radio name="problem3" value="그렇지않다">그렇지 않다
    <input type=radio name="problem3" value="보통이다">보통이다
    <input type=radio name="problem3" value="아니다">아니다
    <input type=radio name="problem3" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem4">
     <legend><b>4. 무슨 일을 하든 정신을 집중하기가 힘들었다. </b></legend>
     <hr/> 
    <input type=radio name="problem4" value="그렇다">그렇다
    <input type=radio name="problem4" value="그렇지않다">그렇지 않다
    <input type=radio name="problem4" value="보통이다">보통이다
    <input type=radio name="problem4" value="아니다">아니다
    <input type=radio name="problem4" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem5">
    <legend><b>5. 비교적 잘 지냈다. </b></legend>
    <hr/> 
    <input type=radio name="problem5" value="그렇다">그렇다
    <input type=radio name="problem5" value="그렇지않다">그렇지 않다
    <input type=radio name="problem5" value="보통이다">보통이다
    <input type=radio name="problem5" value="아니다">아니다
    <input type=radio name="problem5" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem6">
     <legend><b>6. 상당히 우울했다. </b></legend>
     <hr/> 
    <input type=radio name="problem6" value="그렇다">그렇다
    <input type=radio name="problem6" value="그렇지않다">그렇지 않다
    <input type=radio name="problem6" value="보통이다">보통이다
    <input type=radio name="problem6" value="아니다">아니다
    <input type=radio name="problem6" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem7">
    <legend><b>7. 모든 일들이 힘들게 느껴졌다. </b></legend>
    <hr/> 
    <input type=radio name="problem7" value="그렇다">그렇다
    <input type=radio name="problem7" value="그렇지않다">그렇지 않다
    <input type=radio name="problem7" value="보통이다">보통이다
    <input type=radio name="problem7" value="아니다">아니다
    <input type=radio name="problem7" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem8">
     <legend><b>8. 앞일이 암담하게 느껴졌다. </b></legend>
     <hr/> 
    <input type=radio name="problem8" value="그렇다">그렇다
    <input type=radio name="problem8" value="그렇지않다">그렇지 않다
    <input type=radio name="problem8" value="보통이다">보통이다
    <input type=radio name="problem8" value="아니다">아니다
    <input type=radio name="problem8" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem9">
    <legend><b>9. 지금까지의 내 인생은 실패작이라는 생각이 들었다. </b></legend>
    <hr/> 
    <input type=radio name="problem9" value="그렇다">그렇다
    <input type=radio name="problem9" value="그렇지않다">그렇지 않다
    <input type=radio name="problem9" value="보통이다">보통이다
    <input type=radio name="problem9" value="아니다">아니다
    <input type=radio name="problem9" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem10">
     <legend><b>10. 적어도 보통 사람들 만큼의 능력은 있었다고 생각한다. </b></legend>
     <hr/> 
    <input type=radio name="problem10" value="그렇다">그렇다
    <input type=radio name="problem10" value="그렇지않다">그렇지 않다
    <input type=radio name="problem10" value="보통이다">보통이다
    <input type=radio name="problem10" value="아니다">아니다
    <input type=radio name="problem10" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem11">
    <legend><b>11. 잠을 설쳤다(잠을 잘 이루지 못했다).</b></legend>
    <hr/> 
    <input type=radio name="problem11" value="그렇다">그렇다
    <input type=radio name="problem11" value="그렇지않다">그렇지 않다
    <input type=radio name="problem11" value="보통이다">보통이다
    <input type=radio name="problem11" value="아니다">아니다
    <input type=radio name="problem11" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem12">
     <legend><b>12. 두려움을 느꼈다. </b></legend>
     <hr/> 
   	<input type=radio name="problem12" value="그렇다">그렇다
    <input type=radio name="problem12" value="그렇지않다">그렇지 않다
    <input type=radio name="problem12" value="보통이다">보통이다
    <input type=radio name="problem12" value="아니다">아니다
    <input type=radio name="problem12" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem13">
    <legend><b>13. 평소에 비해 말수가 적었다. </b></legend>
    <hr/> 
 	<input type=radio name="problem13" value="그렇다">그렇다
    <input type=radio name="problem13" value="그렇지않다">그렇지 않다
    <input type=radio name="problem13" value="보통이다">보통이다
    <input type=radio name="problem13" value="아니다">아니다
    <input type=radio name="problem13" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem14">
     <legend><b>14. 세상에 홀로 있는 듯한 외로움을 느꼈다. </b></legend>
     <hr/> 
    <input type=radio name="problem14" value="그렇다">그렇다
    <input type=radio name="problem14" value="그렇지않다">그렇지 않다
    <input type=radio name="problem14" value="보통이다">보통이다
    <input type=radio name="problem14" value="아니다">아니다
    <input type=radio name="problem14" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem15">
    <legend><b>15. 큰 불만 없이 생활했다. </b></legend>
    <hr/> 
    <input type=radio name="problem15" value="그렇다">그렇다
    <input type=radio name="problem15" value="그렇지않다">그렇지 않다
    <input type=radio name="problem15" value="보통이다">보통이다
    <input type=radio name="problem15" value="아니다">아니다
    <input type=radio name="problem15" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem16">
     <legend><b>16. 사람들이 나에게 차갑게 대하는 것 같았다. </b></legend>
     <hr/> 
    <input type=radio name="problem16" value="그렇다">그렇다
    <input type=radio name="problem16" value="그렇지않다">그렇지 않다
    <input type=radio name="problem16" value="보통이다">보통이다
    <input type=radio name="problem16" value="아니다">아니다
    <input type=radio name="problem16" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem17">
    <legend><b>17. 갑자기 울음이 나왔다. </b></legend>
    <hr/> 
    <input type=radio name="problem17" value="그렇다">그렇다
    <input type=radio name="problem17" value="그렇지않다">그렇지 않다
    <input type=radio name="problem17" value="보통이다">보통이다
    <input type=radio name="problem17" value="아니다">아니다
    <input type=radio name="problem17" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem18">
     <legend><b>18. 마음이 슬펐다. </b></legend>
     <hr/> 
    <input type=radio name="problem18" value="그렇다">그렇다
    <input type=radio name="problem18" value="그렇지않다">그렇지 않다
    <input type=radio name="problem18" value="보통이다">보통이다
    <input type=radio name="problem18" value="아니다">아니다
    <input type=radio name="problem18" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem19">
    <legend><b>19. 사람들이 나를 싫어하는 것 같았다. </b></legend>
    <hr/> 
    <input type=radio name="problem19" value="그렇다">그렇다
    <input type=radio name="problem19" value="그렇지않다">그렇지 않다
    <input type=radio name="problem19" value="보통이다">보통이다
    <input type=radio name="problem19" value="아니다">아니다
    <input type=radio name="problem19" value="매우아니다">매우아니다
    <hr/> 
</fieldset>
<fieldset name="problem20">
     <legend><b>20. 도무지 뭘 해 나갈 엄두가 나지 않았다. </b></legend>
     <hr/> 
    <input type=radio name="problem20" value="그렇다">그렇다
    <input type=radio name="problem20" value="그렇지않다">그렇지 않다
    <input type=radio name="problem20" value="보통이다">보통이다
    <input type=radio name="problem20" value="아니다">아니다
    <input type=radio name="problem20" value="매우아니다">매우아니다
    <hr/> 
</fieldset><br/>
<!--<center/><button onclick="mission()">제출하기</button>-->
<!-- <center><input type="button" onclick="mission(location.href='survey_main')" value="제출하기"></center> -->
<!--  <button type="submit">전송</button>-->
 <input type="submit" value="제출하기"/>
</form>
</div>
</div>

  

<div id="copyright" class="container">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>
</body>





<script language="javascript">
 
 function onSubmit(){

  var f = document.form;
  var flag_problem1 = false;  
  var flag_problem2 = false;  
  
<%--  // 로그인 여부체크하기
 <% if( uid.equals("")){ %>
   alert("로그인 해주세요");
   parent.location.href="<%= sslrootURL %>/Main/Member/M_Login.jsp";    

 <% }else{   %> --%>
  
  // 첫번째 선택값의 length 만큼( 라디오버튼의 갯수만큼) Loop 를 수행하여 선택값이 있으면  flag_Stylish == true 로 변경하고 break 를 통해 Loop 를 빠져 나온다
   
  for(i = 0 ; i < f.problem1.length;i++){
   if( f.problem1[i].checked == true ){
	   flag_problem1 = true;
    break;
   }
  }

  // 두번째 선택값의 length 만큼( 라디오버튼의 갯수만큼) Loop 를 수행하여 선택값이 있으면  flag_Lovely == true 로 변경하고 break 를 통해 Loop 를 빠져 나온다

  for(i = 0 ; i < f.problem2.length;i++){
   if( f.problem2[i].checked == true ){
	   flag_problem2 = true;
    break;
   }
  }

  // 설정된 값을 비교하여 경고창을 뛰울것인지 여부를 판단한다

  if( flag_problem1 == false ){
   alert("Stylish 경품을 선택해 주세요");
   f.problem1[0].focus();
   return;
  }
  

  if( flag_problem2 == false ){
   alert("Lovely 경품을 선택해 주세요");
   f.problem2[0].focus();
   return;
  }
  


 }
</script>













</html>