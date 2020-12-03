<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>의약품정보</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/patient/terms_200508.css" media="screen">


</head>
<body>
<div id="container">
		
    <div id="content">


<div class="path_area">
    <a href="/list.nhn?categoryId=51000" class="path_link selected">의약품사전</a><em class="count">54,385건</em>
</div><div class="medicine_search_wrap active">
	<a href="#" class="medicine_link">
		<strong class="title"><i class="ico"></i>의약품검색</strong>
		<span class="desc">의약품 정보 또는 약모양으로 찾아볼 수 있어요</span>
		<span class="link">접기<i class="ico_arrow"></i></span>
	</a>
	<div class="medicine_search">
		<form name="medicineNameSearchForm" action="/medicineSearch.nhn" method="get" id="medicineNameSearchForm">
		<input type="hidden" name="mode" value="nameSearch">
		<label for="medicine_name" class="label_search"><strong>약 정보</strong>로 검색</label>
		<input name="query" type="text" placeholder="약 이름 또는 성분 등으로 검색해 보세요." value="약 이름 또는 성분 등으로 검색해 보세요." id="ip_txt" class="input_search">
		<input type="submit" value="검색" class="btn_cont_search" id="nameSearchBtn">
		</form>
	</div>
	<div class="medicine_search_detail">
		<form name="medicineExteriorSearchForm" action="/medicineSearch.nhn" method="get" id="medicineExteriorSearchForm">
			<input type="hidden" name="mode" value="exteriorSearch">
			<input type="hidden" name="shape" value="">
			<input type="hidden" name="color" value="">
			<input type="hidden" name="dosageForm" value="">
			<input type="hidden" name="divisionLine" value="">
			<div class="medicine_shape">
				<label for="ip_txt2" class="label_search"><strong>약 모양</strong>으로 검색</label>
				<input type="text" name="identifier" value="식별문자 (약의 앞면이나 뒷면의 문자)로 검색해 보세요." placeholder="식별문자 (약의 앞면이나 뒷면의 문자)로 검색해 보세요." id="ip_txt2" class="input_search">
			</div>
			<div class="dsc_mdcn">
				<div class="slide_mdcn">
					<div class="mdcn_shape inner_mdcn slick-initialized slick-slider" id="slide_shape">
						<div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 60000px; transform: translate3d(0px, 0px, 0px);"><div class="item_mdcn on slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false"><a href="javascript:void(0)" class="all">모양<br>전체</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="1" data-slick-index="1" aria-hidden="false"><a href="javascript:void(0)" class="shape"><span>원형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="2" data-slick-index="2" aria-hidden="false"><a href="javascript:void(0)" class="shape2"><span>타원형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="3" data-slick-index="3" aria-hidden="false"><a href="javascript:void(0)" class="shape3"><span>반원형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="4" data-slick-index="4" aria-hidden="false"><a href="javascript:void(0)" class="shape4"><span>삼각형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="5" data-slick-index="5" aria-hidden="false"><a href="javascript:void(0)" class="shape5"><span>사각형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="6" data-slick-index="6" aria-hidden="false"><a href="javascript:void(0)" class="shape6"><span>마름모형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="7" data-slick-index="7" aria-hidden="false"><a href="javascript:void(0)" class="shape7"><span>장방형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="8" data-slick-index="8" aria-hidden="false"><a href="javascript:void(0)" class="shape8"><span>오각형</span></a></div><div class="item_mdcn slick-slide slick-active" data-displayname="9" data-slick-index="9" aria-hidden="false"><a href="javascript:void(0)" class="shape9"><span>육각형</span></a></div><div class="item_mdcn slick-slide" data-displayname="10" data-slick-index="10" aria-hidden="true"><a href="javascript:void(0)" class="shape10"><span>팔각형</span></a></div><div class="item_mdcn slick-slide" data-displayname="99" data-slick-index="11" aria-hidden="true"><a href="javascript:void(0)" class="shape11"><span>기타</span></a></div></div></div>
						
						
						
						
						
						
						
						
						
						
						
					</div>
					<a href="javascript:void(0)" class="btn_page type1 prev" style="display: none;"><span class="blind">이전</span></a>
					<a href="javascript:void(0)" class="btn_page type1 next"><span class="blind">다음</span></a>
				</div>
				<div class="slide_mdcn">
					<div class="mdcn_color inner_mdcn slick-initialized slick-slider" id="slide_color">
						<div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 85000px; transform: translate3d(0px, 0px, 0px);"><div class="item_mdcn on slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false"><a href="javascript:void(0)" class="all">색상<br>전체</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="16384" data-slick-index="1" aria-hidden="false"><a href="javascript:void(0)"><span class="color"></span>하양</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="8" data-slick-index="2" aria-hidden="false"><a href="javascript:void(0)"><span class="color2"></span>노랑</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="512" data-slick-index="3" aria-hidden="false"><a href="javascript:void(0)"><span class="color3"></span>주황</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="32" data-slick-index="4" aria-hidden="false"><a href="javascript:void(0)"><span class="color4"></span>분홍</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="64" data-slick-index="5" aria-hidden="false"><a href="javascript:void(0)"><span class="color5"></span>빨강</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="1" data-slick-index="6" aria-hidden="false"><a href="javascript:void(0)"><span class="color6"></span>갈색</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="128" data-slick-index="7" aria-hidden="false"><a href="javascript:void(0)"><span class="color7"></span>연두</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="2048" data-slick-index="8" aria-hidden="false"><a href="javascript:void(0)"><span class="color8"></span>초록</a></div><div class="item_mdcn slick-slide slick-active" data-displayname="1024" data-slick-index="9" aria-hidden="false"><a href="javascript:void(0)"><span class="color9"></span>청록</a></div><div class="item_mdcn slick-slide" data-displayname="8196" data-slick-index="10" aria-hidden="true"><a href="javascript:void(0)"><span class="color10"></span>파랑</a></div><div class="item_mdcn slick-slide" data-displayname="4" data-slick-index="11" aria-hidden="true"><a href="javascript:void(0)"><span class="color11"></span>남색</a></div><div class="item_mdcn slick-slide" data-displayname="256" data-slick-index="12" aria-hidden="true"><a href="javascript:void(0)"><span class="color12"></span>자주</a></div><div class="item_mdcn slick-slide" data-displayname="16" data-slick-index="13" aria-hidden="true"><a href="javascript:void(0)"><span class="color13"></span>보라</a></div><div class="item_mdcn slick-slide" data-displayname="32768" data-slick-index="14" aria-hidden="true"><a href="javascript:void(0)"><span class="color14"></span>회색</a></div><div class="item_mdcn slick-slide" data-displayname="2" data-slick-index="15" aria-hidden="true"><a href="javascript:void(0)"><span class="color15"></span>검정</a></div><div class="item_mdcn slick-slide" data-displayname="4096" data-slick-index="16" aria-hidden="true"><a href="javascript:void(0)"><span class="color16"></span>투명</a></div></div></div>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
					<a href="javascript:void(0)" class="btn_page type2 prev" style="display: none;"><span class="blind">이전</span></a>
					<a href="javascript:void(0)" class="btn_page type2 next"><span class="blind">다음</span></a>
				</div>
				<div class="slide_mdcn">
					<div class="mdcn_hoof">
						<div class="item_mdcn on"><a href="javascript:void(0)" class="all">제형<br>전체</a></div>
						<div class="item_mdcn" data-displayname="1"><a href="javascript:void(0)" class="hoof"><span>정제류</span></a></div>
						<div class="item_mdcn" data-displayname="2"><a href="javascript:void(0)" class="hoof2"><span>경질캡슐</span></a></div>
						<div class="item_mdcn" data-displayname="3"><a href="javascript:void(0)" class="hoof3"><span>연질캡슐</span></a></div>
					</div>
				</div>
				<div class="slide_mdcn">
					<div class="mdcn_costula">
						<div class="item_mdcn on"><a href="javascript:void(0)" class="all">분할선<br>전체</a></div>
						<div class="item_mdcn" data-displayname="8"><a href="javascript:void(0)" class="costula"><span>없음</span></a></div>
						<div class="item_mdcn" data-displayname="2"><a href="javascript:void(0)" class="costula2"><span>(-)형</span></a></div>
						<div class="item_mdcn" data-displayname="1"><a href="javascript:void(0)" class="costula3"><span>(+)형</span></a></div>
						<div class="item_mdcn" data-displayname="4"><a href="javascript:void(0)" class="costula4"><span>기타</span></a></div>
					</div>
				</div>
			</div>
			<div class="btn_area">
				<a href="javascript:void(0);" role="button" class="btn_pill_search" id="exteriorSearchBtn">검색</a>
				<a href="javascript:void(0);" role="button" class="btn_reset" id="exteriorSearchResetBtn">초기화</a>
			</div>
		</form>
	</div>
</div>






<div class="list_wrap">
    <ul class="content_list">
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2140285">
                            <a href="/entry.nhn?docId=2140285&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2140285" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_9%2F20171126022112845_RQZOH3G3T.jpg%2FA11A4290B001503.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_9%2F20171126022112845_RQZOH3G3T.jpg%2FA11A4290B001503.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="소론도정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2140285" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2140285&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_9%2F20171126022112845_RQZOH3G3T.jpg%2FA11A4290B001503.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_9%2F20171126022112845_RQZOH3G3T.jpg%2FA11A4290B001503.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="소론도정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2140285&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>소론도정</strong></a>
                        </strong>
                    </div>
                    <p class="desc __ellipsis" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] 1. 내분비 장애 : 원발성 및 속발성 부신피질기능부전증, 선천성 부신이상증식, 암에 수반된 고칼슘혈증, 비화농성 갑상선염</p><p></p><p></p>2. 류마티스성 장애 <p></p>급성진행 또는 악화를 방지하기 위한 단기투여용 보조요법으로서 다음의 질환 : 류마티스양 관절염(연소성 류마티스양 관절염을 포함), 강직성 척추염<p></p><p></p>3. 교원성 질환 <p></p>악화 중에 있거나 유지요법이 필요한 다음의 질환 : 전신<p></p>

                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                            
                           
                        </div>
                    </div>
                </div>
            </li>
            
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2141123">
                            <a href="/entry.nhn?docId=2141123&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2141123" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832678_ZKYIMOV9F.jpg%2FA11ABBBBB090302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832678_ZKYIMOV9F.jpg%2FA11ABBBBB090302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="인데놀정10mg">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2141123" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2141123&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832678_ZKYIMOV9F.jpg%2FA11ABBBBB090302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832678_ZKYIMOV9F.jpg%2FA11ABBBBB090302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="인데놀정10mg"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2141123&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>인데놀정10mg</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis is-truncated" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] [허가사항변경(2014년 재평가), 의약품안전평가과-2589, 2015.11.17](정제) 1. 기외수축(상실성, 심실성), 발작성빈맥의 예방, 빈맥성심방세동, 발작성심방세동, 동빈맥, 협심증... </p>
                     
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                          
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2141231">
                            <a href="/entry.nhn?docId=2141231&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2141231" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171909506_5CACWJ9VK.jpg%2FA11ABBBBB115302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171909506_5CACWJ9VK.jpg%2FA11ABBBBB115302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="리보트릴정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2141231" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2141231&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171909506_5CACWJ9VK.jpg%2FA11ABBBBB115302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171909506_5CACWJ9VK.jpg%2FA11ABBBBB115302.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="리보트릴정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2141231&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>리보트릴정</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] 1. 간질 및 부분발작(초점발작)</p><p></p>2. 원발성 및 2차적으로 전신화된 강직간대발작(대발작)<p></p>3. 유·소아 간질(특히 정형성 및 비정형성 결신발작)<p></p>4. 공황장애 [용법용량] 이 약의 용량은 환자의 임상반응과 내약성에 따라 개별적으로 조절해야 한다.<p></p>○ 간질 및 부분발작(초점발작), 원발성 및 2차적으로 전신화된 강직간대발작(대발작), 유·소아 간질(특히 정형성 및 비정형성 결신발작)<p>&lt;</p>
                      
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                          
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2141235">
                            <a href="/entry.nhn?docId=2141235&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2141235" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171910180_ZUM6HQD2N.jpg%2FA11ABBBBB116801.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171910180_ZUM6HQD2N.jpg%2FA11ABBBBB116801.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="마그밀정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2141235" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2141235&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171910180_ZUM6HQD2N.jpg%2FA11ABBBBB116801.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171910180_ZUM6HQD2N.jpg%2FA11ABBBBB116801.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="마그밀정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2141235&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>마그밀정</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] 1. 주효능 효과</p><p></p>1) 다음 질환의 제산작용 및 증상의 개선 : 위·십이지장궤양, 위염, 위산과다<p></p>2) 변비증 [용법용량] 1. 성인<p></p>1) 위ㆍ십이지장궤양, 위염, 위산과다 : 수산화마그네슘으로서 1일 1~2.5g을 수회 분할 경구투여한다.<p></p>2) 변비증 : 1일 1~2g을 1~2회 분할 경구투여한다.<p></p><p></p>연령, 증상에 따라 적절히 증감한다.<p></p>
                      
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                            
                       
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2141124">
                            <a href="/entry.nhn?docId=2141124&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2141124" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832696_GREAEW799.jpg%2FA11ABBBBB090401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832696_GREAEW799.jpg%2FA11ABBBBB090401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="인데놀정40mg">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2141124" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2141124&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832696_GREAEW799.jpg%2FA11ABBBBB090401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623171832696_GREAEW799.jpg%2FA11ABBBBB090401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="인데놀정40mg"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2141124&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>인데놀정40mg</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis is-truncated" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] [허가사항변경(2014년 재평가), 의약품안전평가과-2589, 2015.11.17](정제) 1. 기외수축(상실성, 심실성), 발작성빈맥의 예방, 빈맥성심방세동, 발작성심방세동, 동빈맥, 협심증... </p>
                        
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                     
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2134512">
                            <a href="/entry.nhn?docId=2134512&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2134512" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623165457352_U8SMYIUPJ.jpg%2FA11A0450A008501.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623165457352_U8SMYIUPJ.jpg%2FA11A0450A008501.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="페니라민정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2134512" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2134512&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623165457352_U8SMYIUPJ.jpg%2FA11A0450A008501.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623165457352_U8SMYIUPJ.jpg%2FA11A0450A008501.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="페니라민정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2134512&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>페니라민정</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis is-truncated" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] 고초열(꽃가루 알레르기비염(코염)), 두드러기, 가려움성 피부질환(습진ㆍ피부염, 피부가려움증, 약물발진), 알레르기 비염(코염), 혈관운동성 코염, 코감기에 의한 재채기·콧물·기... </p><p></p> [용법용량] 성인 : 클로르페니라민말레산염으로서 1회 2 〜 6 mg 1일 2 〜 4회 경구투여한다.<p></p>1일 24 mg을 초과해서는 안된다.<p></p><p></p>
                     
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                            
                   
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2135883">
                            <a href="/entry.nhn?docId=2135883&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2135883" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623170133201_WSBEQ37PZ.jpg%2FA11A0950A004301.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623170133201_WSBEQ37PZ.jpg%2FA11A0950A004301.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="보나링에이정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2135883" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2135883&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623170133201_WSBEQ37PZ.jpg%2FA11A0950A004301.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623170133201_WSBEQ37PZ.jpg%2FA11A0950A004301.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="보나링에이정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2135883&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>보나링에이정</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] (경구 : 정제, 시럽제)</p><p></p>1. 주효능·효과<p></p>1) 멀미·메니에르증후군·방사선숙취에 의한 구역·구토·어지러움<p></p>2) 수술후 구역·구토<p></p>(경구 : 껌정)<p></p>멀미에 의한 어지러움·구토·두통의 예방 및 완화<p></p> [용법용량] (경구 : 정제, 시럽제)<p></p>성인 : 디멘히드리네이트로서 1회 50㎎ 1일 3-4회 경구투여 한다. 예방목적으로는 30분-1시간전에 50-100㎎을 투<p></p>
            
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                            
                       
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2133029">
                            <a href="/entry.nhn?docId=2133029&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2133029" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_16%2F20180819013125082_JJAW30WQP.jpg%2FA11A0100A008003.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_16%2F20180819013125082_JJAW30WQP.jpg%2FA11A0100A008003.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="후라시닐정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2133029" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2133029&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_16%2F20180819013125082_JJAW30WQP.jpg%2FA11A0100A008003.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_16%2F20180819013125082_JJAW30WQP.jpg%2FA11A0100A008003.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="후라시닐정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2133029&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>후라시닐정</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] (정제)</p><p></p>1.트리코모나스증<p></p>2. 혐기성균 감염증<p></p><p style="MARGIN-LEFT: 1px; TEXT-INDENT: 0px">1) 복부내감염증(복막염, 복부내농양, 간농양), 피부 및 피부조직 감염증, 부인과 감염증(자궁내막염, 자궁근내막염, 자궁관난소농양), 세균성 패혈증, 골 및 관절 감염증, 중추신경계 감염증(뇌 농양, 뇌수막염), 하기도감염증(폐렴, 농흉, 폐농양), 심내막염</p>2)<p></p>
                       
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                      
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2160528">
                            <a href="/entry.nhn?docId=2160528&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2160528" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623181704506_WLY3V4VKG.jpg%2FA11AOOOOO977601.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623181704506_WLY3V4VKG.jpg%2FA11AOOOOO977601.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="하루날디정0.2mg">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2160528" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2160528&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623181704506_WLY3V4VKG.jpg%2FA11AOOOOO977601.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_2%2F20160623181704506_WLY3V4VKG.jpg%2FA11AOOOOO977601.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="하루날디정0.2mg"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2160528&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>하루날디정0.2mg</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis is-truncated" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] [허가사항변경(2012년 재평가), 의약품관리총괄과-9301호, 2013.12.30]양성 전립샘비대증에 따른 배뇨장애 [용법용량] 성인 : 탐스로신염산염 0.2 mg을 1일 1회 식후에 경구 투... </p>
                      
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                         
                        </div>
                    </div>
                </div>
            </li>
            <li>
                    <div class="thumb_area">
                        <div class="thumb id2140277">
                            <a href="/entry.nhn?docId=2140277&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);">
                                <span class="mask"></span>
                                <img onerror="this.className='listThumbnail'" data-id="id2140277" class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_18%2F20200223235412159_3DW7HPEUD.jpg%2FA11A4270A001401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_18%2F20200223235412159_3DW7HPEUD.jpg%2FA11A4270A001401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" alt="무코스타정">
                                <span class="mask"></span>
                            </a>
                        </div>
                        
                        <div class="ly_image_view id2140277" style="display:none">
                            <div class="image_area">
                                    <a href="/entry.nhn?docId=2140277&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.img', '', '', 1);"><img class="" src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_18%2F20200223235412159_3DW7HPEUD.jpg%2FA11A4270A001401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" data-src="https://dthumb-phinf.pstatic.net/?src=%22https%3A%2F%2Fdbscthumb-phinf.pstatic.net%2F3323_000_18%2F20200223235412159_3DW7HPEUD.jpg%2FA11A4270A001401.jpg%3Ftype%3Dm1500%22&amp;twidth=226&amp;theight=226&amp;opts=17" onerror="this.src='https://ssl.pstatic.net/static/terms/terms/img/noimg.gif';if(this.nextSibling)this.nextSibling.style.display='none';" alt="무코스타정"></a>
                            </div>
                        </div>
                    </div>
                <div class="info_area">
                    <div class="subject">
                        <strong class="title">
                            <a href="/entry.nhn?docId=2140277&amp;cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.termlist', '', '', 1);"><strong>무코스타정</strong></a>
                            
                        </strong>
                    </div>
                    <p class="desc __ellipsis is-truncated" style="overflow: hidden; max-height: 44px; overflow-wrap: break-word;">[효능효과] [허가사항변경(2011년 재평가), 의약품관리과-6843, 2012.12.31)](정제)1. 위궤양2. 다음 질환의 위점막병변(미란,출혈,발적,부종)의 개선 : 급성위염, 만성위염의 급성악화기 [용... </p>
                      
                    <div class="related v2">
                        <div class="iner">
                            <span class="info book"><a href="/list.nhn?cid=51000&amp;categoryId=51000" onclick="nclk(this, 'tml.source', '', '', 1);">의약품 사전</a></span>
                            
                    
                        </div>
                    </div>
                </div>
            </li>
    </ul>
</div>



<div id="paginate" class="paginate">
    <span class="prev disabled"><a href="#" onclick="return false;">이전</a><i class="ico_bar"></i></span>
    <strong>1</strong>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=2" onclick="nclk(this, 'pag.paging', '', '2', 1)">2</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=3" onclick="nclk(this, 'pag.paging', '', '3', 1)">3</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=4" onclick="nclk(this, 'pag.paging', '', '4', 1)">4</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=5" onclick="nclk(this, 'pag.paging', '', '5', 1)">5</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=6" onclick="nclk(this, 'pag.paging', '', '6', 1)">6</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=7" onclick="nclk(this, 'pag.paging', '', '7', 1)">7</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=8" onclick="nclk(this, 'pag.paging', '', '8', 1)">8</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=9" onclick="nclk(this, 'pag.paging', '', '9', 1)">9</a>
    <a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=10" onclick="nclk(this, 'pag.paging', '', '10', 1)">10</a>
    <span class="next"><i class="ico_bar"></i><a href="/medicineSearch.nhn?mode=exteriorSearch&amp;shape=1&amp;color=&amp;dosageForm=&amp;divisionLine=&amp;identifier=&amp;page=11" onclick="nclk(this, 'pag.next', '', '', 1);">다음</a></span>
</div>


<a href="#" id="goto_top" class="goto_top btn_top" onclick="window.scrollTo(0,0);nclk(this, 'bdr.top', '', '', 1);return false"><span class="blind">위로가기</span></a></div>
</body>
</html>