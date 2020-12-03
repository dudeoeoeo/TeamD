<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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







<link href="${pageContext.request.contextPath}/resources/css/patient/myPage.css" rel="stylesheet" type="text/css">
</head>






<body>
<div class="chartcont_wrap">

				<!-- Page Title -->
				<div class="charttitbtn_wrap">
					<p class="tit">회원정보수정</p>
					<div class="close">
						<a href="/asan/main.do"><img src="/asan/images/reservation/bg_reserclose.gif" alt="닫기"></a>
					</div>
				</div>
				<!-- /Page Title -->
			
	
	 <input type="hidden" id="gubun" value="G">
	 <input type="hidden" id="pttId" value="">		
	 
	<!-- START ::::: -->
	<p class="tblt_checktxt gap01"><img src="/asan/images/reservation/img_check04.gif" alt=""> 표시는 필수 입력하여야 합니다.</p>
	<div class="tbl_chart_wrap">
		<table class="tbl_chart type01">
			<colgroup>
				<col style="width:200px;">
				<col>
			</colgroup>
			<tbody><tr>
				<th>아이디</th>
				<td>ksungmin10</td>
			</tr>
			<tr>
				<th>성명</th>
				<td>
				    
						<input type="text" id="name" name="name" value="김성민" class="text" style="width:160px;" title="이름입력">
					
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>
					<select id="birthyyyy" name="birthyyyy" title="생년월일 중 년을 선택해주세요." style="width:75px;margin-right:5px;" class="select"><option value="">년</option><option value="2020">2020 년</option><option value="2019">2019 년</option><option value="2018">2018 년</option><option value="2017">2017 년</option><option value="2016">2016 년</option><option value="2015">2015 년</option><option value="2014">2014 년</option><option value="2013">2013 년</option><option value="2012">2012 년</option><option value="2011">2011 년</option><option value="2010">2010 년</option><option value="2009">2009 년</option><option value="2008">2008 년</option><option value="2007">2007 년</option><option value="2006">2006 년</option><option value="2005">2005 년</option><option value="2004">2004 년</option><option value="2003">2003 년</option><option value="2002">2002 년</option><option value="2001">2001 년</option><option value="2000">2000 년</option><option value="1999">1999 년</option><option value="1998">1998 년</option><option value="1997">1997 년</option><option value="1996">1996 년</option><option value="1995">1995 년</option><option value="1994">1994 년</option><option value="1993">1993 년</option><option value="1992">1992 년</option><option value="1991" selected="selected">1991 년</option><option value="1990">1990 년</option><option value="1989">1989 년</option><option value="1988">1988 년</option><option value="1987">1987 년</option><option value="1986">1986 년</option><option value="1985">1985 년</option><option value="1984">1984 년</option><option value="1983">1983 년</option><option value="1982">1982 년</option><option value="1981">1981 년</option><option value="1980">1980 년</option><option value="1979">1979 년</option><option value="1978">1978 년</option><option value="1977">1977 년</option><option value="1976">1976 년</option><option value="1975">1975 년</option><option value="1974">1974 년</option><option value="1973">1973 년</option><option value="1972">1972 년</option><option value="1971">1971 년</option><option value="1970">1970 년</option><option value="1969">1969 년</option><option value="1968">1968 년</option><option value="1967">1967 년</option><option value="1966">1966 년</option><option value="1965">1965 년</option><option value="1964">1964 년</option><option value="1963">1963 년</option><option value="1962">1962 년</option><option value="1961">1961 년</option><option value="1960">1960 년</option><option value="1959">1959 년</option><option value="1958">1958 년</option><option value="1957">1957 년</option><option value="1956">1956 년</option><option value="1955">1955 년</option><option value="1954">1954 년</option><option value="1953">1953 년</option><option value="1952">1952 년</option><option value="1951">1951 년</option><option value="1950">1950 년</option><option value="1949">1949 년</option><option value="1948">1948 년</option><option value="1947">1947 년</option><option value="1946">1946 년</option><option value="1945">1945 년</option><option value="1944">1944 년</option><option value="1943">1943 년</option><option value="1942">1942 년</option><option value="1941">1941 년</option><option value="1940">1940 년</option><option value="1939">1939 년</option><option value="1938">1938 년</option><option value="1937">1937 년</option><option value="1936">1936 년</option><option value="1935">1935 년</option><option value="1934">1934 년</option><option value="1933">1933 년</option><option value="1932">1932 년</option><option value="1931">1931 년</option><option value="1930">1930 년</option><option value="1929">1929 년</option><option value="1928">1928 년</option><option value="1927">1927 년</option><option value="1926">1926 년</option><option value="1925">1925 년</option><option value="1924">1924 년</option><option value="1923">1923 년</option><option value="1922">1922 년</option><option value="1921">1921 년</option><option value="1920">1920 년</option><option value="1919">1919 년</option><option value="1918">1918 년</option><option value="1917">1917 년</option><option value="1916">1916 년</option><option value="1915">1915 년</option><option value="1914">1914 년</option><option value="1913">1913 년</option><option value="1912">1912 년</option><option value="1911">1911 년</option><option value="1910">1910 년</option><option value="1909">1909 년</option><option value="1908">1908 년</option><option value="1907">1907 년</option><option value="1906">1906 년</option><option value="1905">1905 년</option><option value="1904">1904 년</option><option value="1903">1903 년</option><option value="1902">1902 년</option><option value="1901">1901 년</option><option value="1900">1900 년</option></select><select id="birthMM" name="birthMM" title="생년월일 중 월을 선택해주세요." style="width:75px;margin-right:5px;" class="select"><option value="">월</option><option value="01">1 월</option><option value="02">2 월</option><option value="03">3 월</option><option value="04">4 월</option><option value="05">5 월</option><option value="06">6 월</option><option value="07">7 월</option><option value="08">8 월</option><option value="09">9 월</option><option value="10" selected="selected">10 월</option><option value="11">11 월</option><option value="12">12 월</option></select><select id="birthdd" name="birthdd" title="생년월일 중 일을 선택해주세요." style="width:75px;margin-right:5px;" class="select"><option value="">일</option><option value="01">1 일</option><option value="02">2 일</option><option value="03">3 일</option><option value="04">4 일</option><option value="05">5 일</option><option value="06">6 일</option><option value="07">7 일</option><option value="08">8 일</option><option value="09">9 일</option><option value="10">10 일</option><option value="11">11 일</option><option value="12" selected="selected">12 일</option><option value="13">13 일</option><option value="14">14 일</option><option value="15">15 일</option><option value="16">16 일</option><option value="17">17 일</option><option value="18">18 일</option><option value="19">19 일</option><option value="20">20 일</option><option value="21">21 일</option><option value="22">22 일</option><option value="23">23 일</option><option value="24">24 일</option><option value="25">25 일</option><option value="26">26 일</option><option value="27">27 일</option><option value="28">28 일</option><option value="29">29 일</option><option value="30">30 일</option><option value="31">31 일</option></select>

				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					
						<label for="m"><input type="radio" name="gender" id="m" value="M" class="radio" checked="checked">남자</label>
						<label for="w"><input type="radio" name="gender" id="w" value="F" class="radio">여자</label>
					
				</td>
			</tr>
			<tr>
				<th><span class="chk">휴대전화</span></th>
				<td>
					<p class="box01">입력하신 휴대전화 번호로 서울아산병원의 진료예약내역이 전송되오니 정확하게 입력하여 주시기 바랍니다.<br>부정확한 휴대전화 번호 입력 시 다른 사람에게 나의 진료예약 일정 정보가 전송될 수 도 있습니다.</p>
					<div class="box">
						<select id="tel1" name="tel1" class="selectText tel1 mobile1" title="검색구분 선택하기" style="width:87px; height:26px;"><option value="010" selected="selected">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option></select>
 - 
						<input type="text" id="tel2" class="inputText" style="width:90px;" value="5956"> - 
						<input type="text" id="tel3" class="inputText" style="width:90px;" value="5480">
					</div>
				</td>
			</tr>
			<tr>
				<th><span class="chk">e-mail</span></th>
				<td>
					<p class="box01">입력하신 e-mail로 서울아산병원의 진료예약내역이 전송되오니 정확하게 입력하여 주시기 바랍니다.<br>부정확한 e-mail 주소 입력 시 다른 사람에게 나의 진료예약 일정 정보가 전송될 수 도 있습니다.</p>
					<div class="box">
						<select id="emailSelect" name="emailSelect" class="selectText" title="검색구분 선택하기" style="width:169px; height:27px;"><option value="직접입력">직접입력</option><option value="dreamwiz.com">dreamwiz.com</option><option value="empas.com">empas.com</option><option value="gmail.com">gmail.com</option><option value="hanafos.com">hanafos.com</option><option value="paran.com">paran.com</option><option value="hotmail.com">hotmail.com</option><option value="korea.com">korea.com</option><option value="nate.com">nate.com</option><option value="naver.com">naver.com</option><option value="hanmail.net">hanmail.net</option></select>

						<a href="#" class="graySmBtn" style="margin-left:2px;" onclick="fnChangeEmail(); return false;"><span>선택</span></a>
						<input type="text" id="email1" class="inputText" style="width:150px;" value="ksungmin10"> @ 
						<input type="text" id="email3" class="inputText" style="width:150px;" value="gmail.com">
					</div>
				</td>
			</tr>
		</tbody></table>
	</div>
  <div class="add_info">
	  <p class="chart_tit">추가정보<span class="caption2">※ 추가정보 동의 거부 시 불이익은 없으나 해당 서비스를 제공받을 수 없습니다.</span></p>
  </div>
	<div class="tbl_chart_wrap">
		<table class="tbl_chart type01">
		  <tbody><tr>
		    <th>병원등록번호</th>
		    <td>
          <div class="inpSec">
          
            <input type="text" class="inputText" name="pttId" id="pttIdInput" value="" style="width:128px"> 
            <a href="#" title="병원등록번호 유효여부를 알려드립니다." onclick="fnChecPttId(); return false;" class="graySmBtn" id="temp1"><span id="temp2">확인</span></a>
            
		      </div>
        </td>
	    </tr>
		  <tr>
		    <th>직원확인</th>
		    <td><div class="inpSec">
		      <input type="text" class="inputText" name="empId" id="empId" value="" style="width:128px">
		      <a href="#empId" title="사번 유효여부를 알려드립니다." onclick="fnCheckEmpId(); return false;" class="graySmBtn"><span>확인</span></a>
		      <input type="hidden" id="empIdBefore" value="">
		      </div></td>
	    </tr>
		  <tr>
		    <th>의사면허번호</th>
		    <td><input type="text" class="inputText" name="licNo" id="licNo" style="width:128px" value=""></td>
	    </tr>
			</tbody><colgroup>
				<col style="width:200px;">
				<col>
			</colgroup>
			<tbody><tr>
				<th>e-mail 수신여부</th>
				<td>
					<p class="box01">서울아산병원에서 제공하는 메일을 수신하시겠습니까?(건강정보 / 병원소식 제공)<br>가입 완료 후 메일 수신 여부는 나의 차트에서 수정할 수 있습니다.</p>
					<div class="box">
						<input type="radio" id="mailingYn1" name="mailingYn" value="Y"> <label>수신함</label>
						<input type="radio" id="mailingYn2" name="mailingYn" value="N" checked="checked"> <label>수신안함</label>
					</div>
				</td>
			</tr>
			<tr>
				<th>가입 부서</th>
				<td>
					<div class="tbl_chartview_wrap type01">
						<table class="tbl_chartview type01">
							<colgroup>
								<col>
								<col style="width:140px;">
								<col style="width:140px;">
								<col style="width:140px;">
							</colgroup>
							<thead>
								<tr>
									<th>부서명</th>
									<th>상태</th>
									<th>가입일</th>
									<th>탈퇴일</th>
								</tr>
							</thead>
							<tbody>
							
								<tr>
									<td colspan="4" style="border-left:0;">가입된 부서가 없습니다.</td>
								</tr>
							
							</tbody>
						</table>
					</div>
				</td>
			</tr>
			
			
		</tbody></table>
	</div>
	
	<div class="chartbtn_wrap">
		<a href="#" onclick="fnSubmit(); return false;" class="greenMdBtn">회원정보 수정완료</a>
		<a href="/asan/mychart/main.do" class="whiteMdBtn">취소</a>
	</div>
	<!-- ::::: END -->
	
	
			</div>
</body>
</html>