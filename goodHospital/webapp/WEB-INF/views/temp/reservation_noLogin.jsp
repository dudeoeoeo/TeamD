<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
 </head>
 <style>
 div.reserve_con {
    padding: 23px 27px;
    background: #fff;
}
div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td, legend {
    margin: 0;
    padding: 0;
}
user agent stylesheet
div {
    display: block;
}
div.reserve_layer {
    position: relative;
    padding: 0 0 5px 0;
    font-size: 12px;
    background: url(http://storage.iseverance.com/2013_obj_sev/images/reserve_bottom_bg.png) no-repeat 0 bottom;
}
#container .subwrap {
    clear: both;
    position: relative;
    width: 960px;
    min-height: 456px;
    _height: 456px;
    margin: 0 auto;
    padding-bottom: 70px;
    text-align: left;
    background: url(http://storage.iseverance.com/2009_obj_isev/images/bg_sub_top_iseve.gif) no-repeat left top;
    z-index: 20;
    zoom: 1;
}
html, body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    font-family: NanumGothic;
    font-size: 13px;
    line-height: 20px;
    color: #555;
    background-color: #fff;
    letter-spacing: -0.04em;
}
 </style>
 <body>
  <div class="reserve_con"><!-- 통합예약_내용부분 -->


	<div class="bx2_skin_t1"><br>
		<p class="state_off">
			<img src="https://storage.iseverance.com/2013_obj_sev/icon/ico_login_off.gif" alt="로그아웃 상태 표시">&nbsp;
			
			<img src="https://storage.iseverance.com/2013_obj_isev/button/txt_login_off_160527.gif" alt="비로그인 상태입니다. 로그인 하시면 더 빠르고 편리하게 진료예약이 가능합니다.">
			<span style="float: right;">
				<style>
					.mgr10{margin-right : 1px !important;}
				</style>
			</span>
		</p><br>
	</div><br>

	<div class="bx2_skin_t1"><!-- 예약유형선택 -->
		<fieldset>
			<legend>예약유형선택</legend>
			<p class="strong">※ 예약 유형을 선택해 주세요.</p>
			<ul class="reserve_type">
				<li><input type="radio" class="input-radio" id="appnt_who_patient_1" name="appnt_ptnt_step02" value="1" onclick="switchPatientStep02()" checked="checked"><label for="appnt_who_patient_1">예약자 본인 예약</label></li>
				<li><input type="radio" class="input-radio" id="appnt_who_patient_2" name="appnt_ptnt_step02" value="2" onclick="switchPatientStep02()"><label for="appnt_who_patient_2">대리예약</label></li>
			</ul>
		</fieldset>
		
		<fieldset>
			<legend>비회원 예약</legend>
			<p class="strong">&lt;비회원 예약&gt;</p>
			회원 가입 없이 환자 본인의 진료 예약을 하실 수 있습니다.<br>
			
		</fieldset>
		
	</div><!-- //예약유형선택 -->

	<div class="info_enter"><!-- 정보입력 -->
		<div class="own" style="width: 100%;"><h2 class="h4_type1">본인 정보 입력</h2><table class="tbl1" summary="본인 정보 입력 입니다. 각 항목은 이름, 병원등록번호, 연락처, 예비연락처, 이메일로 구분됩니다."><caption>본인 정보 입력</caption><colgroup><col width="123"><col></colgroup><tbody><tr><th scope="row" class="first"><span class="notice">*</span> 이름</th><td class="tdfirst"><input type="text" id="inet_appnt_self_name" name="inet_appnt_self_name"></td></tr><tr><th scope="row"><span class="notice">*</span> 주민등록번호</th><td><input type="hidden" name="inet_unitno_search" id="inet_unitno_search" value="R"><div class="unitNo_ssn" id="layFindUnitNoInputContent"><input type="text" name="inet_appnt_unitno_ssn_1" id="inet_appnt_unitno_ssn_1" style="width:70px;" maxlength="6"> - <input type="password" name="inet_appnt_unitno_ssn_2" id="inet_appnt_unitno_ssn_2" style="width:70px;" maxlength="7"></div><input type="checkbox" name="unitNo_agree" id="unitNo_agree" value="1"> <span class="privateinfo">개인</span>정보는 병원정보 조회를 위해서만 사용합니다. <span class="privateinfo">개인</span>정보 이용에 동의합니다.</td></tr><tr><th scope="row"><span class="notice">*</span> <label for="inet_appnt_self_cell_1">연락처</label></th><td><select name="inet_appnt_self_cell_1" id="inet_appnt_self_cell_1" class="select" title="연락처 첫번째 자리 선택" style="width:96px;"><option value="" selected="selected">선택</option><option value="010">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option><option value="02">서울(02)</option><option value="031">경기(031)</option><option value="032">인천(032)</option><option value="033">강원(033)</option><option value="041">충남(041)</option><option value="042">대전(042)</option><option value="043">충북(043)</option><option value="051">부산(051)</option><option value="052">울산(052)</option><option value="053">대구(053)</option><option value="054">경북(054)</option><option value="055">경남(055)</option><option value="061">전남(061)</option><option value="062">광주(062)</option><option value="063">전북(063)</option><option value="064">제주(064)</option><option value="0502">KT(0502)</option><option value="0505">데이콤(0505)</option><option value="0506">하나로(0506)</option><option value="070">LG(070)</option></select> - <input type="text" name="inet_appnt_self_cell_2" id="inet_appnt_self_cell_2" class="input-text num_txt" title="연락처 두번째 자리 입력" style="width:50px;" maxlength="4"> - <input type="text" name="inet_appnt_self_cell_3" id="inet_appnt_self_cell_3" class="input-text num_txt" title="연락처 세번째 자리 입력" style="width:50px;" maxlength="4"></td></tr></tbody></table></div><!-- //본인 -->
		<div class="patient" style="width: 0%;"></div><!-- //환자 -->
	</div><!-- //정보입력 -->

	<div class="bx_skin_t2"><!-- 하단 서비스 안내 -->
		<div class="tip first">
			<p class="infomsg">예약 서비스</p>
			<div class="indent">
				<ul class="list_type1">
					<li>예약이 안되는 경우, 우측 상단의 해피콜 서비스를 이용해 주세요.</li>
					<li>진료받으실 환자 실명으로 예약을 하셔야 하며 본인 예약의 경우 본인인증 절차를 거칩니다.</li>
				</ul>
			</div>
		</div>
		<div class="tip">
			<p class="infomsg">전화상담신청(해피콜) 안내 <br>전화번호를 남기시면, 상담원이 예약을 도와드립니다.</p>
			<div class="indent">
				<ul class="list_type1">
					<li>상담시간 : 평일 08:30 ~ 17:30. 토요일 08:30 ~ 12:30 (공휴일 제외)</li>
				</ul>
			</div>
		</div>
	</div><!-- //하단 서비스 안내 -->

	<div id="first_step_button" class="button_wrap" style="display: block;"><!-- 버튼 -->
		<span class="button2 point"><input type="button" value="다음" onclick="confirmWhoPatientForm();"></span>
		<span class="button2"><a href="#inet_appnt_rewrite" onclick="resetWhoPationtForm();">다시작성</a></span>
	</div><!-- //버튼 -->

</div>
 </body>
</html>
