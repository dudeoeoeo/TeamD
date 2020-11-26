<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : OpenSpace 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20140131

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/aiTest/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/css/aiTest/fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/css/aiTest/Page-1.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/resources/css/aiTest/nicepage.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<link href="${pageContext.request.contextPath}/resources/css/aiTest/fileupload.css" rel="stylesheet" type="text/css" media="all" />


</head>
<body>
<div id="header-wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">OpenSpace</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="active"><a href="#" accesskey="1" title="">Homepage</a></li>
				<li><a href="ophthalmology" accesskey="2" title="">AI 진단</a></li>
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				<li><a href="#" accesskey="4" title="">Careers</a></li>
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
			<ul>
				<li><a href="#" accesskey="1" title="">로그인</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="staff" class="container">
		<div class="title">
			<h2>AI 눈 진단</h2>
			<span>"의사 한 명이 진단하는 것보다 2~3명이 보는 게 훨씬 더 정확하죠. 의사 한 명이 혹시나 놓칠 수 있는 소견을 우리가 만든 인공지능(AI) 의료 소프트웨어가 잡아주기 때문에 더욱 정밀한 진료가 가능해져요." - 의료 소프트웨어 전문업체 뷰노의 김현준 대표(43)</ht></span> </div>
		<div class="exA"><img src="${pageContext.request.contextPath}/resources/img/aiTest/exeye.jpg" width="200" height="200" alt="" hspace=20/>
		<img src="${pageContext.request.contextPath}/resources/img/aiTest/faceeye.jpg" width="200" height="200" alt="" hspace=20/>
		<img src="${pageContext.request.contextPath}/resources/img/aiTest/makeupeye.jpg" width="200" height="200" alt="" hspace=20/>
		<img src="${pageContext.request.contextPath}/resources/img/aiTest/sideeye.jpg" width="200" height="200" alt="" hspace=20/>
		</div>
		<p style="text-align:right;">위의 예시들을 참고하여 알맞은 사진을 첨부해주세요.</p>
	</div>
	
	
	<div class="file-upload">
  <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">검사하기</button>

  <div class="image-upload-wrap" >
    <input class="file-upload-input" type='file' onchange="readURL(this);" accept="image/*" />
    <div class="drag-text">
      <h3>이미지를 여기에 올려놓으세요.</h3>
    </div>
  </div>
  <div class="file-upload-content" >
    <img class="file-upload-image" src="#" alt="your image" />
    <div class="image-title-wrap">
      <button type="button" onclick="removeUpload()" class="remove-image">삭제하기 <span class="image-title">추가한 이미지파일</span></button>
    </div>
  </div>
</div>

<h2 class="title">-진단 예측 결과-</h2>
    <section class="u-clearfix u-section-1" id="carousel_06b3">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-left-cell u-size-4 u-size-60-md u-layout-cell-1">
                <div class="u-container-layout u-valign-middle-xl u-container-layout-1">
                  <div class="u-align-left u-border-8 u-border-black u-line u-line-vertical u-line-1"></div>
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-size-33-xl u-size-35-lg u-size-35-sm u-size-35-xs u-size-60-md u-layout-cell-2">
              
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h3 class="u-text u-text-1">-진단 예측 결과-</h3>
                  <p class="u-text u-text-2">Whether your middle name is adrenaline or you're just trying out adventure travel for the first time, TourRadar has adrenaline-inducing tours for everyone. From solo trips to family adventure holidays across Southeast Asia,
                                    Oceania, South America, Scandinavia, and more, you'll be off on a thrilling experience in no time! Learn more about TourRadar's best adventure travel tours below.</p>
                </div>
              </div>
              <div class="u-align-center-xl u-container-style u-layout-cell u-right-cell u-size-21-lg u-size-21-sm u-size-21-xs u-size-23-xl u-size-60-md u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3">
                  <img class="u-expanded-width-sm u-expanded-width-xs u-image u-image-contain u-image-1" src="${pageContext.request.contextPath}/resources/img/134251OS9RMP118.jpg" data-image-width="600" data-image-height="443">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



<div id="center">
      <h3 id="result" style="text-align:center;">-진단 예측 결과-</h3>
      <hr>
      <div id="result1">
        <h3>
          <details open="">
            <summary>
              <span id="name1">어루러기</span>
            </summary>
            <ul>
              <hr>
              <li>정의</li>
              <hr>
              <li>
                <h5>
                  <div id="name1detail1">어루러기는 곰팡이균의 일종인 말라세지아 푸르푸르(Malassezia furfur)라는 효모균이 피부 각질층에 과다 증식하여 나타나는 피부 질환입니다. 이 균은 정상인의 피부에 상시 존재하고 있습니다. 피부 산성도(pH)가 변화하여 저항력이 약해지거나, 덥고 습기가 많은 환경이 되면 어루러기 증세가 나타납니다.</div>
                </h5>
              </li>
              <hr>
              <li>증상</li>
              <hr>
              <li>
                <h5>
                  <div id="name1detail2">목, 가슴, 등, 겨드랑이 등 다양한 부위에 다양한 크기의 얼룩덜룩한 반점이 생깁니다. 모낭을 중심으로 버짐과 같은 각질이 생겨서 동전 모양을 보이다가 합쳐져 커지기도 합니다. 병변의 색상은 갈색, 황갈색, 회백색 등 다양하게 나타납니다. 가려운 증상은 없거나 가벼울 수 있습니다. 햇빛에 노출되는 부위에는 백반증과 유사한 탈색 반점이 나타나기도 합니다. 증세는 여름철에 발생합니다. 여름철마다 재발하는 특성이 있습니다.</div>
                </h5>
              </li>
            </ul>
          </details>
        </h3>
      </div>
      <div id="result2">
        <h3>
          <details open="">
            <summary>
              <span id="name2">두드러기</span>
            </summary>
            <ul>
              <hr>
              <li>정의</li>
              <hr>
              <li>
                <h5>
                  <div id="name2detail1">두드러기는 벌레에 물렸을 때 부풀어 오르는 것과 같은 팽진과 그 주위를 둘러싸는 발적이 특징적으로 나타나는 증상입니다. 피부가 몹시 가려우며, 경계가 명확한 병변이 홍색 또는 흰색으로 부어오릅니다. 이러한 팽진은 혈관 반응으로 인해 피부의 진피에 나타나는 일시적인 부종에 의해 생깁니다. 각각의 병변은 24시간 이상 지속되지 않습니다.</div>
                </h5>
              </li>
              <hr>
              <li>증상</li>
              <hr>
              <li>
                <h5>
                  <div id="name2detail2">급성 두드러기와 만성 두드러기 두드러기는 유발 인자에 따라 매우 다양하게 구별할 수 있지만, 크게는 급성과 만성으로 나눌 수 있습니다. 두드러기가 6주 이상 반복적으로 나타나면 만성으로, 그 이하면 급성으로 분류합니다. 급성 두드러기는 1주일 정도 지나면 없어지는 경우가 많습니다. 음식이 원인이라고 하더라도 시간이 지나면 체내에서 분해되거나 체외로 배설됩니다. 따라서 원인을 찾기보다는 가렵고 붓는 증상이 있는 동안 스테로이드와 항히스타민제를 적절히 투약하여 치료하는 것이 좋습니다. 만성 두드러기는 6주 이상 오랜 기간 유지되며, 경우에 따라서는 수년간 지속적으로 발생합니다. 만성 두드러기 환자의 70%는 두드러기의 원인을 알 수 없습니다. 감염, 대사 및 내분비계 이상, 악성 종양, 정신적 요인과의 관련성이 지적됩니다. 나머지 30%의 경우 자가 면역 기전과 관계있다는 보고가 있습니다.</div>
                </h5>
              </li>
            </ul>
          </details>
        </h3>
      </div>
      <hr>
    </div>






<div id="welcome-wrapper">
	<div id="welcome" class="container">
		<div class="title">
			<h2>Welcome to our website</h2>
		</div>
		<p>This is <strong>OpenSpace</strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>. The photos in this template are from <a href="http://fotogrph.com/"> Fotogrph</a>. This free template is released under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so you're pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :) </p>
	</div>
</div>
<div id="copyright" class="container">
	<p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
</div>





<script>
$(document).ready({
function readURL(input) {
	  if (input.files && input.files[0]) {

	    var reader = new FileReader();

	    reader.onload = function(e) {
	      $('.image-upload-wrap').hide();

	      $('.file-upload-image').attr('src', e.target.result);
	      $('.file-upload-content').show();

	      $('.image-title').html(input.files[0].name);
	    };

	    reader.readAsDataURL(input.files[0]);

	  } else {
	    removeUpload();
	  }
	}
});
$(document).ready({
	function removeUpload() {
	  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
	  $('.file-upload-content').hide();
	  $('.image-upload-wrap').show();
	}
	$('.image-upload-wrap').bind('dragover', function () {
			$('.image-upload-wrap').addClass('image-dropping');
		});
		$('.image-upload-wrap').bind('dragleave', function () {
			$('.image-upload-wrap').removeClass('image-dropping');
	});
	}); 



</script>



</body>
</html>
