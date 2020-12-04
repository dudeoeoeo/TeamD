<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" itemscope="itemscope" itemtype="http://schema.org/WebPage" lang="ko"><!--<![endif]--><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="google-site-verification" content="zhrvdqDsoNf_UTUVCQ69KI2gaXppoZaOeRDVSpAQIQw">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="google-site-verification" content="zhrvdqDsoNf_UTUVCQ69KI2gaXppoZaOeRDVSpAQIQw">


<title>분당서울대학교병원</title>
<meta name="description" content="세계 의료의 표준을 선도하는 국민의 병원 분당서울대학교병원">
<meta name="keywords" content="분당서울대학교병원, 서울대학교병원, 분당서울대병원, 나의진료정보, 진료안내, 진료예약, 병원소개, 건강정보, 의료진, 진료과, 처방정보, Health4U, 진료비결제, 증명서발급">
<meta name="title" content="분당서울대학교병원">
<meta property="og:site_name" content="분당서울대학교병원" />
<meta property="og:title" content="분당서울대학교병원" />
<meta property="og:description" content="세계 의료의 표준을 선도하는 국민의 병원 분당서울대학교병원" />
<meta property="og:url" content="https://www.snubh.org" />
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="-1"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta name="naver-site-verification" content="6d37e852acff7a5e9b48c8d0f42c343b94f6da7d"/>
<link rel="shortcut icon" href="/front/images/fav.ico">
<link type="text/css" rel="stylesheet" href="/front/common/css/default.css?ver=1.1" />
<script type="text/javascript" src="/front/common/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/front/common/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/front/common/js/app_interface.js"></script>
<script type="text/javascript" src="/front/common/js/design.js"></script>
<script type="text/javascript" src="/front/common/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="/front/common/js/common.js?v=20180624"></script>
<script type="text/javascript" src="/front/common/js/module/param.js"></script>
<script type="text/javascript" src="/front/common/js/module/hash.js"></script>
<script type="text/javascript" src="/front/common/js/jaso.js"></script>
<script type="text/javascript" src="/front/common/js/slick.js"></script> 

<!--[if IE 8]>
<script type="text/javascript" src="/front/common/js/html5.js"></script>
<meta name="format-detection" content="telephone=no"/>
<![endif]-->



<!-- head -->

	<style>
	body{background:#fff;}
	</style>
  <script src="/static/js/pcn_common.js"></script>
	<script type="text/javascript" src="/front/common/js/main.js"></script>
	<script type="text/javascript" src="/front/common/js/slick.js"></script> 
	<script type="text/javascript">
	$(document).ready(function(){

		health_data_load();
		
	});
	
	
	var load_idx = 0;
	var load_ing = false;
	function health_data_load(){
		
		if( load_ing == true ) return;
		load_ing = true;
		
		// 로딩 이미지 변경
		$( "#loader_btn" ).attr( "src", "/front/images/sub/ajax-loader.gif" );
		
		var start = 1 + (load_idx*3);
		var end = start + 2;
		
		setTimeout(function(){
			
			$.ajax({
				type: "POST",
				url: "/main/health_data_load.do",
				data: { "start": start, "end" : end, "load_idx": load_idx },
				success: health_data_result
			});
			
		}, 200 );
		
	}
	
	var b004_area = null;
	var b003_area = null;
	var b047_area = null;
	
	function health_data_result( data ){
		
		var data_arr = data.split( "!@!" );
		var edu_arr = $.parseJSON( data_arr[0] );			// 건강강좌
		var b004_arr = $.parseJSON( data_arr[1] );		// 헬스포커스
		var b003_arr = $.parseJSON( data_arr[2] );		// 헬스라이프
		var b047_arr = $.parseJSON( data_arr[3] );		// 힐링스토리
		var b048_arr = $.parseJSON( data_arr[4] );		// 스누비안존
		var b057_arr = $.parseJSON( data_arr[5] );		// 나음진
				
		//console.log( b004_arr);
		
		// 건강강좌
		var edu_html = edu_make_html( edu_arr );
		$( "#edu_area" ).append( edu_html );
		
		// 헬스포커스
		var b004_html = board_make_html( b004_arr, true, "b004" );
		$( "#b004_area" ).append( b004_html );
		
		// 헬스라이프
		var b003_html = board_make_html( b003_arr, true, "b003" );
		$( "#b003_area" ).append( b003_html );
		
		// 힐링스토리
		var b047_html = board_make_html( b047_arr, true, "b047" );
		$( "#b047_area" ).append( b047_html );
		
		// 스누비안존
		var b048_html = board_make_html( b048_arr, false, "b048" );
		$( "#b048_area" ).append( b048_html );
		
		// 나음진
		var b057_html = board_make_html( b057_arr, true, "b057" );
		$( "#b057_area" ).append( b057_html );
				
		load_ing = false;
		load_idx++;
		
		// 로딩 이미지 변경
		$( "#loader_btn" ).attr( "src", "/front/images/main/btn_more.png" );

		b004_area = $("#b004_area").slick({
			dots: false,
			fade: false,
			arrows:true,
			infinite: false,
			draggable:true,
			autoplay:false,
			speed: 300,
			autoplaySpeed: 1000,
			slidesToShow:1,
			slidesToScroll:1,
			pauseOnHover:false,
			focusOnSelect: true,
			accessibillity: false
		});

		b003_area = $("#b003_area").slick({
			dots: false,
			fade: false,
			arrows:true,
			infinite: false,
			draggable:true,
			autoplay:false,
			speed: 300,
			autoplaySpeed: 1000,
			slidesToShow:1,
			slidesToScroll:1,
			pauseOnHover:false,
			focusOnSelect: true,
			accessibillity: false
			
		});

		b047_area = $("#b047_area").slick({
			dots: false,
			fade: false,
			arrows:true,
			infinite: false,
			draggable:true,
			autoplay:false,
			speed: 300,
			autoplaySpeed: 1000,
			slidesToShow:1,
			slidesToScroll:1,
			pauseOnHover:false,
			focusOnSelect: true,
			accessibillity: false
			
		});
		
		resizeHelathData();
		
	}
	
	function resizeHelathData(){
		
		var widthsq = window.innerWidth;
		
		if(widthsq <= 480){
			b004_area.slick('getSlick');
			b003_area.slick('getSlick');
			b047_area.slick('getSlick');
		}else{
			b004_area.slick('unslick');
			b003_area.slick('unslick');
			b047_area.slick('unslick');
		}
		
	}

	
	function edu_make_html( arr ){
		
		var html = "";
		for( var i=0, j=arr.length; i<j; i++ ){
			
			var edu_dt = arr[i].EDU_DT;
			if( edu_dt && edu_dt.length >= 8 ){
				
				edu_dt = edu_dt.substr( 0,4 ) + "." + edu_dt.substr( 4,2 ) + "." + edu_dt.substr( 6,2 );
				
			}
			
			var sta_tm = arr[i].EDU_STA_TM;
			if( sta_tm && sta_tm.length >= 4 ){
				
				sta_tm = sta_tm.substr( 0,2 ) + ":" + sta_tm.substr(2,2);
				
			}
			
			var end_tm = arr[i].EDU_END_TM;
			if( end_tm && end_tm.length >= 4 ){
				
				end_tm = end_tm.substr( 0,2 ) + ":" + end_tm.substr(2,2);
				
			}
			
			html += "<li>";
			html += "<a class='btn_link' href='/service/lecture/healthLectView.do?EDU_NO=" + arr[i].EDU_NO + "'>";
			html += "<div>";
			html += "<dl>";
			html += "<dt>" + arr[i].EDU_TITLE + "</dt>";
			
			// 주제가 있을때에만 표시
			if( arr[i].EDU_SUBJECT ) {
				html += "<dd class='day_date'>주제 : " + arr[i].EDU_SUBJECT + "</dd>";
			}
			
			html += "<dd class='day_date'>일정 : " + edu_dt + "  " + sta_tm + " ~ " + end_tm + "</dd>";
			html += "<dd class='day_date'>강사 : " + arr[i].TECH_NM + "</dd>";
			html += "<dd class='day_date'>장소 :" + arr[i].PLACE_NM + "</dd>";
			html += "<dd></dd>"; // + arr[i].EDU_DETAIL + "</dd>";
			html += "</dl>";
			html += "</div>";
			html += "</a>";
			html += "</li>";
			
		}
		
		return html;
		
	}
	
	function board_make_html( arr, useImg, code ){
		
		var html = "";
		for( var i=0, j=arr.length; i<j; i++ ){
			
			var link = "";
			
			// 헬스포커스
			if( code == "b004" ){
				
				link = "/service/info/com/view.do?BNO=" + arr[i].BNO + "&Board_ID=" + arr[i].BOARD_ID + "&RNUM=" + arr[i].RNUM;
				
			// 헬스라이프
			}else if( code == "b003" ){
				
				link = "/service/info/folks/view.do?BNO=" + arr[i].BNO + "&Board_ID=" + arr[i].BOARD_ID + "&RNUM=" + arr[i].RNUM;
				
			// 힐링스토리
			}else if( code == "b047" ){
				
				link = "/service/hope/view.do?BNO=" + arr[i].BNO;
				
			// 스누비안존
			}else if( code == "b048" ){
				
				link = "/intro/news/snubhStory/view.do?BNO=" + arr[i].BNO;
				
			// 나음진
			}else if( code == "b057" ){
				
				link = "/file_download.do?board_id=" + arr[i].BOARD_ID + "&dirName=" + arr[i].FILE_DIR_NM + "&fileOrgName=" + arr[i].FILE_SYS_NM + "&fileRealName=" + arr[i].FILE_ORG_NM;
				
			}
			
			html += "<li>";
			html += "<a class='btn_link' href='" + link + "'>";
			html += "<div>";
			html += "<dl>";
			
			if( code == "b057" ){
			
				html += "<dt>" + arr[i].CONTENT + "</dt>";
  			html += "<dd class='sw_ebook_subject'>" + arr[i].SUBJECT + "</dd>";
				
			} else {

				html += "<dt>" + arr[i].SUBJECT + "</dt>";
				
			}
			
			
			if( useImg == true && arr[i].IMG_SRC ) {
				
				html += "<dd class='img_dd'><img src='" + arr[i].IMG_SRC + "' alt='" + arr[i].SUBJECT + " 이미지' width='220' /></dd>";
				
			}else {
				
				html += "<dd>" + arr[i].CONTENT + "</dd>";
				
			}
			
			html += "</dl>";
			html += "</div>";
			html += "</a>";
			html += "</li>";
			
		}
		
		return html;

	}
	
	// 검색어 없으면 의료진페이지로
	function chkTxt2( form ){
		
		if( !form.search_txt.value.trim() ){
			
			location.href="/medical/drMedicalTeam.do";
			return false;
			
		}
		
	}
		
	$(document).ready(function(){
		$(".bh_barco").click(function(){
		  if( '' != "" ) {
		  
		    $(".bh_barco_layer_wrap").show();
				$(".header_wrapper").css("z-index","-1");
		    
		  }
		});
			$(".bh_barco_layer_wrap").click(function(){
			$(".bh_barco_layer_wrap").hide();
			$(".header_wrapper").css("z-index","2");
		});
	});
	
	$(window).resize(function() {
	    var width_size = window.outerWidth;
	    if (width_size >= 480) {
	    	$("#b004_area").slick('unslick');
	    	$("#b003_area").slick('unslick');
	    	$("#b047_area").slick('unslick');
	    } else {
	    	$("#b004_area").slick('getSlick');
	    	$("#b003_area").slick('getSlick');
	    	$("#b047_area").slick('getSlick');
	    };
	});
	
	
	
	</script>



<script type="text/javascript">
console.log("2");
function chkTxt( form ){
  
  if( !form.search_txt.value.trim() ){
    
    form.search_txt.focus();
    alert("검색어를 입력해주세요.");
    return false;
    
  }
  
}

function autoComplete( oThis ){
  
  var word = oThis.value;
  if( !word.trim() ){
    
    // 초기화
    $( "#autocomplate_area" ).html( "" );
    $('#autocomplate_area').css('display','none');
    return;
    
  }
  
  // 검색어 조회 Ajax
  $.ajax({
    type: "POST",
    url: "/main/search_data_load.do",
    data: { "word": Jaso.parse( word ) },
    success: function( data ){ autoCompleteResult( data, word ) }
  });
  
}

function autoCompleteResult( data, word ){
  
  var html = "";
  var arr = $.parseJSON(data);
  
  if( arr && arr.length ){
    
    for( var i=0, j=arr.length; i<j; i++ ){
      
      $('#autocomplate_area').css('display','block');
      var searchTxt = arr[i].SEARCH_TXT;
      searchTxt = searchTxt.replaceAll( word, "<span class='find_word'>" + word + "</span>" );
      
      var url = arr[i].URL;
      html += "<li><span><a href='/search.do?search_txt=" + arr[i].SEARCH_TXT + "'>" + searchTxt + "</a></span></li>";
      
    }
    
  }
  
  $( "#autocomplate_area" ).html( html );
  
}

function autoNextFocus( txt1, slength, txt2 ){
  
  if( txt1.value.length == slength ){
    document.getElementsByName(txt2)[0].focus();
  }
  
}

function sendTitleKaKao( title ){
  
  //var label = "카카오톡 내보내기 서비스 입니다.\n\n";
  //label += "아래 링크를 클릭하시면 분당서울대학교병원 홈페이지 \"" + title + "\"메뉴로 이동합니다.";
  
  var label = "아래 버튼를 클릭하면 \"" + title + "\"메뉴로 이동합니다.";

  var json = {
    label: label,
    url : location.href
  };
  
  sendKAKAO( json );
  
}

function memberLogin(){
  
  var url = location.href;
  var rUrl = url.split( "https://www.snubh.org" )[1];
  location.href = "/member/login.do?prevURI=" + rUrl.replace( "?", "@!@" ).replaceAll( "&", "@_@" );
  
}

//번호 입력후 신청시 페이지 이동
function chkPhone( form ){
	
	if (isNaN(form.phone.value) == true ) {
		  alert( "연락처는 숫자만 가능합니다." );
		  form.phone.focus();
		  return false;  
		  
		}
	 
  var phone = form.phone.value;
  if( phone.length < 9 ){
    
    //location.href="/reserve/firstReserve.do";
    alert("연락처를 잘못 기입하셨습니다.\n\n다시 입력해주세요.");
    form.phone.value = "";
    form.phone.focus();
    return false;
    
  } else if( phone.length == 9 && phone.substr( 0, 2) != "02" ){
    
    alert("연락처를 잘못 기입하셨습니다.\n\n다시 입력해주세요.");
    form.phone.value = "";
    form.phone.focus();
    return false;
    
  } else if( phone.substr( 0, 2) == "02" ){
    
    var f = 2; // 앞자리
    var m = ( phone.length == 9 ) ? 3 : 4; // 가운데 자리
    var b = 4; // 마지막 자리
          
    
    var phnum1 = phone.substr( 0, f );
    var phnum2 = phone.substr( f, m );
    var phnum3 = phone.substr( (f+m), b );
    
    location.href="/reserve/firstReserve.do?phnum1=" + phnum1 + "&phnum2=" + phnum2 + "&phnum3=" + phnum3;
    
  }else{
    
    var f = 4; // 앞자리
    var m = 4; // 가운데 자리
    var b = 4; // 마지막 자리
    if( phone.length <= 11 ) f = 3;
    if( phone.length <= 10 ) m = 3;
    
    var phnum1 = phone.substr( 0, f );
    var phnum2 = phone.substr( f, m );
    var phnum3 = phone.substr( (f+m), b );
    
    location.href="/reserve/firstReserve.do?phnum1=" + phnum1 + "&phnum2=" + phnum2 + "&phnum3=" + phnum3;
    
  }
  
  return false;
  
}


$(document).ready(function(){
   
  var val = getCookie( "layerpop" );
  if( val != "done" ){
    
    $( "#layer" ).css( "display", "" );
    $( "#mobileMainLayer" ).css( "display", "" );
    
  }
  
});


// 모바일 레이어 닫기
function mobileLayerClose(){
	
  $( "#mobileMainLayer" ).css( "display", "none" );
  
}


// 언어선택 메뉴 스크립트 
$(document).ready(function(){
  $('.bh_lang').on({
    
    click: function(){
      $(this).addClass('actived');	// 클릭시
      
    }, mouseenter : function(){    // 마우스 선택시
      $(this).addClass('actived');
    
    }, focusin : function(){
      $(this).addClass('actived');
      
    }, mouseleave: function(){
      $(this).removeClass('actived');
      
    }, focusout : function(){
      $(this).removeClass('actived');
    }
    
  });
  
});
</script>

</head>
<body style="">

  <!--스킵 네비게이션-->
  <p id="bh_skip_navi">
    <a href="#bh_container">본문 바로가기</a>
    <a href="#bh_main_menus">주메뉴 바로가기</a>
    <a href="#bh_footer">카피라이트 바로가기</a>
  </p>
  <!--/스킵 네비게이션-->
  
  <script type="text/javascript">

$(document).ready(function () {

  var  slck_ty2 = $('.slick-items').slick({

    infinite: true ,      /* 맨끝이미지에서 끝나지 않고 다시 맨앞으로 이동 */
    slidesToShow: 1,      /* 화면에 보여질 이미지 갯수*/
    slidesToScroll: 1,      /*  스크롤시 이동할 이미지 갯수 */
    autoplay: true,       /* 자동으로 다음이미지 보여주기 */
    arrows: false,        /* 화살표  */
    dots:true,            /*  아래점  */
    autoplaySpeed:4000,   /* 다음이미지로 넘어갈 시간 */
    speed:1000 ,          /* 다음이미지로 넘겨질때 걸리는 시간 */
    pauseOnHover:true,      /*  마우스 호버시 슬라이드 이동 멈춤 */
    fade: false,
    cssEase: 'linear',

  });
  
//모바일 전환시 메뉴 내역 br태그 제거 
  var platform = "INT03";

  	if(platform != "INT03"){

  		var replaceval = $(".sds_18").children().html().replace("<br>", "");
  		$(".sds_18").children().html(replaceval );

  	}
  // 모바일 전환시 메뉴 내역 br태그 제거 

});

</script>
<style type="text/css">
/* 화살표 */ 
.slick-arrow{ 
z-index: 2; /* prev버튼은 위치 이동시 이미지 뒤로 숨겨짐 */ 
position:absolute; /* 원하는 위치에 지정 */ 
top: 50%; 
width: 50px; 
height: 50px; 
transform: translateY(-25px); 
} 

/* prev 이전 */
.slick-prev.slick-arrow{left: 0;} 
/* next 다음 */
.slick-next.slick-arrow{right: 0;}
 /* 아래점 */
.slick-dots{ text-align: center;}   
.slick-dots li{ display: inline-block; margin: 0 5px; }
 
.slick-items{position:relative;}
.slick-items li{height:auto;}
.slick-items a{height:auto;}
.slick-items p{height:auto;}
.slick-items .slick-dots{position:absolute; bottom:15px; left:10px; z-index:1000;}
.slick-items .slick-dots li{display:inline-block; margin-left:5px;}
.slick-items .slick-dots li button{display:block; width:12px; height:12px; background:#ddd;  border:3px solid #ddd; border-radius:12px; text-indent: -9999px; cursor:pointer;}
.slick-items .slick-dots li.slick-active button{ background:transparent; border:3px solid #ddd; }

.bh_main_open_event_pop .slick-items .slick-dots{position:absolute; bottom:15px; right:10px; z-index:1000;}
</style>
  
  <!-- 모바일 이벤트 레이어 팝업 메인에서만 표시 -->
  <div id="mobileMainLayer" class="bh_main_open_event_pop" style="">
    <div class="bh_main_oep_deam" onclick="mobileLayerClose();" style="cursor: pointer;"></div>
    <div class="bh_main_oep">
      <div class="bh_main_oep_img" onclick="mobileLayerClose();" style="cursor: pointer;" role="toolbar">
       <ul class="slick-items slick-initialized slick-slider"> 
       
          <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"><li class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 0px;">     
            <a href="https://www.snubh.org/intro/news/noti/view.do?BNO=1101 "><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-mobile_03_20200902021618.jpg" alt="보호자 대리처방 제한 안내 대리처방 관련 의료법 개정 안내 (2020.2.28일 시행)"></a>
         </li><li class="slick-slide" data-slick-index="0" aria-hidden="true" role="option" aria-describedby="slick-slide10" style="width: 0px;">     
            <a href="https://pass.snubh.org "><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-mobile_01_20200907112506.jpg" alt="코로나19 확산 방지를 위해 병원 방문 시 QR출입증을 발급 해주세요"></a>
         </li><li class="slick-slide slick-current slick-active" data-slick-index="1" aria-hidden="true" role="option" aria-describedby="slick-slide11" style="width: 0px;">     
            <a href="https://www.snubh.org/intro/news/noti/view.do?BNO=1099 "><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-mobile_02_20200902021658.jpg" alt="마스크착용과 병원 출입증을 받아야 병원출입이 가능합니다 코로나19관련 안내 - 안심외래 안내/코로나19 Q&amp;A"></a>
         </li><li class="slick-slide" data-slick-index="2" aria-hidden="true" role="option" aria-describedby="slick-slide12" style="width: 0px;">     
            <a href="https://www.snubh.org/intro/news/noti/view.do?BNO=1101 "><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-mobile_03_20200902021618.jpg" alt="보호자 대리처방 제한 안내 대리처방 관련 의료법 개정 안내 (2020.2.28일 시행)"></a>
         </li><li class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" style="width: 0px;">     
            <a href="https://pass.snubh.org "><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-mobile_01_20200907112506.jpg" alt="코로나19 확산 방지를 위해 병원 방문 시 QR출입증을 발급 해주세요"></a>
         </li></div></div>
       
          
       
          
       
        <ul class="slick-dots" style="display: block;" role="tablist"><li class="" aria-hidden="true" role="presentation" aria-selected="true" aria-controls="navigation10" id="slick-slide10"><button type="button" data-role="none" role="button" aria-required="false">1</button></li><li aria-hidden="false" role="presentation" aria-selected="false" aria-controls="navigation11" id="slick-slide11" class="slick-active"><button type="button" data-role="none" role="button" aria-required="false">2</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation12" id="slick-slide12" class=""><button type="button" data-role="none" role="button" aria-required="false">3</button></li></ul></ul>
      </div>
      <div class="bh_main_oep_chk fix">
        <p class="bh_main_oep_today">
          <input type="checkbox" id="todaycc_m"> <label for="todaycc_m">오늘하루 열지 않음</label>
        </p>
        <p class="bh_main_oep_close">
          <a href="#" onclick="layerclosePop( 'todaycc_m' ); return false;">닫기</a>
        </p>
      </div>
    </div>
  </div>
  <!-- //모바일 레이어 팝업 -->

  <!--상단 팝업-->
  <div class="research_layer" id="layer" style="">
    
    <div id="snubh_post_pop slick-items" class="postpop" role="toolbar">
    
    <ul class="slick-items slick-initialized slick-slider">   
    
         
          <div aria-live="polite" class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 5455px; transform: translate3d(-3273px, 0px, 0px);" role="listbox"><li class="checktest slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 1091px;">       
            <p><a href="https://www.snubh.org/intro/news/noti/view.do?BNO=1101" target="_blank"><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-PC_03_20200902021618.jpg" alt="보호자 대리처방 제한 안내 대리처방 관련 의료법 개정 안내 (2020.2.28일 시행)"></a></p>
            </li><li class="checktest slick-slide" data-slick-index="0" aria-hidden="true" role="option" aria-describedby="slick-slide20" style="width: 1091px;">       
            <p><a href="https://pass.snubh.org" target="_blank"><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-PC_01_20200910020450.jpg" alt="코로나19 확산 방지를 위해 병원 방문 시 QR출입증을 발급 해주세요"></a></p>
            </li><li class="checktest slick-slide" data-slick-index="1" aria-hidden="true" role="option" aria-describedby="slick-slide21" style="width: 1091px;">       
            <p><a href="https://www.snubh.org/intro/news/noti/view.do?BNO=1099" target="_blank"><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-PC_02_20200902021658.jpg" alt="마스크착용과 병원 출입증을 받아야 병원출입이 가능합니다 코로나19관련 안내 - 안심외래 안내/코로나19 Q&amp;A"></a></p>
            </li><li class="checktest slick-slide slick-current slick-active" data-slick-index="2" aria-hidden="true" role="option" aria-describedby="slick-slide22" style="width: 1091px;">       
            <p><a href="https://www.snubh.org/intro/news/noti/view.do?BNO=1101" target="_blank"><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-PC_03_20200902021618.jpg" alt="보호자 대리처방 제한 안내 대리처방 관련 의료법 개정 안내 (2020.2.28일 시행)"></a></p>
            </li><li class="checktest slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" style="width: 1091px;">       
            <p><a href="https://pass.snubh.org" target="_blank"><img src="/upload/board/B059/BCD1C6D0CD9CC785C99D-C548B0B4-PC_01_20200910020450.jpg" alt="코로나19 확산 방지를 위해 병원 방문 시 QR출입증을 발급 해주세요"></a></p>
            </li></div></div>
         
          
         
          
                 
         
    <ul class="slick-dots" style="display: block;" role="tablist"><li class="" aria-hidden="true" role="presentation" aria-selected="true" aria-controls="navigation20" id="slick-slide20"><button type="button" data-role="none" role="button" aria-required="false">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation21" id="slick-slide21" class=""><button type="button" data-role="none" role="button" aria-required="false">2</button></li><li aria-hidden="false" role="presentation" aria-selected="false" aria-controls="navigation22" id="slick-slide22" class="slick-active"><button type="button" data-role="none" role="button" aria-required="false">3</button></li></ul></ul>         
         
      <div class="ckbox">
        <input type="checkbox" id="todaycc"> <label for="todaycc">오늘하루 열지 않음</label>
      </div>
      <div id="cx" class="btn_close_layer">
        <a href="javascript:;"><img src="/front/images/ex/cx2.png" alt="창닫기" onclick="layerclosePop( 'todaycc' ); return false;"></a>
      </div>

    </div>
  </div>
  <!--/상단 팝업-->
   

  <!--body_wrapper-->
  <div class="body_wrapper" style="position: static;">
   
    <!--common_wrapper-->
    <div class="common_wrapper">

      
      <!--header_wrapper-->
      <div class="header_wrapper">

        <!--상단 1차메뉴 및 로고 검색-->
        <div class="header_section">
          <div class="top_header_section fix">
            <div class="m_head">
      
              <div class="lft_tit_section">
                <h1><a href="/index.do"><img src="/front/images/header/tit_logo.png" alt="SNUBH 분당서울대학교병원"></a></h1>
                <ul class="utility_section fix">
                
                  
                  <li><a href="javascript:memberLogin()">로그인</a></li>
                  <li><a href="/member/joinSelect.do">회원가입</a></li>
                     
                  
                  <li><a href="/sitemap/SiteMap.do">사이트맵</a></li>
                  <li class="bh_lang">
                    <a href="#" class="sk_lang_tit" title="언어선택"><span>Language</span></a>
                    <ul>
                      <li>
                        <a href="https://www.snubh.org/dh/en/" target="_blank" title="새창으로 열기">English</a>
                      </li>
                      <li>
                        <a href="https://www.snubh.org/dh/ru/" target="_blank" title="새창으로 열기">Russian</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>

              <div class="rit_navi_section">
                <h2 class="skip">주메뉴</h2>
                <div id="btn_top_menus" class="total_navi_div">
                  
				  <button class="bh_menu_p" id="bh_main_menus" tabindex="0"><span class="skip">전체메뉴</span></button>

                  <div class="bh_menu_m">&nbsp;</div>
                  <div class="bh_mob_quick_wrap" style="display: none; width: 1049px;">
                    <div class="bh_mob_quick_1">
                      <a href="/medical/drMedicalTeam.do" class="btn_find">의료진<span></span>찾기</a>
                    </div>
                    <div class="bh_mob_quick_2">
                      <a href="/medical/deptListTime.do" class="btn_cal">외래진료<span></span>일정표</a>
                    </div>
                    <!-- <div class="bh_mob_quick_3">
                      <a href="/intro/map/road.do" class="btn_app_form">찾아오시는 <span></span>길</a>
                    </div> -->
                    <div class="bh_mob_quick_4">
                      <a href="/treatmentpay/PayMedicalList.do" class="btn_find">진료비<span></span>결제</a>
                    </div>
                     <!-- <div class="bh_mob_quick_5">
                            <a href="/personal/info/offMember.do" class="btn_cal">환자번호<span></span>확인</a>
                          </div> -->
                  </div>
                  <ul class="sec_total_navi_ul" style="display: none; width: 1049px;">
                                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">나의 진료정보</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="/reserve/treatResvrInfo.do">예약</a></li>
                              
                              
                            
                              
                                  <li class="sds_2"><a tabindex="0" href="/personal/resvrStatusList.do">예약조회 및 취소</a></li>
                              
                              
                            
                              
                                  <li class="sds_3"><a tabindex="0" href="/treatmentpay/PayMedicalList.do">진료비 결제</a></li>
                              
                              
                            
                              
                                  <li class="sds_4"><a tabindex="0" href="/personal/health4u.do">Health4U</a></li>
                              
                              
                            
                              
                                  <li class="sds_5"><a tabindex="0" href="/personal/myTimeLine.do">나의 타임라인</a></li>
                              
                              
                            
                              
                                  <li class="sds_6"><a tabindex="0" href="/personal/bookMark/bookMarkList.do">관심 콘텐츠</a></li>
                              
                              
                            
                              
                                  <li class="sds_7"><a tabindex="0" href="/personal/myHichart.do">처방동영상</a></li>
                              
                              
                            
                              
                                  <li class="sds_8"><a tabindex="0" href="/personal/certi/ctfIssue.do">증명서발급</a></li>
                              
                              
                            
                              
                                  <li class="sds_9"><a tabindex="0" href="/personal/voice/customervoiceList.do">고객의 소리</a></li>
                              
                              
                            
                              
                                  <li class="sds_10"><a tabindex="0" href="/personal/info/myInfoChk.do">개인정보</a></li>
                              
                              
                            
                              
                                  <li class="sds_11"><a tabindex="0" href="/personal/spsorDonationList.do">기부현황조회</a></li>
                              
                              
                            
                          </ul>
                          
                          
                          <!-- 간편상담예약 -->
                          <div id="sub_s_1" class="snb_conts_wrap" style="display: none; width: 678px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <form onsubmit="return chkPhone(this)">
                                  <strong class="bh_snb_tit">간편상담예약</strong>
                                  <div class="bh_snb_input fix">
                                    <p class="f_left">
                                      <input type="tel" tabindex="0" class="input_snb_text" style="width:200px; padding:0 5px 0 20px;" maxlength="12" name="phone" title="연락처" placeholder="000 - 0000 - 0000">                                      
                                    </p>
                                    <p class="f_right">
                                      <input class="btn_snb_blue" type="submit" value="간편예약">
                                    </p>
                                  </div>
                                </form>
                                <p class="bh_snb_desc">
                                  분당서울대학교병원은 빠르고 편리한 <span>온라인 진료예약이 가능합니다.</span>
                                </p>
                                <ul class="bh_snb_ul">
                                  <li class="bh_snb_li_1">
                                    <a href="/reserve/firstReserve.do">
                                      <strong>간편상담예약</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_2">
                                    <a href="/reserve/onlineReserve.do">
                                      <strong>온라인 예약</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_3">
                                    <a href="/personal/resvrStatusList.do">
                                      <strong>예약현황조회</strong>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                          <!-- //간편상담예약 -->
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">진료안내</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="/medical/deptList.do">진료과</a></li>
                              
                              
                            
                              
                                  <li class="sds_2"><a tabindex="0" href="/medical/supDeptList.do">진료지원부서</a></li>
                              
                              
                            
                              
                                  <li class="sds_3"><a tabindex="0" href="/medical/drMedicalTeam.do">의료진</a></li>
                              
                              
                            
                              
                                  <li class="sds_4"><a tabindex="0" href="/medical/out/clinic01.do">외래진료</a></li>
                              
                              
                            
                              
                                  <li class="sds_5"><a tabindex="0" href="/medical/deptListTime.do">외래진료일정표</a></li>
                              
                              
                            
                              
                                  <li class="sds_6"><a tabindex="0" href="/medical/day/surgeryCenter01.do">당일수술센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_7"><a tabindex="0" href="/medical/emergency/center.do">응급의료센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_8"><a tabindex="0" href="/medical/home/nursing01.do">가정간호</a></li>
                              
                              
                            
                              
                                  <li class="sds_9"><a tabindex="0" href="/medical/inOut/hospital01.do">입원/퇴원</a></li>
                              
                              
                            
                              
                                  <li class="sds_10"><a tabindex="0" href="/medical/visit.do">병문안(면회)</a></li>
                              
                              
                            
                              
                                  <li class="sds_11"><a tabindex="0" href="https://hpc.snubh.org/index.do" target="_blank">건강검진안내</a></li>
                              
                              
                            
                              
                                  <li class="sds_12"><a tabindex="0" href="/outcomesbookforeword.do">Outcomes Book</a></li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          <!-- 의료진/진료과찾기 -->
                          <div id="sub_s_2" class="snb_conts_wrap" style="display: none; width: 678px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">의료진/진료과찾기</strong>
                                
                                <form action="/search.do" onsubmit="return chkTxt( this );">
                                  <div class="bh_snb_input">
									<label for="search_txt" class="skip">의료진, 진료과 입력</label>
                                    <input tabindex="0" class="input_snb_text" type="text" name="search_txt" id="search_txt" placeholder="의료진,진료과 입력">
                                    <input class="btn_snb_blue" type="submit" value="찾기">
                                  </div>
                                </form>
                                
                                <p class="bh_snb_desc1">
                                  분당서울대학교병원 <span>진료관련 절차에 대한 안내입니다.</span>
                                </p>
                                <ul class="bh_snb_ul">
                                  <li class="bh_snb_li_4">
                                    <a href="/medical/out/clinic01.do">
                                      <strong>외래진료</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_5">
                                    <a href="/medical/inOut/hospital01.do">
                                      <strong>입원/퇴원</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_6">
                                    <a href="/medical/visit.do">
                                      <strong>면회</strong>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                          <!-- //의료진/진료과찾기 -->
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">병원소개</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="/intro/hospital/introduce.do">병원소개</a></li>
                              
                              
                            
                              
                                  <li class="sds_2"><a tabindex="0" href="/intro/floor/guide.do">층별안내</a></li>
                              
                              
                            
                              
                                  <li class="sds_3"><a tabindex="0" href="/intro/news/realname/list.do">병원소식</a></li>
                              
                              
                            
                              
                                  <li class="sds_4"><a tabindex="0" href="/intro/amenity/amenity01.do">편의시설</a></li>
                              
                              
                            
                              
                                  <li class="sds_5"><a tabindex="0" href="/intro/spaceU.do">SPACE U</a></li>
                              
                              
                            
                              
                                  <li class="sds_6"><a tabindex="0" href="https://www.snubh.org/dh/mc" target="_blank">공공의료사업단</a></li>
                              
                              
                            
                              
                                  <li class="sds_7"><a tabindex="0" href="/intro/supporters.do">발전후원회</a></li>
                              
                              
                            
                              
                                  <li class="sds_8"><a tabindex="0" href="/intro/tell.do">주요전화번호안내</a></li>
                              
                              
                            
                              
                                  <li class="sds_9"><a tabindex="0" href="/intro/map/road.do">찾아오시는길</a></li>
                              
                              
                            
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          <!-- 찾아오시는길 안내 -->
                          <div id="sub_s_3" class="snb_conts_wrap" style="display: none; width: 678px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">찾아오시는길</strong>
            
                                <p class="bh_snb_desc2">
                                  분당서울대학교병원에 <span>찾아오시는 길입니다.</span>
                                </p>

                                <div class="bh_snb_btn_wrap">
                                  <a href="/intro/map/road.do" class="bh_btn_b1" tabindex="0">자세히 보기</a>
                                </div>
                
                                <div class="bh_snb_map_img">
                                  <img src="/front/images/header/img_gnb_map.jpg" alt="분당서울대학교병원 찾아오시는 길 약도">
								  <div class="skip">
                                	<p>우)13620, 경기도 성남시 분당구 구미로173번길 82</p>
                                	<div class="">대중교통 이용</div>
                                	<ul class=""> 
										<li> <dl> <dt>미금역에서 버스 이용시</dt> <dd>미금역 3번 출구 → 마을버스(7번, 7-1번), 8446번 버스 탑승 → 분당서울대학교병원</dd> <dd>미금역 2번 출구 → 51번 버스 탑승 → 분당서울대학교병원</dd> <dd>미금역 8번 출구 → 마을버스(19번), 380번 버스 탑승 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>오리역에서 버스 이용시</dt> <dd>오리역 7번 출구 → 10m 앞 마을버스(19번) 탑승 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>정자역에서 버스 이용시</dt> <dd>정자역 3번 출구 → 마을버스(19번, 111번), 380번, 8446번 버스 탑승 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>헬스케어혁신파크(상행) 하차시</dt> <dd>분당서울대학교병원 방향 탄천길로 도보 15분</dd> </dl> </li> 
									</ul>
									<div class="">자동차 이용</div>
                                	<ul class=""> 
										<li> <dl> <dt>판교 IC 방면</dt> <dd>판교 IC → 분당방향으로 직진 → 서현로 → 분당구청 방향으로 우회전 → 분당구청 →  분당정보산업고교에서 좌회전 → 돌마교사거리에서 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>성수대교 방면</dt> <dd>성수대교 → 구룡터널 → 분당내곡간 고속화도로(약 15분 직진) → 분당 도착해서 직진 → 분당구청 → 수내역 방향으로 우회전 → 정자역 → 분당정보산업고교에서 좌회전 → 돌마교사거리에서 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>청담대교 방면</dt> <dd>청담대교 → 분당수서간 고속화도로(약 25분 직진) → 초림지하차도 → 정자지하차도(2번째 지하도) 지난 후 우측차선으로 빠짐 → 미금역 방향 → 미금역 방향으로 좌회전 → 돌마교사거리에서 우회전 → 700m정도 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>수원 IC 방면</dt> <dd>수원 IC → 신갈오거리 → 신갈중학교 앞 → 구성삼거리 → 마북삼거리 → 보정교차로 → 죽전사거리 → 오리역 → 낙생교 지나자마자 우회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>수서역 SRT 방면</dt> <dd>밤고개로(약 5분 직진) → 분당내곡간 고속화도로(약 10분 직진) → 분당 도착해서 직진 → 분당구청 → 수내역 방향으로 우회전 → 정자역 → 분당정보산업고교에서 좌회전 → 돌마교사거리에서 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
									</ul>
                                </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- //찾아오시는길 안내 -->
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                          <a href="/intro/news/noti/list.do" tabindex="0">공지사항</a>
                      
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="/intro/news/noti/list.do">공지사항</a></li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                    
                          <!-- 공지사항 -->
                          <div id="sub_s_5" class="snb_conts_wrap" style="display: none; width: 678px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">공지사항</strong>
                                
                                <p class="bh_snb_desc4">
                                  분당서울대학교병원의 공지사항을 알려드립니다.
                                </p>
                                
                                <ul class="main_notice_board">
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1128" tabindex="0"> 입원환자 입원 전 코로나19 검사 시행 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1122" tabindex="0"> [코로나19 감염예방] 모바일 문진표 작성 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1101" tabindex="0"> 대리처방&nbsp;관련&nbsp;의료법&nbsp;개정&nbsp;안내&nbsp;(2020.2.28일&nbsp;시행)</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1099" tabindex="0"> 코로나19(코로나바이러스감염증-19) 관련 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=993" tabindex="0"> 홈페이지 서비스 이용 가이드</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=989" tabindex="0"> 내원 시 지켜야 할 감염 예방 수칙</a></li>
                                  
                                </ul>
                                
                              </div>
                            </div>
                          </div>
                          <!-- //공지사항 -->
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">건강정보</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="/service/lecture/healthLectList.do">건강강좌</a></li>
                              
                              
                            
                              
                                  <li class="sds_2"><a tabindex="0" href="/service/info/web/list.do">HEALTH PLUS</a></li>
                              
                              
                            
                              
                                  <li class="sds_3"><a tabindex="0" href="/service/info/ebook/list.do">나음진</a></li>
                              
                              
                            
                              
                                  <li class="sds_4"><a tabindex="0" href="/service/hichart/list.do">검사안내 동영상</a></li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          <!-- 헬스포커스 -->
                          <div id="sub_s_4" class="snb_conts_wrap" style="display: none; width: 678px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">헬스 포커스</strong>
            
                                <p class="bh_snb_desc3">
                                  다양하고 유익한 건강상식을 <span>제공해 드립니다.</span>
                                </p>

                                <ul class="bh_snb_bab">
                                  
                                  
                                    
                                    
                                    <li class="fix">
                                      <p>
                                        <a href="/service/info/com/view.do?BNO=401&amp;Board_ID=B004" tabindex="0">
                                          <img src="/upload/board/B004/202012_webzine_thumb1_20201130105321.jpg
" alt="'삐끗' 반복된다면 발목 불안정성 주의, 발목 염좌">
                                        </a>
                                      </p>
                                      <dl>
                                        <dt>
                                          <a href="/service/info/com/view.do?BNO=401&amp;Board_ID=B004">
                                            '삐끗' 반복된다면 발목 불안정성 주의, 발목 염좌
                                          </a>
                                        </dt>
                                        <dd>
                                          <a href="/service/info/com/view.do?BNO=401&amp;Board_ID=B004">
                                            '삐끗' 반복된다면 발목 불안정성 주의     발목 염좌     감수. 정형외과
<b> 이경민 </b>교수       30대 초반 직장인 정씨는 지난여름 출근길, 비온 뒤 주차장 바닥에 남아있던 물기에 미끄러지며 심하게 발목을 삐끗했다. 순간 찌릿하고 약간 붓기는 했지만 파스를 붙이고 냉찜질을 하고 나니 조금씩 나아지는 듯 해 심각하게 여기지는 않았다. 하지만 그 후로 멀쩡히 길을 걷다가도 반복적으로 같은 발목을 삐끗하는 상황이 반복되자 병원을 찾았고, 검사 결과 발목 인대가 손상된 만성 발목 불안정성을 진단받고 현재 재활치료를 정기적으로 받고 있는 중이다.  관절 지지해주는 발목 외측 인대가 손상되어 발생되는 발목염좌 발목 염좌는 흔히 우리가 '발목을 삔다' 혹은 '발목을 접지른다'고 하는 상황에서 발생하는 급성 인대 손상입니다. 스포츠 손상 중에서 가장 흔하다고 알려져 있으며, 미국의 경우에는 매년 1,000명당 2-7명의 발목 염좌 환자가 발생하며 연간 200만 건에 이른다고 보고되고 있습니다. 건강보험심사평가원 통계에 따르면, 우리나라 역시 발목 염좌 및 긴장으로 병원을 찾는 환자는 2015년 129만 3,379명, 2017년 131만 1,296명, 2019년 142만 4,361명으로 꾸준히 증가하는 추세입니다. 지난 한 해 기준으로는 전체 환자 중 약 45%가 10~20대 환자인 것으로 나타나, 특히 젊은 층에서 많이 발생하고 있습니다.  발목을 접지를 때에는 일반적으로 발이 몸의 안쪽으로 꺾이면서 발목의 외측 인대가 당겨지는 힘을 받으며 손상되는데, 발목 외측을 이루는 세 가지 인대(전거비인대, 종비인대, 후거비인대) 중에서 전거비인대와 종비인대가 비교적 흔하게 손상을 받습니다.     부종과 통증 줄인 후 기능적 회복 돕는 재활치료 시행 발목을 접지른 이후 외측 인대 부위가 붓고 통증이 있다면 병원을 방문하여 검사를 받아보아야 합니다. 혹시 있을지 모르는 골절을 감별하기 위해 X-ray 촬영을 기본적으로 시행하고, 뼈에 이상이 없다면 발목 염좌로 생각하고 치료를 하게 됩니다. 인대를 직접적으로 관찰할 수 있는 초음파 검사나 자기공명영상(MRI) 검사를 추가적으로 시행하기도 하는데, 이러한 검사들에서 인대 손상 이외의 다른 동반되는 손상이 없다면 치료 방침이 바뀌지는 않습니다. 급성 인대 손상인 발목 염좌의 치료는 비수술적인 치료가 원칙입니다. 초기에는 부종과 통증을 줄이기 위해서 발목을 고정하고, 심장보다 20-30cm 높게 다리 올리기, 압박드레싱, 냉찜질 등을 시행합니다. 고정 방법(보호대, 반기브스, 부츠, 통기브스 등)과 고정 기간은 손상 정도에 따라 짧게는 2-3주 이내에서 길게는 4-6주까지도 시행하게 되며, 통증과 붓기가 줄어들면 점차 체중부하 및 보행 연습을 하게 됩니다. 발목의 기능적인 회복을 돕기 위해 발목 외측 근육인 비골근 강화운동과 고유감각 훈련을 함께 병행합니다. 고유감각이란 자세, 위치, 움직임 등에 대한 감각을 말하는데, 발에 대한 위치 감각이 감소하게 되면 발을 지면에 바로 놓지 못하고 잘못된 위치로 발을 디디면서 발을 접지르는 빈도가 증가하게 됩니다. 따라서 발목 염좌에서의 고유감각 훈련은 발의 위치에 대한 감각을 강화하기 위한 운동으로서 주로 균형을 잡는 훈련으로 구성됩니다.     상습적 발목 꺾임·통증 부르는 발목 불안정성 급성 손상된 인대가 정상적으로 치유되지 않아 정상적인 길이와 장력을 유지하지 못하면 만성적으로 느슨한 상태가 되는데, 이렇게 급성 발목 염좌의 만성적인 후유증을 발목 불안정성이라고 합니다. 발목 염좌 환자의 약 1/3이 만성 발목 불안정성으로 진행한다고 알려져 있습니다. 발목 불안정성 환자들은 발목을 자주 접지르거나 힘이 없다고 느끼게 되고, 활동 후 발목이 붓고 아픈 증상이 나타나므로, 이러한 상태가 반복된다면 방치하지 말고 병원을 찾아 정확한 상태를 확인하고 치료를 받아야 발목을 건강하게 보존할 수 있습니다. 발목 불안정성 여부를 확인하기 위해서는 검진 의사가 스트레스를 가하면서 손의 감각으로 발목의 느슨한 정도를 주관적으로 느끼는 이학적 검사와, 스트레스 X-ray 촬영을 함께 합니다. 스트레스 X-ray 검사를 통해 발목 외측이 많이 벌어진다면 발목 외측 불안정성을 의심할 수 있습니다. 반대편 발목과 함께 시행하여 비교하면 개개인마다 다른 관절 유연성을 배제하면서 평가할 수 있다는 장점이 있습니다. 다만, 환자가 검사 시에 통증을 느껴 발목에 힘을 줄 경우 검사 결과가 부정확할 수 있는 단점이 있습니다. 발목 인대를 직접 관찰해야 할 경우나 건 손상, 골연골 병변 등의 동반 손상을 찾기 위해서는 MRI 검사를 추가로 시행하게 됩니다.      발목 불안정성의 치료 발목 염좌와는 달리 발목 불안정성은 수술적 치료의 가능성이 있습니다. 다만, 환자가 주관적인 발목 불안정성 혹은 자주 접지르는 증상을 호소한다고 해서 모두 수술하는 것은 아니고, 이러한 증상이 발목 인대가 느슨해서 발생하는 기계적인 불안정성인지, 혹은 근력이 약하거나 고유감각이 저하되어 발생하는 기능적 불안정성인지를 감별하여 판단하는 것이 중요합니다. 기능적 불안정성의 경우는 비골근 강화 훈련 및 고유감각 훈련과 같은 보존적 요법으로 치료하고, 인대가 느슨해서 발생하는 기계적인 불안정성의 경우에만 수술적 치료의 대상이 됩니다. 하지만 현실적으로 기능적 불안정성과 기계적 불안정성을 명확하게 구분하기는 쉽지 않기 때문에, 실제 진료 현장에서는 환자들에게 수개월 이상 보존적 치료를 충분히 시킨 후에 수술 여부를 결정하게 됩니다. 수술적 치료 시에는 느슨한 전거비인대와 종비인대를 당겨서 봉합하고 주변조직으로 보강하는 수술을 가장 우선적으로 시행합니다. 수술 후 재발한 경우, 또는 체중이 많이 나가거나 스포츠 활동이 많은 경우에는 건 이식술을 고려할 수 있습니다.      발목 염좌를 예방하기 위한 팁  발목 관절의 유연성을 키우고 발목 근육을 강화한다. 운동 전이나 보행 전 충분한 스트레칭과 준비운동을 통해 충분히 근육의 긴장을 풀어준다. 하체 근력 강화 운동은 발목의 안정성을 향상시키는데 도움이 된다. 체중을 줄여 발목이 느끼는 하중의 부담을 줄인다. 발목이 잘 꺾일 수 있는 굽 높은 신발, 발목에 충격이 가해지기 쉬운 굽이 거의 없는 신발은 피한다. 구두는 3~5cm, 운동화는 1~2cm 정도의 굽이 적당하다.    ※ 해당 기사와 사진은 분당서울대학교병원의 저작물로 임의로 복사, 수정, 변형, 재가공하여 게시, 배포하였다면 이는 저작권자인 당사의 허가없이 2차저작물을 작성한 것으로 저작권 위반에 해당됩니다.
                                          </a>
                                        </dd>
                                      </dl>
                                    </li>
                                  
                                  
                                    
                                    
                                    <li class="fix">
                                      <p>
                                        <a href="/service/info/com/view.do?BNO=400&amp;Board_ID=B004" tabindex="0">
                                          <img src="/upload/board/B004/202012_webzine_thumb2_20201130105331.jpg
" alt="노인의 골다공증성 척추 골절 예방법">
                                        </a>
                                      </p>
                                      <dl>
                                        <dt>
                                          <a href="/service/info/com/view.do?BNO=400&amp;Board_ID=B004">
                                            노인의 골다공증성 척추 골절 예방법
                                          </a>
                                        </dt>
                                        <dd>
                                          <a href="/service/info/com/view.do?BNO=400&amp;Board_ID=B004">
                                            노인의 골다공증성     척추 골절 예방법     감수. 정형외과 
<b>박상민</b> 교수       노인 척추건강을 위협하는 가장 큰 요인인 골다공증. 골다공증 환자들은 살짝만 넘어져도 척추에 골절을 입기 쉽고, 특히 이러한 노인의 낙상으로 인한 골절은 겨울철에 더 증가합니다. 골다공증성 골절은 심각한 문제가 발생할 때까지는 눈에 띄지 않기 때문에, 척추 골절의 징후와 증상에 대해 잘 알고 예방하는 것이 무엇보다도 중요합니다.  척추 골절의 징후와 증상 골다공증성 척추 골절은 낙상에 의해 쉽게 발생하지만, 경미해 보이는 작은 외상에 의해서도 발생할 수 있습니다. 몸을 구부리거나 무거운 물건을 운반할 때, 윗몸을 일으킬 때, 심지어 기침을 할 때도 골다공증성 척추 골절이 발생할 수 있습니다. 골절이 발생하면 대다수의 사람들은 등과 허리에 날카로운 통증을 느끼지만 이러한 통증이 전혀 없는 사람들도 있으며, 이 경우에는 수년이 지난 후에야 골절로 인한 문제를 느끼게 됩니다. 따라서 통증 이외에도 갑자기 키가 줄어들거나 앞으로 구부정한 자세가 되는 등의 변화가 있다면 골다공증성 척추 골절을 의심해볼 수 있습니다. 척추에 한 번 골다공증성 골절이 발생하면 후차적으로 골절이 발생할 가능성이 높아지므로, 미리 골절을 예방하는 것이 중요합니다.      낙상과 척추 골절, 이렇게 예방하세요 안전하게 외부활동을 하세요 겨울철 외부활동을 할 때는 고무 밑창이 있는 낮은 굽 신발이나 따뜻한 부츠를 신도록 합니다. 건물이나 보도의 바닥 표면을 자세히 보고, 미끄러질 위험이 큰 광택 있는 바닥이나 타일 바닥은 피하는 것이 좋습니다. 작은 소금봉지를 가지고 다니면서 얼어있는 바닥에 소금을 뿌리는 것도 한가지 방안이 될 수 있습니다. 또한, 장갑을 착용하고 손에 드는 가방 보다는 어깨에 메는 배낭을 착용하여 항상 손을 자유롭게 하는 것이 좋습니다. 필요에 따라 보행기나 지팡이를 사용하는 것도 낙상 예방에 도움이 됩니다. 낙상과 척추 골절 위험은 집안에도 있습니다 골다공증이 있는 노인의 경우에는 낙상뿐만 아니라 가볍게 허리를 구부리거나 바닥에 있는 물건을 줍는 동작만으로도 척추 골절이 발생할 수 있습니다. 따라서 자주 사용하는 물건은 바닥이 아닌 앉거나 서서도 쉽게 닿을 수 있는 곳에 두는 것이 좋습니다. 또한, 욕조나 샤워실, 화장실 옆에 손잡이를 설치하고, 화장실과 부엌에 미끄럼 방지 고무 매트를 사용할 것을 추천합니다. 집 안에서도 보행기나 지팡이를 사용하여 낙상을 예방하도록 합니다. 습관을 바꾸세요  겨울철에는 특히 음주에 주의하세요. 술은 반사신경을 늦추고 방향감각을 떨어트려 뼈 손실을 유발할 가능성이 높아집니다. 또한, 서둘러 움직이기 보다는 여유를 두고 천천히 움직이며 낙상 위험을 줄여야 합니다. 무거운 물건, 특히 5kg 이상 되는 물건은 들지 마세요. 어쩔 수 없이 바닥에서 물건을 들어야 하는 경우라면, 먼저 한쪽 무릎을 꿇고 물건을 몸 가까이에 가져온 후, 부드럽게 복부를 당겨 등을 지지하고 숨을 쉬면서 물건을 들어 올립니다. 심한 기침을 할 때 주의하세요. 기침과 재채기를 할 때에는 몸을 앞으로 급격히 구부리지 말고 한 손으로 등을 받치면서 하도록 합니다. 모든 연령대에서 건강한 식습관은 필수입니다. 특히 골다공증이 있는 노인의 경우, 칼슘과 비타민D가 포함된 균형 잡힌 식단으로 골다공증을 예방하도록 합니다.        ※ 해당 기사와 사진은 분당서울대학교병원의 저작물로 임의로 복사, 수정, 변형, 재가공하여 게시, 배포하였다면 이는 저작권자인 당사의 허가없이 2차저작물을 작성한 것으로 저작권 위반에 해당됩니다.
                                          </a>
                                        </dd>
                                      </dl>
                                    </li>
                                  
                                </ul>
                              </div>
                            </div>
                          </div>
                          <!-- //건강밥상 -->
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">바로가기</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="https://cancer.snubh.org/index.do" target="_blank">암센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_2"><a tabindex="0" href="https://bcni.snubh.org/index.do" target="_blank">뇌신경센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_3"><a tabindex="0" href="https://sbrc.snubh.org/index.do" target="_blank">진료협력센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_4"><a tabindex="0" href="https://hpc.snubh.org/index.do" target="_blank">건강증진센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_5"><a tabindex="0" href="https://snubh.recruiter.co.kr" target="_blank">채용</a></li>
                              
                              
                            
                              
                                  <li class="sds_6"><a tabindex="0" href="https://funeral.snubh.org/index.do" target="_blank">장례식장</a></li>
                              
                              
                            
                              
                                  <li class="sds_7"><a tabindex="0" href="https://msri.snubh.org/index.do" target="_blank">연구부문</a></li>
                              
                              
                            
                              
                                  <li class="sds_8"><a tabindex="0" href="https://medi.snubh.org/index.do" target="_blank">의학자료정보실</a></li>
                              
                              
                            
                              
                                  <li class="sds_9"><a tabindex="0" href="https://www.snubh.org/dh/mc/" target="_blank">공공의료사업단</a></li>
                              
                              
                            
                              
                                  <li class="sds_10"><a tabindex="0" href="https://www.snubh.org/dh/hcd7/" target="_blank">발전후원회</a></li>
                              
                              
                            
                              
                                  <li class="sds_11"><a tabindex="0" href="https://www.snubh.org/dh/en/" target="_blank">국제진료센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_12"><a tabindex="0" href="https://hip.snubh.org/" target="_blank">헬스케어혁신파크</a></li>
                              
                              
                            
                              
                                  <li class="sds_13"><a tabindex="0" href="http://ggccvc.snubh.org/" target="_blank">권역심뇌혈관질환센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_14"><a tabindex="0" href="http://e-allergy.org/" target="_blank">아토피·천식교육정보센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_15"><a tabindex="0" href="https://www.snubh.org/dh/rdc/" target="_blank">희귀질환센터</a></li>
                              
                              
                            
                              
                                  <li class="sds_16"><a tabindex="0" href="http://www.alio.go.kr/" target="_blank">알리오</a></li>
                              
                              
                            
                              
                                  <li class="sds_17"><a tabindex="0" href="/intro/news/permanent/list.do">정규직 전환 알림방</a></li>
                              
                              
                            
                              
                                  <li class="sds_18"><a tabindex="0" href="http://www.ggpi.or.kr/" target="_blank">경기도<br> 공공보건의료지원단</a></li>
                              
                              
                            
                              
                                  <li class="sds_19"><a tabindex="0" href="http://www.gidcc.or.kr/" target="_blank">경기도 감염병관리지원단</a></li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                          <a href="/openInfo.do" tabindex="0">정보공개</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="">
                            
                            
                              
                                  <li class="sds_1"><a tabindex="0" href="/openInfo.do">정보공개</a></li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
                <div id="sub_s_6" class="snb_conts_wrap" style="display: none; width: 678px;">
                <div class="snb_conts_box">
                  <div class="snb_conts">
                  <!--
                  <strong class="bh_snb_tit">정보공개 목록</strong>
                  <ul class="openinfo_list_mm bh_mgb40 fix ">
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=10101" target="_blank">일반현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2130" target="_blank">소송 및 법률자문 현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=32001" target="_blank">연간 출연 및 증여 현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2020" target="_blank">임직원수</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2140" target="_blank">일∙가정 양립 지원제도 운영현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=32301" target="_blank">감사보고서</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2040" target="_blank">신규채용, 청년인턴채용,유연근무 현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=3120" target="_blank">요약 재무상태표</a></li>
                    <li><a href="http://www.alio.go.kr/popSusi.do?apbaId=C0000&amp;reportFormRootNo=B1230" target="_blank">경영실적 평가결과</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2060" target="_blank">직원 평균보수</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=3130" target="_blank">요약 손익계산서</a></li>
                    <li><a href="http://www.alio.go.kr/popSusi.do?apbaId=C0000&amp;reportFormRootNo=B1240" target="_blank">고객만족도 조사결과</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=20801" target="_blank">복리후생비</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=31401" target="_blank">수입 지출 현황</a></li>
                    <li><a href="http://www.alio.go.kr/popSusi.do?apbaId=C0000&amp;reportFormRootNo=B1250" target="_blank">감사직무실적 평가결과</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=63701" target="_blank">그밖의 복리후생제도 등의 운영현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=31501" target="_blank">주요사업 현황</a></li>
                    <li><a href="http://www.alio.go.kr/popSusi.do?apbaId=C0444&amp;reportFormRootNo=B1050" target="_blank">경영혁신사례</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2102" target="_blank">노동조합 가입정보</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=31701" target="_blank">자본금 및 주주현황 </a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=7030" target="_blank">계약정보</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=2120" target="_blank">징계현황</a></li>
                    <li><a href="http://www.alio.go.kr/popReportTerm.do?apbaId=C0444&amp;reportFormRootNo=31901" target="_blank">투자 및 출자 현황</a></li>
                    </ul>
                    -->                  
                  
                  </div>
                </div>
                </div>                       
                
              <!-- 정보공개 -->
                          
                        </div>
                      </li>
                      
                      
                      
                    
                    
                    
                  </ul>

                  <div class="m_dp_num pc_none" style="display: none; width: 1049px;">
                    <div class="bh_tel_area_n">
                      <span><em style="color:#2d58b6">대표전화</em> <a href="tel:1588-3369">1588-3369</a></span> 
					  <em style="display:block; margin-top:5px; font-size:13px; color:#000; font-weight:600; letter-spacing:-0.5px;">(말로거는 전화 : <a href="tel:1641" style="text-decoration:underline;">1641</a> 누르고 <a href="tel:1641" style="text-decoration:underline;">'분당서울대병원'</a> 말하기)</em>
                    </div>
                  </div>
                </div>
                
              </div>
              
			        <div class="bh_nav_close_comp skip" tabindex="0"></div>                
              
                <p class="btn_login"><a href="/member/login.do"><span class="skip">모바일 로그인</span></a></p>
              
              
              <p class="btn_m_cc" style="display: none;"><a class="btn_m_c"><span class="skip">모바일 메뉴 닫기</span></a></p>
              <div class="btn_m_off" style="display: none;"><span class="skip">모바일 메뉴 DIM처리 배경</span></div>
              <div class="bh_menu_bg" style="display: none; width: 1108px;">
                <div class="bh_menu_inner_bg" style="display: none;"><span class="skip">모바일 메뉴 배경</span></div>
              </div>
            
            </div>

            <!--검색-->
            <div class="header_search_section">
              <div class="header_form">
                <form action="/search.do" onsubmit="return chkTxt( this );">
                  <fieldset>
                    <legend>통합검색</legend>
                    <div class="top_search_form">
						<label for="bh_search_txts" class="skip">통합검색 검색어 입력</label>
                      <input class="search_text" id="bh_search_txts" type="text" name="search_txt" placeholder="예) 질병명 , 의료진명" value="" onkeyup="autoComplete( this )" autocomplete="off">
                      <input class="btn_search" type="submit" value="통합검색">
                    </div>
                    
                    <!-- 자동완성 검색어 영역 -->
                    <ul class="auto_add_word" style="display:none;" id="autocomplate_area"></ul>
                  </fieldset>
                </form>
              </div>
            </div>
            <!--/검색-->

          </div>
          
        </div>
        <!--/상단 1차메뉴 및 로고 검색-->

        <!--서브 상단 메뉴-->
        
        
      </div>
      <!--/header_wrapper-->

      <hr>
      
      
      
      
      <!--container_wrapper-->
      <div class="container_wrapper fix" id="bh_container">

        <!--contents_section-->
        <div class="main_conts_set">
          <h2 class="skip">본문</h2>
          
          
      
          








<!--[if IE 8]>
<style type="text/css">
 .ie8_box{font-size:21px; font-weight:600; position:fixed; bottom:0; width:100%; padding:20px 0; border:2px solid #666; z-index:9999; border-left:0; border-right:0; background:#fff; border-bottom:0; text-align:center;}
 .ie8_box dt{font-size:24px; color:#2d58b5; margin-bottom:5px; background:url(/front/images/introduce/ico_notice.png) no-repeat 0 50%; padding:10px 0 10px 50px; display:inline-block;}
 .ie8_box dd{font-size:16px; line-height:1.4; font-weight:600; color:#666;}
 .ie8_box dd a{display:inline-block; margin-top:5px; background:#38afe9; color:#fff; font-size:18px; font-weight:600; padding:5px 20px; border-radius:10px;}
</style>
<div class="ie8_box">
  <dl>
    <dt>분당서울대학교병원 홈페이지는 익스플로러 11에 최적화 되어있습니다.</dt>
    <dd>지금 바로 업그레이드 하시어 보다 안전하고 빠르게 분당서울대학교 홈페이지를 이용하세요.
    </dd>
    <dd><a target="_blank" href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx">최신 익스플로러11 업그레이드 바로가기</a></dd>
  </dl>
</div>
 <![endif]-->



<!--메인 비주얼-->
<div class="main_v_section">
	<div class="text_section">
		<!--로고-->
		<div class="move_text">
			<div class="move_text01">
				<img src="/front/images/container/txt_1.png" alt="Lead" style="padding-top: 0px; opacity: 1;">
				<img src="/front/images/container/txt_2.png" alt="the" style="padding-top: 0px; opacity: 1;">
				<img src="/front/images/container/txt_3.png" alt="Standard" style="padding-top: 0px; opacity: 1;">
			</div>
			<div class="move_text02">
				<img src="/front/images/container/txt_4.png" alt="Build" style="padding-top: 0px; opacity: 1;">
				<img src="/front/images/container/txt_5.png" alt="the" style="padding-top: 0px; opacity: 1;">
				<img src="/front/images/container/txt_6.png" alt="Trust" style="padding-top: 0px; opacity: 1;">
			</div>
			<div class="move_text02">
				<img src="/front/images/container/txt_7.png" alt="세계 의료의 표준을 선도하는 국민의 병원" style="padding-top: 0px; opacity: 1;">
			</div>
			<div class="move_text03">
				<img src="/front/images/container/img_8.png" alt="서울대학교 로고" style="padding-top: 0px; opacity: 1;">
			</div>
		</div>
		<!--/로고-->
	</div>

	<!--배경-->
	
	<ul class="slideshow">
		
			<li class="bg_2 active">&nbsp;<img style="display: none;" alt="홈페이지메인배경화면" src="/upload//"></li>
			
		
	</ul>
	<!--/배경-->

	<!--모바일 로고-->
	<p class="m_logo"><img src="/front/images/container/img_m.png" alt="Lead the Standard Build the Trust 세계의료의 표준을 선도하는 국민의 병원"></p>
	<!--/모바일 로고-->
</div>
<!--/메인 비주얼-->

<hr>

<!--메인 메뉴-->
<div class="main_menu_section">
	<h2 class="skip">본문</h2>

	<!--모바일 진료카드-->
	<div class="bh_barco_layer_wrap">
		<div class="bh_barco_bg"></div>
		<div class="bh_barco_layer">
			<div class="bh_barco_layer1">
				<img src="/front/images/medical/img_barco_logo.png" alt="SNUBH 분당서울대학교병원 Lead the Standard, Build the Trust" class="bh_barco_img_1">
				<img src="/front/images/medical/ico_barco_logo.png" alt="분당서울대학교병원 마크" class="bh_barco_img_2">
				<div class="bh_barco_layer2">
						
					<div class="bh_barco_layer3">
						
						<ul>
							<li><img src="" alt="Barcode"></li>
							<li><img src="" alt="Barcode"></li>
							<li><img src="" alt="Barcode"></li>
							<li><img src="" alt="Barcode"></li>
							<li><img src="" alt="Barcode"></li>
						</ul>

						<div class="m_bar_div">
							<strong>님 <span>환자번호 : <em></em></span></strong>
						</div>

						<div class="bh_barco_line_bg0">
							<div class="bh_barco_line_bg1">
								<div class="bh_barco_line_bg2">
									<div class="bh_barco_line_bg3">
										<div class="bh_barco_line_bg4">
											모바일 진료카드는<br>무인수납기에서 사용 가능 합니다.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/모바일 진료카드-->
	
	<!--모바일 개인화 서비스-->
	
	
	<!--pc 로그인을 하면 pc_login클래스 선언-->
	<ul class="m_ddd fix">

		<!--간편예약상담-->
		<li class="main_li_1" style="top: 0px; height: 238px;">
			<dl>
				<dt><a href="/reserve/firstReserve.do">간편상담예약</a></dt>
				<dd>
					<form onsubmit="return chkPhone(this)">
						<fieldset>
							<legend>간편상담예약</legend>
							<div class="pd_20 mb5">
								<p class="phone_p">
	                <input class="input_text_c1" maxlength="12" type="tel" name="phone" title="연락처" placeholder="000 - 0000 - 0000" style="width: 85%; text-align: center;">		              
								</p>
              </div>
							<p class="pd_20"><input class="btn_blue" type="submit" value="신청"></p>
						</fieldset>
					</form>
				</dd>
			</dl>
			
			<!--PC 개인화 정보-->
			<div class="pc_login_info">
				<div class="top_pc_login_info">
					<p><strong>님</strong> <em>반갑습니다.</em></p>
					
          
            <span></span>
          
          
          
          
				</div>

				<div class="bottom_pc_login_info">
					<p class="ico_car1">
					
						
						
						
							<a href="/personal/carinfo.do">차량 등록</a>
						
						
					</p>
					<p class="ico_info1"><a href="/personal/info/myInfoChk.do">개인정보수정</a></p>
				</div>
			</div>
			<!--/PC 개인화 정보-->
		</li>
		<!--/간편예약상담-->
			
		<!--예약현황조회-->
		<li class="main_li_2" style="top: 0px; height: 238px;">
			<a href="/personal/resvrStatusList.do">
				<dl>
					<dt>예약현황조회</dt>
					<dd>진료예약현황을 조회</dd>
				</dl>
			</a>

				<!--진료예약,검사예약-->
				<div class="pc_card_bottom_form fix">
				
					<!--진료예약-->
					<div class="lft_card_bottom">
						<div class="pc_lft_card_bottom">
							<div>
								<a href="/personal/resvrStatusList.do"><strong>진료예약</strong></a>
								<p class="btn_more"><a href="/personal/resvrStatusList.do"><img src="/front/images/main/btn_n_plus.png" alt="진료예약현황 바로가기"></a></p>
							</div>
							
							
							
							
								<div class="sec_dd">
									<span class="cpt_span">예약된 진료가 없습니다.</span>
								</div>
							
						</div>
						
					</div>
					<!--/진료예약-->

					<!--검사예약-->
					<div class="rit_card_bottom">
						<div class="pc_lft_card_bottom">
							<div>
								<a href="/personal/resvrCheckStatusList.do"><strong>검사예약</strong></a>
								<p class="btn_more"><a href="/personal/resvrCheckStatusList.do"><img src="/front/images/main/btn_n_plus.png" alt="검사예약현황 바로가기"></a></p>
							</div>
							
							
							
							
								<div class="sec_dd">
									<span class="cpt_span">예약된 검사가 없습니다.</span>
								</div>
							
							
						</div>
					</div>
					<!--/검사예약-->

				</div>
				<!--/진료예약,검사예약-->
		</li>
		<!--/예약현황조회-->

		<!--의료진/진료과 찾기-->
		<li class="main_li_3" style="top: 0px; height: 238px;">
			<dl>
				<dt><a href="/medical/drMedicalTeam.do">의료진/<span>진료과 찾기</span></a></dt>
				<dd>
					<form action="/search.do" onsubmit="return chkTxt2( this );">
						<fieldset>
							<legend>의료진/진료과 찾기</legend>
							<p class="pd_20 mb5"><label class="skip" for="search_txt">의료진, 진료과 입력</label><input class="input_text_c" type="search" name="search_txt" id="search_txt" placeholder="의료진, 진료과 입력"></p>
							<p class="pd_20"><input class="btn_blue" type="submit" value="찾기"></p>
						</fieldset>
					</form>
				</dd>
			</dl>
		</li>
		<!--/의료진/진료과 찾기-->

		<!--온라인 예약-->
		<li class="main_li_4" style="top: 0px; height: 238px;">
			<a href="/reserve/onlineReserve.do">
				<dl>
					<dt>온라인 예약</dt>
					<dd>온라인으로 진료예약을 진행</dd>
				</dl>
			</a>
		</li>
		<!--/온라인 예약-->

		<!--오시는길-->
		<li class="main_li_5" style="top: 240px; height: 238px;">
			<a href="/intro/map/road.do">
				<dl>
					<dt>찾아오시는 길</dt>
					<dd>지하철, 버스, 자동차, 기차</dd>
				</dl>
			</a>
		</li>
		<!--/오시는길-->

		<!--진료비결제-->
		<li class="main_li_6" style="top: 0px; height: 238px;">
			<a href="/treatmentpay/PayMedicalList.do">
				<dl>
					<dt>진료비 결제</dt>
					<dd>온라인으로 진료비 결제진행</dd>
				</dl>
			</a>
		</li>
		<!--/진료비결제-->

		<!--진료스케쥴-->
		<li class="main_li_7" style="top: 0px; height: 238px;">
			<a href="/medical/deptListTime.do">
				<dl>
					<dt>외래진료일정표</dt>
					<dd>진료과별 진료스케쥴 확인</dd>
				</dl>
			</a>
		</li>
		<!--/진료스케쥴-->

		<!--처방동영상-->
		<li class="main_li_8" style="top: 0px; height: 238px;">
			<a href="/personal/myHichart.do">
				<dl>
					<dt>처방동영상</dt>
					<dd>나의 처방동영상 확인</dd>
				</dl>
			</a>
		</li>
		<!--/처방동영상-->

		<!--Health4U-->
		<li class="main_li_9" style="top: 0px; height: 238px;">
			<a href="/personal/health4u.do">
				<dl>
					<dt><span>Health4U</span></dt>
					<dd>나의 진료기록 조회</dd>
				</dl>
			</a>
		</li>
		<!--/Health4U-->

		<!--주요기사-->
		<li class="main_li_10" style="top: -1px; height: 238px;">
			<a href="/intro/news/newsList.do">
				<dl>
					<dt>언론소식</dt>
					<dd>병원관련 주요기사</dd>
				</dl>
			</a>
		</li>
		<!--/주요기사-->
	</ul>
		
	<!--하단 add 메뉴-->
	<ul class="add_menu_section fix">
		<li class="add_menu_1">
			<a href="/medical/out/clinic01.do">
				<dl>
					<dt>외래진료안내</dt>
					<dd>외래진료 관련 절차 및 안내</dd>
				</dl>
			</a>
		</li>

		<li class="add_menu_2">
			<a href="/personal/certi/ctfIssue.do">
				<dl>
					<dt>증명서발급안내</dt>
					<dd>증명서 발급에 대한 안내</dd>
				</dl>
			</a>
		</li>

		<li class="add_menu_3">
			<a href="https://hpc.snubh.org/index.do" target="_blank">
				<dl>
					<dt>건강검진안내</dt>
					<dd>건강검진 프로그램 안내</dd>
				</dl>
			</a>
		</li>


		<li class="add_menu_5">
			<a href="/outcomesbook.do">
				<dl>
					<dt>Outcomes Book</dt>
					<dd>의료질지표</dd>
				</dl>
			</a>
		</li>
		
	</ul>
	<!--/하단 add 메뉴-->
</div>
<!--/메인 메뉴-->

<!--m_add_menu_section-->
	<div class="m_add_menu_section_w">
	<ul class="m_add_menu_section slick-initialized slick-slider"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
		<div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"><li class="add_menu_3 slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 0px;">
			<a href="https://hpc.snubh.org/index.do" target="_blank">
				<dl>
					<dt>건강검진안내</dt>
					<dd>건강증진센터검진 프로그램</dd>
				</dl>
			</a>
		</li><li class="add_menu_5 slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="true" role="option" aria-describedby="slick-slide00" style="width: 0px;">
			<a href="/outcomesbook.do">
				<dl>
					<dt>Outcomes Book</dt>
					<dd>의료질지표</dd>
				</dl>
			</a>
		</li><li class="add_menu_1 slick-slide" data-slick-index="1" aria-hidden="true" role="option" aria-describedby="slick-slide01" style="width: 0px;">
			<a href="/medical/out/clinic01.do">
				<dl>
					<dt>외래진료안내</dt>
					<dd>외래진료 관련 절차 및 안내</dd>
				</dl>
			</a>
		</li><li class="add_menu_2 slick-slide" data-slick-index="2" aria-hidden="true" role="option" aria-describedby="slick-slide02" style="width: 0px;">
			<a href="/personal/certi/ctfIssue.do">
				<dl>
					<dt>증명서발급</dt>
					<dd>증명서 발급에 대한 안내</dd>
				</dl>
			</a>
		</li><li class="add_menu_3 slick-slide" data-slick-index="3" aria-hidden="true" role="option" aria-describedby="slick-slide03" style="width: 0px;">
			<a href="https://hpc.snubh.org/index.do" target="_blank">
				<dl>
					<dt>건강검진안내</dt>
					<dd>건강증진센터검진 프로그램</dd>
				</dl>
			</a>
		</li><li class="add_menu_5 slick-slide slick-cloned" data-slick-index="4" aria-hidden="true" style="width: 0px;">
			<a href="/outcomesbook.do">
				<dl>
					<dt>Outcomes Book</dt>
					<dd>의료질지표</dd>
				</dl>
			</a>
		</li></div></div>

		

		

		

		
	<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button></ul>
	</div>
	<!--/m_add_menu_section-->

<script>
$(".m_add_menu_section").slick();
</script>

<!--하단 센터소개-->
<div class="center_intro_section slideshow2">
	<div class="center_intro_form fix">
		<div class="center_intro_div">
			<ul class="center_intro_cnt">
				<li style="display: none;">						
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>암센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>세상 모든 이에게 건강과 행복을!</strong>
							2008년 6월 암센터 진료를 시작한 이래, <br>
							암환자들의 다양한 요구에 부응하여 전문적이면서도 <br>
							고급화된 통합진료와 삶의 질 향상을 위하여 <br>
							분당서울대학교병원이 2013년 새롭게 출발하였습니다. <br>
							분당서울대학교병원 암센터는 World BEST in 2020 이라는<br> 
                            비전 하에 암환자들이 행복하도록 최선을 다하고자 합니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://cancer.snubh.org/index.do" target="_blank" title="새창으로 열기">암센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>뇌신경센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>세계 최고의 뇌신경병원을 통한 뇌신경계 질환 정복</strong>
								분당서울대학교병원은 2003년 5월 국내 최초로 뇌신경센터를<br>
								설립하여 한층 더 높은 차원의 진단과 치료를 제공하기 위해<br>
								뇌신경계질환을 통합 관리하여 집중 치료하는<br>
								세계 최고 수준의 뇌신경센터를 운영하고 있습니다. 
							</dd>
						</dl>
						<p class="btn_center"><a href="https://bcni.snubh.org/index.do" target="_blank" title="새창으로 열기">뇌신경센터 바로가기</a></p>
					</div>		
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>노인의료센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>노인의료센터에 오신 것을 환영합니다.</strong>
								분당서울대학교병원 노인의료센터에서는 노인병내과, 신경과, <br>
								재활의학과, 정신건강의학과의 전문의와 노인 전문간호사, 영양사, <br>
								약사, 사회복지사 등으로 구성된 전문팀이 환자 개개인의 특성과 <br>
								상황에 맞는 개별화된 진료를 제공하여 진료의 효율성을 <br>
								높이고 있습니다. 
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/gc/" target="_blank" title="새창으로 열기">노인의료센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>심장혈관센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>심장혈관센터에 오신 것을 환영합니다.</strong>
								분당서울대학교병원 심장혈관센터는 생활 수준의 향상과 <br>
								서구화된 생활 패턴으로 인해 나날이 증가하고 있는 심장, <br>
								혈관 질환을 효과적으로 치료하고, 최상의 의료서비스를 제공하기 <br>
								위해 순환기내과와 흉부외과 외 여러 의료진이 함께 모여 <br>
								협동 진료하는 센터입니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/cvc/" target="_blank" title="새창으로 열기">심장혈관센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>폐센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>폐센터에 오신 것을 환영합니다.</strong>
								분당서울대학교병원은 2003년 개원 시부터 센터 중심의 진료를 <br>
								표방하였으며, 그 중심에 저희 폐센터가 자리하고 있습니다. <br>
								이름뿐인 센터가 아니라 환자를 가운데에 두고 전문 의료진이 <br>
								감싸 안는 형태인 실질적인 센터 진료로 국내 최고의 폐센터로 <br>
								자부하고 있습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/rc/" target="_blank" title="새창으로 열기">폐센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>관절센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>관절센터에 오신 것을 환영합니다.</strong>
								분당서울대학교병원 관절센터는 골, 관절, 신경, 근육 질환과 <br>
								외상에 대한 종합적인 진료, 교육, 연구를 목표로 2003년 5월 10일 <br>
								분당서울대학교병원이 진료를 시작하면서 동시에 개소되었습니다. <br>
								관절 질환에 대해서 국제적인 연구업적을 축적해온 총 14명의 <br>
								서울대학교 의과대학 교수진(정형외과 10명, 진단방사선과 3명, <br>
								류마티스내과 1명)이 참여하여 설립되었습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/jrc/" target="_blank" title="새창으로 열기">관절센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>척추센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>당신의 척추를 건강하게 지켜드리겠습니다</strong>
								2008년 6월 척추센터를 개소하였고 척추 질환을 다루는 모든 <br>
								진료 분야 즉, 신경외과, 정형외과, 재활의학과, 신경과, <br>
								마취통증의학과, 영상의학과의 전문 의료진이 유기적으로 <br>
								상호 연계할 수 있는 통합 진료 시스템을 갖추고 최적의 <br>
								척추 질환 의료 서비스를 제공하고 있습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/spc/" target="_blank" title="새창으로 열기">척추센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>소화기센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>소화기센터에 오신 것을 환영합니다.</strong>
								소화기센터는 식도, 위, 소장, 대장, 직장에서 발생하는 각종 질환 <br>
								및 간, 담낭을 포함한 담도계, 췌장 등의 이상에 대한 진단 및 <br>
								치료를 담당하는 과입니다. 내시경을 이용한 각종 시술 즉, <br>
								(수면)위내시경, (수면)대장내시경, 췌담도내시경 등의 진단 내시경 <br>
								뿐 아니라 용종절제술 등을 포함한 각종 치료 내시경을 <br>
								시행하고 있습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/aac/" target="_blank" title="새창으로 열기">소화기센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: list-item;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>어지럼증센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>어지럼증센터에 오신 것을 환영합니다.</strong>
								"분당서울대병원은 급속히 증가하고 있는 어지럼증 환자들에게<br>
								신속하고 체계적인 진료를 제공하기 위해 신경과, 이비인후과,<br> 정신과로 
								구성된 국내 최대의 어지럼증 통합진료 시스템을<br> 구축하였습니다. 
								어지럼증 센터의 전문 의료진은 개개인에게<br> 최적화된 진료를 제공할 것이며, 
								세계 최고의 센터를 목표로<br> 최선의 노력을 다하겠습니다."
							</dd>
						</dl>
						<p class="btn_center"><a href="http://www.snubh.org/dh/dzc" target="_blank" title="새창으로 열기">어지럼증센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>건강증진센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>For Your Health &amp; Happy Life</strong>
								국내 최고의 전문 의료진의 풍부한 임상경험을 통한 신뢰할 수 <br>
								있는 정확한 진단과 최적의 치료는 건강증진센터만의 자랑이자 <br>
								자부심입니다. 내외국인 모두가 만족할 수 있는 혁신적인 시스템 <br>
								운영과 함께 결과 상담 이후에도 전문화된 클리닉을 통해 <br>
								체계적이고 지속적인 건강관리가 가능하며 언제든지 모든 진료과 <br>
								교수진의 신속한 선진 의술의 혜택을 누리실 수 있습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://hpc.snubh.org/index.do" target="_blank" title="새창으로 열기">건강증진센터 바로가기</a></p>
					</div>
				</li>
				<li style="display: none;">
                  <div>
                    <dl>
                      <dt>
                        <strong>분당서울대학교병원<em>국제진료센터</em></strong>
                      </dt>
                      <dd class="tit_dd">
                                <strong>Welcome to the International Healthcare Center</strong>
                                분당서울대학교병원 국제진료센터는 외국인 환자들의 초기 일차 <br>
                                진료,언어지원,문화·심리적 지원,타부서와의 조율 등을 통하여 <br>
                                환자들이 안심하고 우수한 분당서울대학교병원의 진료를 받을 수 <br>
                                있도록 최선을 다하고 있습니다.
                      </dd>
                    </dl>
                    <p class="btn_center"><a href="https://www.snubh.org/dh/main/index.do?DP_CD=EN&amp;MENU_ID=003007063" target="_blank" title="새창으로 열기">국제진료센터 바로가기</a></p>
                  </div>
                </li>
				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em style="font-size:27px; padding-left:50px;">고위험 산모·신생아 통합치료센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>산모와 아기의 건강은 한 가정의 행복입니다.</strong>
								분당서울대학교병원은 2016년 보건복지부로부터 경기 권역 내 <br>
								최초로 고위험 산모•신생아 통합치료센터로 지정되었습니다. <br>
								고위험 산모•신생아 통합치료센터는 임신에서 출산까지 모든<br> 과정에 
								걸쳐 중증 복합 질환을 가진 산모와 태아, 그리고 신생아를<br> 체계적으로
								치료 가능하며, 최신 의료장비와 시설, 분야별 전문 의료진을 갖추고
								있어, 산모와 아기의 건강을 위해 최고 수준의 <br> 의료 서비스를 제공할
								수 있도록 노력하고 있습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/hrp" target="_blank" title="새창으로 열기">고위험 산모 · 신생아 통합치료센터 바로가기</a></p>
					</div>
				</li>

				<li style="display: none;">
					<div>
						<dl>
							<dt>
								<strong>분당서울대학교병원<em>소아수술센터</em></strong>
							</dt>
							<dd class="tit_dd">
								<strong>소아수술센터에 오신 것을 환영합니다.</strong>
								세계 의료를 선도하는 분당서울대학교병원 소아수술 전문센터<br>
								세계 최고의 소아수술 통합전문센터에서 여러분들의 건강과 행복을<br>
								찾아드리겠습니다.
							</dd>
						</dl>
						<p class="btn_center"><a href="https://www.snubh.org/dh/psc" target="_blank" title="새창으로 열기">소아수술센터 바로가기</a></p>
					</div>
				</li>
                <li style="display: none;">
                  <div>
                    <dl>
                      <dt>
                        <strong>분당서울대학교병원<em>희귀질환센터</em></strong>
                      </dt>
                      <dd class="tit_dd">
                        <strong>여러분의 건강과 행복을 위해 노력하겠습니다.</strong>
                                                              분당서울대학교병원 희귀질환센터는 40여개의 희귀 및 중증-난치<br>질환 전문 클리닉과
                                                              미진단 희귀질환 클리닉을 개설하여 희귀 및 <br>중증-난치질환으로 고통받고 있는 환자들이 
                                                              질환의 조기진단 및 예방, 치료를 받을 수 있도록 최선의 노력을 다하고 있습니다.<br>
                                                              또한, 2020년 1월부터는 극 희귀, 상세불명 희귀질환, 기타 염색체 이상질환
                                                              진단 요양기관으로 지정되어 극 희귀질환 및 염색체 질환<br> 환자들의 산정특례 등록을 지원하고 있습니다. 
                      </dd>
                    </dl>
                    <p class="btn_center"><a href="https://www.snubh.org/dh/rdc/" target="_blank" title="새창으로 열기">희귀질환센터 바로가기</a></p>
                  </div>
                </li>

			</ul>

			<div class="play_form fix">
				<p class="lft_play_form">
					<span><a href="#" class="stop"><img src="/front/images/main/btn_stop.png" alt="센터 배너 정지"></a></span>
					<span><a href="#" class="play"><img src="/front/images/main/btn_play.png" alt="센터 배너 시작"></a></span>
				</p>

				<ul class="rit_play_form fix">
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="1번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="2번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="3번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="4번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="5번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="6번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="7번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="8번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_on.png" alt="9번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="10번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="11번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="12번 이미지"></a></li>
					<li><a href="#"><img src="/front/images/main/ico_off.png" alt="13번 이미지"></a></li>
                    <li><a href="#"><img src="/front/images/main/ico_off.png" alt="14번 이미지"></a></li>
				</ul>
			</div>
		</div>
	</div>

	<ul class="center_img_ul">
		<li class="bg_c_1 active" style="display: none; opacity: 0;"><span class="skip">암센터 이미지</span></li>
		<li class="bg_c_2" style="display: none; opacity: 0;"><span class="skip">뇌신경센터 이미지</span></li>
		<li class="bg_c_3" style="display: none; opacity: 0;"><span class="skip">노인의료센터 이미지</span></li>
		<li class="bg_c_4" style="display: none; opacity: 0;"><span class="skip">심장혈관센터 이미지</span></li>
		<li class="bg_c_5" style="display: none; opacity: 0;"><span class="skip">폐센터 이미지</span></li>
		<li class="bg_c_6" style="display: none; opacity: 0;"><span class="skip">관절센터 이미지</span></li>
		<li class="bg_c_7" style="display: none; opacity: 0;"><span class="skip">척추센터 이미지</span></li>
		<li class="bg_c_8" style="display: none; opacity: 0;"><span class="skip">소화기센터 이미지</span></li>
		<li class="bg_c_10" style="display: none; opacity: 1;"><span class="skip">어지럼증센터 이미지</span></li>
		<li class="bg_c_9" style="display: none; opacity: 0;"><span class="skip">건강증진센터 이미지</span></li>
		<li class="bg_c_13" style="display: none; opacity: 0;"><span class="skip">국제진료센터 이미지</span></li>
		<li class="bg_c_11" style="display: none; opacity: 0;"><span class="skip">고위험 산모,신생아 통합치료센터 이미지</span></li>
		<li class="bg_c_12" style="display: none; opacity: 0;"><span class="skip">소아수술센터 이미지</span></li>
        <li class="bg_c_14" style="display: none; opacity: 0;"><span class="skip">희귀질환센터 이미지</span></li>
	</ul>
</div>
<!--/하단 센터소개-->

<hr>

<!--헬스 플러스-->
<div class="healthplus_section flexslider">
	<h4><strong>SNUBH Health Plus</strong> <span>분당서울대학교병원에서 제공하는 다양한 정보를 통해 건강한 삶을 누리세요.</span></h4>
	<ul class="health_ul fix">

		<!--건강강좌-->
		<li class="health_li1">
			<div class="health_h5_1"><a href="/service/lecture/healthLectList.do">건강강좌</a></div>
			<div class="bh_main_health_scroll">
				<div class="bh_main_health_scroll_x">
					<ul class="sec_ul" id="edu_area">
						
					<li><a class="btn_link" href="/service/lecture/healthLectView.do?EDU_NO=528"><div><dl><dt>신장이식</dt><dd class="day_date">주제 : 신장이식</dd><dd class="day_date">일정 : 2020.12.17  14:00 ~ 16:00</dd><dd class="day_date">강사 : 정종철 교수</dd><dd class="day_date">장소 :유튜브 실시간 라이브 방송</dd><dd></dd></dl></div></a></li><li><a class="btn_link" href="/service/lecture/healthLectView.do?EDU_NO=527"><div><dl><dt>수면장애의 진단과 치료</dt><dd class="day_date">주제 : 수면장애</dd><dd class="day_date">일정 : 2020.12.04  15:30 ~ 17:00</dd><dd class="day_date">강사 : 수면센터 의료진</dd><dd class="day_date">장소 :유튜브 실시간 라이브 방송</dd><dd></dd></dl></div></a></li><li><a class="btn_link" href="/service/lecture/healthLectView.do?EDU_NO=526"><div><dl><dt>자궁근종 : 최선의 치료방법은 무엇인가요?</dt><dd class="day_date">주제 : 자궁근종</dd><dd class="day_date">일정 : 2020.11.27  13:30 ~ 14:30</dd><dd class="day_date">강사 : 이정렬 교수</dd><dd class="day_date">장소 :유튜브 실시간 라이브 방송</dd><dd></dd></dl></div></a></li><li><a class="btn_link" href="/service/lecture/healthLectView.do?EDU_NO=525"><div><dl><dt>기능성 소화불량증과 위식도역류질환</dt><dd class="day_date">주제 : 소화불량과 위 식도 역류질환</dd><dd class="day_date">일정 : 2020.11.04  15:00 ~ 16:00</dd><dd class="day_date">강사 : 김나영 교수</dd><dd class="day_date">장소 :유튜브 실시간 라이브 방송</dd><dd></dd></dl></div></a></li></ul>
				</div>
			</div>

			<p class="btn_more"><a href="/service/lecture/healthLectList.do"><img src="/front/images/main/ico_plus.png" alt="더보기"></a></p>
		</li>
		<!--/건강강좌-->

		<!--헬스포커스-->
		<li class="health_li2">
			<div class="health_h5_2"><a href="/service/info/com/list.do">헬스포커스</a></div>
			<div class="bh_main_health_scroll">
				<!-- <p class="slick-prev"></p> -->
				<div class="bh_main_health_scroll_x ">
					<ul class="sec_ul" id="b004_area">
						
					<li class="" style="" role="option" aria-describedby="slick-slide30"><a class="btn_link" href="/service/info/com/view.do?BNO=401&amp;Board_ID=B004&amp;RNUM=1"><div><dl><dt>'삐끗' 반복된다면 발목 불안정성 주의, 발목 염좌</dt><dd class="img_dd"><img src="/upload/board/B004/202012_webzine_thumb1_20201130105321.jpg" alt="" 삐끗'="" 반복된다면="" 발목="" 불안정성="" 주의,="" 염좌="" 이미지'="" width="220"></dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide31"><a class="btn_link" href="/service/info/com/view.do?BNO=400&amp;Board_ID=B004&amp;RNUM=2"><div><dl><dt>노인의 골다공증성 척추 골절 예방법</dt><dd class="img_dd"><img src="/upload/board/B004/202012_webzine_thumb2_20201130105331.jpg" alt="노인의 골다공증성 척추 골절 예방법 이미지" width="220"></dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide32"><a class="btn_link" href="/service/info/com/view.do?BNO=399&amp;Board_ID=B004&amp;RNUM=3"><div><dl><dt>혈관이 서서히 좁아지는 모야모야병</dt><dd class="img_dd"><img src="/upload/board/B004/202012_webzine_thumb3_20201130105342.jpg" alt="혈관이 서서히 좁아지는 모야모야병 이미지" width="220"></dd></dl></div></a></li></ul>
				</div>
				<!-- <p class="slick-next"></p> -->
			</div>
			
			<p class="btn_more"><a href="/service/info/com/list.do"><img src="/front/images/main/ico_plus.png" alt="더보기"></a></p>
		</li>
		<!--헬스포커스-->
		
		<!--헬스라이프-->
		<li class="health_li3">
			<div class="health_h5_3"><a href="/service/info/folks/list.do">헬스라이프</a></div>
				<div class="bh_main_health_scroll">
					<!-- <p class="slick-prev"></p> -->
					<div class="bh_main_health_scroll_x">
						<ul class="sec_ul" id="b003_area">
							
						<li class="" style="" role="option" aria-describedby="slick-slide40"><a class="btn_link" href="/service/info/folks/view.do?BNO=175&amp;Board_ID=B003&amp;RNUM=1"><div><dl><dt>슬기로운 소독 생활, 소독 용품 안전하게 사용하기</dt><dd class="img_dd"><img src="/upload/board/B003/202012_webzine_thumb4_20201130105352.jpg" alt="슬기로운 소독 생활, 소독 용품 안전하게 사용하기 이미지" width="220"></dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide41"><a class="btn_link" href="/service/info/folks/view.do?BNO=174&amp;Board_ID=B003&amp;RNUM=2"><div><dl><dt>나만의 작은 숲을 찾아서, 영화 &lt;리틀 포레스트&gt; 속 배추전·양배추 샌드위치</dt><dd class="img_dd"><img src="/upload/board/B003/202012_webzine_thumb5_20201130105415.jpg" alt="나만의 작은 숲을 찾아서, 영화 <리틀 포레스트> 속 배추전·양배추 샌드위치 이미지" width="220"></dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide42"><a class="btn_link" href="/service/info/folks/view.do?BNO=173&amp;Board_ID=B003&amp;RNUM=3"><div><dl><dt>언택트 시대를 여는 디지털 진료의 첫걸음</dt><dd class="img_dd"><img src="/upload/board/B003/202011_webzine_thumb4_20201029120519.jpg" alt="언택트 시대를 여는 디지털 진료의 첫걸음 이미지" width="220"></dd></dl></div></a></li></ul>
					</div>
					<!-- <p class="slick-next"></p> -->
			</div>

			<p class="btn_more"><a href="/service/info/folks/list.do"><img src="/front/images/main/ico_plus.png" alt="더보기"></a></p>
		</li>
		<!--/헬스라이프-->

		<!--힐링스토리-->
		<li class="health_li4">
			<div class="health_h5_4"><a href="/service/hope/list.do">힐링스토리</a></div>
			<div class="bh_main_health_scroll">
				<!-- <p class="slick-prev"></p> -->
				<div class="bh_main_health_scroll_x">
					<ul class="sec_ul" id="b047_area">
						
					<li class="" style="" role="option" aria-describedby="slick-slide50"><a class="btn_link" href="/service/hope/view.do?BNO=28"><div><dl><dt>#의료진덕분에 #국민덕분에 #감사합니다 #당신을 존경합니다</dt><dd>의료진덕분에,국민덕분에, 감사합니다, 당신을 존경합니다 지난 4월 웹진 퀴즈 이벤트의 '코로나19로 고생하고 있는 의료진 또는 국민들을 위한 응원메시지 남기기'에 많은 분들이 참여해주셨습니...</dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide51"><a class="btn_link" href="/service/hope/view.do?BNO=27"><div><dl><dt>다문화 가정과 함께하는 든든한 의료 가족들</dt><dd>다문화 가정과 함께하는 든든한 의료 가족들 말도 통하지 않는 타국에서 몸까지 아프면 서러운 마음이 클 것이다. 그 마음을 잘 아는 듯 여느 환자들을 대할 때보다 더욱 세심하게 마음을 기울이...</dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide52"><a class="btn_link" href="/service/hope/view.do?BNO=26"><div><dl><dt>신뢰로 이겨낸 두번의 암</dt><dd>건강이요? 최고지요! “사회 활동에 아무런 지장 없고 아무거나 잘 먹고 소화도 잘하고 있으니 이만하면 최고의 건강상태이죠. 유난스럽게 건강관리 하며 사는 것도 아니에요. 언제 내가 아팠나 ...</dd></dl></div></a></li><li class="" style="" role="option" aria-describedby="slick-slide53"><a class="btn_link" href="/service/hope/view.do?BNO=25"><div><dl><dt>투병의 고통을 딛고, 환자들의 희망으로</dt><dd>윤경애 씨가 급격한 간 기능 저하로 분당서울대병원을 찾았을 때는 이미 혼수상태였습니다. 아무도 예후를 장담할 수 없을 만큼 위급한 상황에서 간이식이라는 대수술을 받았던 그녀가 간 기능을 완...</dd></dl></div></a></li></ul>
				</div>
				<!-- <p class="slick-next"></p> -->
			</div>

			<p class="btn_more"><a href="/service/hope/list.do"><img src="/front/images/main/ico_plus.png" alt="더보기"></a></p>
		</li>
		<!--/힐링스토리-->

		<!--스누비안존-->
		<li class="health_li5">
			<div class="health_h5_5"><a href="/intro/news/snubhStory/list.do">스누비안존</a></div>
			<div class="bh_main_health_scroll">
				<div class="bh_main_health_scroll_x">
					<ul class="sec_ul" id="b048_area">
						
					<li><a class="btn_link" href="/intro/news/snubhStory/view.do?BNO=69"><div><dl><dt>최선의 진료와 최고의 연구를 통해 감염병에 도전한다</dt><dd>최선의 진료와 최고의 연구를 통해 감염병에 도전한다 인터뷰. 오창완 연구부원장, 감염내과 김의석 교수 코로나19 사태를 겪으며 감염병 예방과 관리에 관한 관심이 크게 높아졌다. 분당서울대학...</dd></dl></div></a></li><li><a class="btn_link" href="/intro/news/snubhStory/view.do?BNO=68"><div><dl><dt>우리 몸의 소중한 기둥, 척추를 지키는 사람들</dt><dd>척추에 의해 척추를 위해, 척추를 지키는 사람들 척추센터 인터뷰. 김기정 척추센터장 우리 국민의 척추 건강은 해가 갈수록 나빠지고 있다. 가장 널리 알려진 원인은 노화이지만, 스포츠 레저 ...</dd></dl></div></a></li><li><a class="btn_link" href="/intro/news/snubhStory/view.do?BNO=67"><div><dl><dt>공공의료는 우리 병원의 존재 이유,  공공의료사업단</dt><dd>공공의료는 우리 병원의 존재 이유 공공의료사업단 공공의료사업단 백남종 단장·강철환 부단장 분당서울대학교병원 공공의료사업단은 의료 격차를 없애기 위해 다양한 사업을 추진하며 사회에 따뜻한 힘...</dd></dl></div></a></li><li><a class="btn_link" href="/intro/news/snubhStory/view.do?BNO=66"><div><dl><dt>건강하게 늙어갈 권리를 찾아주는 사람들,  노인의료센터</dt><dd>건강하고 행복하게 늙어갈 권리를 찾아주는 사람들, 노인의료센터 우리는 평균 100세 시대를 살고 있다. 2025년에는 65세 이상 노인 인구가 전체 인구의 20%에 달하는 초고령사회로 진입...</dd></dl></div></a></li></ul>
				</div>
			</div>

			<p class="btn_more"><a href="/intro/news/snubhStory/list.do"><img src="/front/images/main/ico_plus.png" alt="더보기"></a></p>
		</li>
		<!--/스누비안존-->
    
    <!--나음진-->
    <li class="health_li6">
      <div class="health_h5_6"><a href="/service/info/ebook/list.do">나음진</a></div>
      <div class="bh_main_health_scroll">
				<div class="bh_main_health_scroll_x">
					<ul class="sec_ul" id="b057_area">
						
					<li><a class="btn_link" href="/file_download.do?board_id=B057&amp;dirName=board/B057&amp;fileOrgName=52D638 2020C5ECB984(B2E8BA74)_20200915015318.pdf&amp;fileRealName=52호 2020여름(단면).pdf"><div><dl><dt>나누다</dt><dd class="sw_ebook_subject">52호 2020여름</dd><dd class="img_dd"><img src="/upload/board/B057/2020C5ECB984BA54C778_20200915015318.jpg" alt="52호 2020여름 이미지" width="220"></dd></dl></div></a></li><li><a class="btn_link" href="/file_download.do?board_id=B057&amp;dirName=board/B057&amp;fileOrgName=51D638 2020BD04(D3BCCE68)_20200427110550.pdf&amp;fileRealName=51호 2020봄(펼침).pdf"><div><dl><dt>누리다</dt><dd class="sw_ebook_subject">51호 2020봄</dd><dd class="img_dd"><img src="/upload/board/B057/2020BD04BA54C778CD5CCD5CCD5CC885_20200427111945.jpg" alt="51호 2020봄 이미지" width="220"></dd></dl></div></a></li><li><a class="btn_link" href="/file_download.do?board_id=B057&amp;dirName=board/B057&amp;fileOrgName=50D638 2019 ACA8C6B8(B2E8BA74)_20200123014735.pdf&amp;fileRealName=50호 2019 겨울(단면).pdf"><div><dl><dt>머물다</dt><dd class="sw_ebook_subject">50호 2019겨울</dd><dd class="img_dd"><img src="/upload/board/B057/2019C5ECB984-BA54C778C9C4C9DCC9C4C9DC_20200123014928.jpg" alt="50호 2019겨울 이미지" width="220"></dd></dl></div></a></li></ul>
				</div>
      </div>

      <p class="btn_more"><a href="/service/info/ebook/list.do"><img src="/front/images/main/ico_plus.png" alt="더보기"></a></p>
    </li>
    <!--/나음진-->

	</ul>

	<p class="btn_health_more mb30"><a href="javascript:health_data_load();"><img id="loader_btn" src="/front/images/main/btn_more.png" alt="헬스플러스 더 불러오기"></a></p>
</div>
<!--/헬스 플러스-->


<!-- 공지사항 -->
<div class="main_notice_section main_new_table">
  <table>
    <caption>공지사항 목록입니다.</caption>
    <colgroup>
      <col width="50%">
      <col width="50%">
    </colgroup>
    
    <thead>
      <tr>
        <th colspan="2">
          <a class="tit_m_notice_a fix" href="/intro/news/noti/list.do">공지사항
          <img src="/front/images/main/btn_pp.gif" alt="더보기"></a>
        </th>
      </tr>
    </thead>
    
    <tbody>
    
      
    
        
          <tr>
        
        
          <td><a href="/intro/news/noti/view.do?BNO=1128"><em>공지</em> 입원환자 입원 전 코로나19 검사 시행 안내</a></td>
        
        
      
      
    
        
        
          <td><a href="/intro/news/noti/view.do?BNO=1122"><em>공지</em> [코로나19 감염예방] 모바일 문진표 작성 안내</a></td>
        
        
          </tr>
        
      
      
    
        
          <tr>
        
        
          <td><a href="/intro/news/noti/view.do?BNO=1101"><em>공지</em> 대리처방&nbsp;관련&nbsp;의료법&nbsp;개정&nbsp;안내&nbsp;(2020.2.28일&nbsp;시행)</a></td>
        
        
      
      
    
        
        
          <td><a href="/intro/news/noti/view.do?BNO=1099"><em>공지</em> 코로나19(코로나바이러스감염증-19) 관련 안내</a></td>
        
        
          </tr>
        
      
      
    
        
          <tr>
        
        
          <td><a href="/intro/news/noti/view.do?BNO=993"><em>공지</em> 홈페이지 서비스 이용 가이드</a></td>
        
        
      
      
    
        
        
          <td><a href="/intro/news/noti/view.do?BNO=989"><em>공지</em> 내원 시 지켜야 할 감염 예방 수칙</a></td>
        
        
          </tr>
        
      
      
    
        
          <tr>
        
        
          <td><a href="/intro/news/noti/view.do?BNO=926"><em>공지</em> [분당서울대학교병원 홈페이지 회원 관리 정책 안내]</a></td>
        
        
      
      
    
        
        
          <td><a href="/intro/news/noti/view.do?BNO=680"><em>공지</em> [비급여 항목 안내]</a></td>
        
        
          </tr>
        
      
      
    
        
          <tr>
        
        
          <td><a href="/intro/news/noti/view.do?BNO=1129"> 2020년 12월 유튜브 라이브 건강강좌 일정</a></td>
        
        
      
      
    
        
        
          <td><a href="/intro/news/noti/view.do?BNO=1127"> 2020년 11월 유튜브 라이브 건강강좌 일정</a></td>
        
        
          </tr>
        
      
      
      
    </tbody>
  </table>
  

  
</div>
<!-- /공지사항 -->

<style>
.container_wrapper{padding-bottom:00px;}
</style>
<!--하단 협력기관-->
<div class="main_company_div">
	<ul class="main_company_ul fix">
		<li class="li_banner_n_1"><a href="https://msri.snubh.org/index.do" target="_blank" title="새창으로 열기">연구부문</a></li>
		<li class="li_banner_n_2"><a href="https://www.snubh.org/dh/en/" target="_blank" title="새창으로 열기">국제진료센터</a></li>
		<li class="li_banner_n_3"><a href="https://sbrc.snubh.org/index.do" target="_blank" title="새창으로 열기">진료협력센터</a></li>
		<li class="li_banner_n_4"><a href="https://www.snubh.org/dh/mc/" target="_blank" title="새창으로 열기">공공의료사업단</a></li>
		<li class="li_banner_n_5"><a href="https://www.snubh.org/dh/hcd7/" target="_blank" title="새창으로 열기">발전후원회</a></li>
	</ul>
</div>
<!--/하단 협력기관-->

<script type="text/javascript">
	var ip = "1.214.131.126";
	var da = "MOZILLA/5.0 &#40;WINDOWS NT 10.0; WIN64; X64&#41; APPLEWEBKIT/537.36 &#40;KHTML, LIKE GECKO&#41; CHROME/87.0.4280.66 SAFARI/537.36";
	if( ip == "1.214.45.90" ) {

	  //alert( da );
		//var b = "false";
		//alert( b );
	}
  </script>


      
        </div>
        <!--/contents_section-->

      </div>
      <!--/container_wrapper-->

      <hr>
      
      <!--footer_wrapper-->
      <div class="footer_wrapper fix">
        <div class="q_section" style="display: none;">
          <h3 class="skip">바로가기 메뉴</h3>
          <ul class="sli_ddd">
            <li class="q1_1"><a href="/medical/drMedicalTeam.do"><img src="/front/images/sub/ico_q1.png" alt=""><span>의료진찾기</span></a></li>
            <li class="q2_1"><a href="/medical/deptListTime.do"><img src="/front/images/sub/ico_q2.png" alt=""><span>외래진료일정표</span></a></li>
            <li class="q3_1"><a href="/intro/map/road.do"><img src="/front/images/sub/ico_q3.png" alt=""><span>찾아오시는 길</span></a></li>
            <li class="q4_1"><a href="/personal/certi/ctfIssue.do"><img src="/front/images/sub/ico_q4.png" alt=""><span>증명서발급</span></a></li>
            <li class="q5_1"><a href="/service/info/ebook/list.do"><img src="/front/images/sub/ico_q5.png" alt=""><span>나음진</span></a></li>
            <li class="q6_1"><a href="http://blog.naver.com/happy_snubh" target="_blank"><img src="/front/images/sub/ico_q5.jpg" alt=""><span>블로그</span></a></li>
            <li class="q7_1"><a href="https://www.facebook.com/SNUBundanghospital" target="_blank"><img src="/front/images/sub/ico_q6.gif" alt=""><span>페이스북</span></a></li>
            <li class="q8_1"><a href="https://www.youtube.com/user/snubh" target="_blank"><img src="/front/images/sub/ico_q7.gif" alt=""><span>유튜브</span></a></li>
            <li class="q9_1"><a href="javascript:alert( '준비중입니다.' );"><img src="/front/images/sub/ico_q8.gif" alt=""><span>톡! 상담</span></a></li>
          </ul>
        </div>

        <!--footer_util_section-->
        <ul class="footer_util_section fix">
          <li class="ico_f1"><a href="/intro/map/parking.do">주차안내</a></li>
          <li class="ico_f2"><a href="/intro/hospital/situation.do">병원현황</a></li>
          <li class="ico_f3"><a href="/medical/day/surgeryCenter01.do">당일수술센터</a></li>
          <li class="ico_f4"><a href="/medical/emergency/center.do">응급의료센터</a></li>
          <li class="ico_f5"><a href="/medical/inOut/hospital01.do">입원/퇴원</a></li>
          <li class="ico_f6"><a href="/medical/visit.do">면회</a></li>
          <li class="ico_f7"><a href="/medical/supDeptList.do">진료지원부서</a></li>
          <!-- <li class="ico_f8"><a href="#">콜센터</a></li> -->
        </ul>
        <!--/footer_util_section-->

        <div class="add_footer_section fix" id="bh_footer">
		<h2 class="skip">카피라이트</h2>
          <div class="add_footer_form fix">
      
            <div class="lft_add_footer_form">
              <ul class="footer_util_ul fix">
                <li><a href="/member/privacy.do">개인정보처리방침</a></li>
                <li><a href="/member/rigths.do">환자권리장전</a></li>
                <li><a href="/member/guest.do">고객헌장</a></li>
                <!-- <li><a href="mailto:master@snubh.org">이메일주소수집거부</a></li> -->
                <li><a href="/personal/voice/customervoiceList.do">고객의 소리</a></li>
                
                <li><a href="/personal/voice/faq/list.do">FAQ</a></li>
                <li><a href="http://www.alio.go.kr/home.do" target="_blank">ALIO</a></li>
                <li><a href="/sitemap/SiteMap.do">사이트맵</a></li>
              </ul>
              
              <div class="fix">
                <div class="etc_service_form">

                  <!--특성화센터/진료과 바로가기-->
                  <div class="select_form">
                    <div>
                      <form name="link_form">
                        <fieldset>
                          <legend>특성화센터/진료과</legend>
                          <select title="특성화센터/진료과" name="link">
                            <option value="">특성화센터/진료과</option>
                            <option class="op_cor1" value="https://cancer.snubh.org/index.do">암센터</option>
                            <option class="op_cor1" value="https://bcni.snubh.org/index.do">뇌신경센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/gc/">노인의료센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/cvc/">심장혈관센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/rc/">폐센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/jrc/">관절센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/spc/">척추센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/aac/">소화기센터</option>
                            <option class="op_cor1" value="https://www.snubh.org/dh/dzc">어지럼증센터</option>
                            <option class="op_cor1" value="https://hpc.snubh.org/index.do">건강증진센터</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/fm/">가정의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/imi/">감염내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ime/">내분비내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/gc/">노인병내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/imj/">류마티스내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/an/">마취통증의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/tr/">방사선종양학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/pa/">병리과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ur/">비뇨의학과(비뇨기과)</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/og/">산부인과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ps/">성형외과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ped/">소아청소년과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/img/">소화기내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/cvc">순환기내과</option>
                            <option class="op_cor5" value="https://bcni.snubh.org/index.do">신경과</option>
                            <option class="op_cor5" value="https://bcni.snubh.org/index.do">신경외과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/imn/">신장내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ot/">안과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ima/">알레르기내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/dr/">영상의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/gs/">외과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/em/">응급의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ol/">이비인후과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/rh/">재활의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/np/">정신건강의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/os/">정형외과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/lm/">진단검사의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ds/">치과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/dm/">피부과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/nm/">핵의학과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/imh/">혈액종양내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/imr/">호흡기내과</option>
                            <option class="op_cor5" value="https://www.snubh.org/dh/ts/">흉부외과</option>
                          </select>
                          <input type="button" class="btn_go" value="바로가기" onclick="goLink();return false;">
                        </fieldset>
                      </form>
                    </div>
                  </div>
                  <!--/특성화센터/진료과 바로가기-->

                  <!--협진센터 바로가기-->
                  <div class="select_form">
                    <div>
                      <form name="link_form1">
                        <fieldset>
                          <legend>협진센터/클리닉</legend>
                          <select title="협진센터/클리닉" name="link">
                            <option value="">협진센터/클리닉</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd1/">간암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/gkc">감마나이프센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd2/">갑상선암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/hrp/">고위험 산모·신생아 통합치료센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd3/">근골격종양센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd24/">노인암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd8">뇌신경재활센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd2">뇌전증·수면센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd4/">뇌종양센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd5/">뇌혈관센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd4">뇌혈관시술센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd5/">담도·췌장암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd6/">대장암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd7/">두경부암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/hairbish">모발센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/vitibish">백반증센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd8/">부인암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd9/">비뇨기·전립선암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd25/">비만대사센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd6/">소아뇌신경센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/psc/">소아수술센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd10/">소아청소년 혈액종양센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/ncd17/">수면센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd11/">식도암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd1">신경계중환자치료센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd7">신경인지행동센터</option>
                            <option class="op_cor2" value="http://www.e-allergy.org/">아토피천식교육정보센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd12/">암통합지지센터</option>
                            <!-- <option class="op_cor2" value="https://www.snubh.org/dh/bcd9">어지럼증눈운동진활센터</option> -->
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd13/">위암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd14/">유방암센터</option>                            
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd26">전이성위암센터</option>                            
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd19">종양내과센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd10/">척수·신경근육센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd15/">척추종양센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/ncd9">청각재활센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd21">치매·경도인지장애센터</option>
                            <!-- <option class="op_cor2" value="https://www.snubh.org/dh/dcd21">치매·경도인지장애센터</option> -->
                            <option class="op_cor2" value="https://www.snubh.org/dh/bcd12">파킨슨센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd16/">폐암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/dcd18/">혈액암센터</option>
                            <option class="op_cor2" value="https://www.snubh.org/dh/rdc/">희귀질환센터</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/ncd14">당뇨족창상클리닉</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/ncd16">대동맥류혈관클리닉</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/dcd22">발달·자폐·사회성 클리닉</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/ncd6">슬관절클리닉</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/sjc">어깨관절클리닉</option>                            
                          </select>
                          <input type="button" class="btn_go" value="바로가기" onclick="goLink1();return false;">
                        </fieldset>
                      </form>
                    </div>
                  </div>
                  <!-- /협진센터 바로가기-->

                  <!--패밀리사이트-->
                  <div class="select_form">
                    <div>
                      <form name="link_form2">
                        <fieldset>
                          <legend>패밀리사이트</legend>
                          <select title="패밀리사이트" name="link">
                            <option value="">패밀리사이트</option>
                            <option class="op_cor4" value="http://medicine.snu.ac.kr/">서울대학교의과대학</option>
                            <option class="op_cor4" value="http://www.snuh.org/pub/">서울대학교병원</option>
                            <option class="op_cor4" value="https://www.brmh.org/index.do">서울특별시 보라매병원</option>
                            <option class="op_cor4" value="http://healthcare.snuh.org/home.do">서울대학교병원 강남센터</option>
                            <option class="op_cor3" value="https://msri.snubh.org/index.do">연구부문</option>
                            <option class="op_cor3" value="http://snubhctc.org">임상시험센터</option>
                            <option class="op_cor3" value="https://sbrc.snubh.org/index.do">진료협력센터</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/mc">공공의료사업단</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/hcd7">발전후원회</option>
                            <option class="op_cor3" value="https://www.snubh.org/dh/en/">국제진료센터</option>
                            <option class="op_cor3" value="https://hip.snubh.org/">헬스케어혁신파크</option>
                            <!-- <option class="op_cor3" value="https://www.snubh.org/dh/rihp">정책연구기획센터</option> -->
                          </select>
                          <input type="button" class="btn_go" value="바로가기" onclick="goLink2();return false;">
                        </fieldset>
                      </form>
                    </div>
                  </div>
                  <!--/패밀리사이트-->

                </div>

                <div class="m_util_talk">
                  <p><a href="javascript:alert( '준비중입니다.' );" target="_blank" title="새창으로 열기"><img src="/front/images/main/icon.gif" alt="톡상담"></a></p>
                </div>
								<div class="m_util_footer bh_mm_22">
									<a href="tel:1588-3369"><span>대표전화</span><strong>1588-3369</strong></a><br><strong style="background:none; font-size:12px; letter-spacing:-0.5px; padding:5px 0 0 0; font-weight:400;">(말로 거는 전화 : <a href="tel:1641" style="text-decoration:underline;">1641</a> 누르고 <a href="tel:1641" style="text-decoration:underline;">'분당서울대병원'</a> 이라고 말하세요.)</strong>
								</div>
                <ul class="m_util_footer fix">
                  <li><a href="http://blog.naver.com/happy_snubh" target="_blank" title="새창으로 열기"><img src="/front/images/main/ico_mb1.png" alt="블로그"></a></li>
                  <li><a href="https://www.facebook.com/SNUBundanghospital" target="_blank" title="새창으로 열기"><img src="/front/images/main/ico_mb2.png" alt="페이스북"></a></li>
                  <li><a href="https://www.youtube.com/user/snubh" target="_blank" title="새창으로 열기"><img src="/front/images/main/ico_mb3.png" alt="유튜브"></a></li>
                </ul>
                
                <address>
					
                  13620 경기도 성남시 분당구 구미로173번길 82  법인명(단체명):분당서울대학교병원  대표자명:백롱민 <br>
                               사업자등록번호:129-82-06989  대표전화:1588-3369 <em class="m_none">/ 말로거는 전화 : 1641 누르고 '분당서울대병원' 이라고 말하세요.</em><br>
                  Copyright © 2016. 분당서울대학교병원. All Rights Reserved.<br>
                </address>
			
				<!--new_banner_main_div-->
				  <div class="new_banner_main_div fix">
					<ul class="fix">
						<li class="footer_n_mark_1">
							<p>
								<em class="skip">인증마크1</em>
								<span>
									인증번호 : ISMS 18-020<br>
									유효기간 : 2018.04.06 ~ 2021.04.05<br>
									인증범위 : 의료정보시스템(OCS,EMR)<br>　　　　　및 홈페이지 서비스 운영
								</span>
							</p>
						</li>

						<li class="footer_n_mark_2">
							<p>
								<em class="skip">인증마크1</em>
								<span>
									인증번호 : IS 679936<br>
									유효기간 : 2020.09.15<br>　　　　~ 2023.09.14
								</span>
							</p>
                        </li>

                        <li class="footer_n_mark_3">
							<p>
								<em class="skip">인증마크1</em>
								<span>
									인증번호 : PHIS 731156<br>
									유효기간 : 2020.09.15<br>　　　　~ 2023.09.14
								</span>
							</p>
                        </li>

                    </ul>
                    <ul class="footer_sub_mark_wrap fix">

						<li class="footer_n_mark_4">
							<p>
								<em class="skip">인증마크1</em>
								<span>
									과학기술정보통신부<br>
									WEB ACCESSIBILITY
								</span>
							</p>
						</li>

						<li class="footer_n_mark_5">
							<p>
								<em class="skip">인증마크1</em>
								<span>
									미국외 세계최초<br>EMR 7단계 인증
								</span>
							</p>
						</li>

						<li class="footer_n_mark_6">
							<p>
								<em class="skip">인증마크1</em>
								<span>
									보건복지부<br>의료기관 인증
								</span>
							</p>
						</li>


					</ul>
				  </div>
				<!--/new_banner_main_div-->
              </div>
              
			  <!--
              <div>
                <h4 class="skip">분당서울대학교병원 인증기관</h4>
                <ul class="ij_ul fix">
					<li><a target="_blank" title="새창으로 열기" href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110"><img src="/front/images/main/ico_wa.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크 (웹 접근성 품질인증 마크)" /></a></li>
                  <li><img src="/front/images/main/ico_ij1.gif" alt="보건복지부 의료기관 인증" /></li>
                  <li><img src="/front/images/main/ico_ij2.gif" alt="13년 연속 브랜드 파워1위" /></li>
                  <li><img src="/front/images/main/ico_ij3.gif" alt="미국외 세계최초 EMR 7단계 인증" /></li>
                  <li><img src="/front/images/main/ico_ij4.gif" alt="개인정보보호 우수사이트" /></li>
                  <li><img src="/front/images/main/ico_ij5.gif" alt="인터넷사이트 안전마크" /></li>
                </ul>
              </div>
			  -->
            </div>
              
          </div>

        </div>

      </div>
      <!--/footer_wrapper-->
    </div>
    <!--/common_wrapper-->

  </div>
  <!--/body_wrapper-->
  
  <script type="text/javascript">
  var appVersion = "1.0";
  var platform = "INT03";
	var isMobileApp = false;
	var isMobileAppReal = false;

  if( isMobileApp == true ){
	  
	  api_isPayIng( "false" );
	  
  }
  
  
  </script>
 
 
    
  <!-- *) 공통 분석스크립트  -->
  <!-- AceCounter Log Gathering Script V.71.2010011401 -->
  
  <script type="text/javascript">
    var _ag = 0 ;
    var _id = '';
    var _mr = '';
    var _gd = '';
    var _skey = '';
  
    var _jn = '';
    var _jid = '';
  
    var _ud1 = '';
    var _ud2 = '';
    var _ud3 = '';
  
    
  
    if(typeof _GUL == 'undefined'){
    var _GUL = 'weblog.snubh.org';var _GPT='9000'; var _SGPT='9443';var _AIMG = new Image(); var _bn=navigator.appName; var _PR = location.protocol=="https:"?"https://"+_GUL+":"+_SGPT:"http://"+_GUL+":"+_GPT;if( _bn.indexOf("Netscape") > -1 || _bn=="Mozilla"){ setTimeout("_AIMG.src = _PR+'/?cookie';",1); } else{ _AIMG.src = _PR+'/?cookie'; };
    document.writeln("<scr"+"ipt language='javascript' src='/acecounter/acecounter_V70.js'></scr"+"ipt>");
    }
    
  </script><script language="javascript" src="/acecounter/acecounter_V70.js"></script>

  <noscript><img src='https://weblog.snubh.org:9443/?uid=1&je=n&' alt='통계관련 메세지' border=0 width=0 height=0></noscript>
  <!-- AceCounter Log Gathering Script End -->
 

 
 
    




  <!-- GoogleAnalytics -->
  <script>
  if( typeof goPay != "undefined" ){
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  
    ga('create', 'UA-101628218-1', 'auto');
    ga('send', 'pageview');
  }
  </script>
  <!-- GoogleAnalytics -->
  

</body>
</html>