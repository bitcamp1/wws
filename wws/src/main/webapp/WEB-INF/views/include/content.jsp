<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
<div id="content">
<h3 class="invisible">슬라이더</h3>
			<div id="visualGall">
				
				<ul class="visualUL">
									
						<li>
							<span class="navi"><a href="HotImg_0" onclick="newslide(0);return false;">1</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider01.jpg'/>" alt="note3" class="HotImg" usemap="#MapMainImg1" id="HotImg_1" />
									<map name="MapMainImg1" id="MapMainImg1">
									<area shape="rect" coords="0,0,640,268" href="http://www.samsung.com/sec/galaxynote3/"  alt="자세히보기" target="_blank"/>									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_1" onclick="newslide(1);return false;">2</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider02.jpg'/>" alt="스마트DTG" class="HotImg" usemap="#MapMainImg2" id="HotImg_2" />
									<map name="MapMainImg2" id="MapMainImg2">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히보기" />									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_2" onclick="newslide(2);return false;">3</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider03.jpg'/>" alt="택배솔루션" class="HotImg" usemap="#MapMainImg3" id="HotImg_3" />
									<map name="MapMainImg3" id="MapMainImg3">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히보기" />									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_3" onclick="newslide(3);return false;">4</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider04.jpg'/>" alt="PRO-LOGIS" class="HotImg" usemap="#MapMainImg4" id="HotImg_4" />
									<map name="MapMainImg4" id="MapMainImg4">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히보기" />									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_4" onclick="newslide(4);return false;">5</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider05.jpg'/>" alt="SKTagency" class="HotImg" usemap="#MapMainImg5" id="HotImg_5" />
									<map name="MapMainImg5" id="MapMainImg5">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히보기" />									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_5" onclick="newslide(5);return false;">6</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider06.jpg'/>" alt="가을SK " class="HotImg" usemap="#MapMainImg6" id="HotImg_6" />
									<map name="MapMainImg6" id="MapMainImg6">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히보기" />									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_6" onclick="newslide(6);return false;">7</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider07.jpg'/>" alt="회사소개" class="HotImg" usemap="#MapMainImg7" id="HotImg_7" />
									<map name="MapMainImg7" id="MapMainImg7">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히 보기" />									</map>
							</span>
						</li>
									
						<li>
							<span class="navi"><a href="HotImg_7" onclick="newslide(7);return false;">8</a></span>
							<span class="pic">
									<img src="<c:url value='/resources/img/index/slider08.jpg'/>" alt="LTE-A광고" class="HotImg" usemap="#MapMainImg8" id="HotImg_8" />
									<map name="MapMainImg8" id="MapMainImg8">
									<area shape="rect" coords="0,0,640,268" href="#"  alt="자세히보기" />									</map>
							</span>
						</li>
								</ul>
<!-- 슬라이더 제어장치 --><div id="ctrlHots"> 
					<a href="#hotsPrev" id="btnPrevHot" onclick="return false;" title="이전 핫이슈"><img src="<c:url value='/resources/img/index/hots_btn_prev_n.png'/>" alt="이전" /></a>
					<a href="#hotsPause" id="hotsPause" onclick="return false;" title="핫이슈 일시정지"><img src="<c:url value='/resources/img/index/hots_btn_pause_n.png'/>"  alt="일시정지" /></a>
					<a href="#hotsNext" id="btnNextHot" onclick="return false;" title="다음 핫이슈"><img src="<c:url value='/resources/img/index/hots_btn_next_n.png'/>" alt="다음" /></a>
				</div>
			</div>
			
<h3 class="invisible">화이트윙 공지사항</h3>
			<div id="newsWrap">
				<ul class="newsUL">
					<li class="lists inews">
						<h4 class="news_tit_inews">SKTelecom<span class="desc">- 새소식</span></h4>
						<ul>
							<li class="newsUList">
								<p><span class="pic">
									<a target="_blank" href="#">
										<img src="<c:url value='/resources/img/index/news01.jpg'/>" width="310" height="140" alt="SKT공지사항"  />
									</a></span>
								</p>
								<h5 class="news_tit_inews">SK텔레콤 새소식</h5>
							</li>
							
						</ul>
					</li>
									<li class="lists">
						<h4 class="news_tit_sculture">스마트DTG</h4>
						<ul>							<li class="newsUList">								
							<p><span class="pic"><a href="#" target="_blank">
								<img src="<c:url value='/resources/img/index/news02.jpg'/>" alt="스마트DTG 새소식" width="310" height="140" /></a></span>
									</p>
								<h5 class="news_tit_inews">스마트DTG 새소식</h5>
							</li>
																			
						</ul>
					</li>
									<li class="lists">
						<h4 class="news_tit_citybuild">모바일택배시스템</h4>
							<ul>							
								<li class="newsUList"><p><span class="pic"><a href="#" target="_blank">
									<img src="<c:url value='/resources/img/index/news03.jpg'/>" alt="모바일택배시스템" width="310" height="140" /></a></span>
									</p>
								<h5 class="news_tit_inews">모바일택배 시스템 새소식</h5>
							</li>
																			
						</ul>
					</li>
									<li class="lists">
						<h4 class="news_tit_economy">물류솔루션</h4>
						<ul>							<li class="newsUList">								<p><span class="pic"><a href="#" target="_blank">
						<img src="<c:url value='/resources/img/index/news04.jpg'/>" alt="물류솔루션 새소식" width="310" height="140" /></a></span>
									</p>
								<h5 class="news_tit_inews">
								물류솔루션 새소식</h5>
							</li>
																		
							</ul>
					</li>
								
								</ul>
				
			</div>
			
		</div>
