var prev_VS,next_VS;
var bannerPage = 1;
    var bannerCnt = 0;
    
    function searchMainWord(key) {
    	jQuery("#query").val(key);
    	search_mainTop();
    }

    function changeSearType(searType) {
        document.frmMainTopSearch.sear_type.value = searType;
        
    }

    function search_mainTop() {
    	var frm = document.frmMainTopSearch;
    	var sear_type = frm.sear_type.value;

    	if( sear_type==0 ) {
    		frm.action = "http://search.seoul.go.kr/newsearch/newTotalSearch.jsp";
    		frm.target = "_self";
    		frm.submit();
    	} else {
    		if( sear_type==1 ) {
    			frm.sear_type.value="mem_nm";
    			frm.action = "http://namesearch-app.seoul.go.kr/main/org/org_user_list.jsp";
    		}
    		else {
    			frm.sear_type.value="assign_work";
    			frm.action = "http://namesearch-app.seoul.go.kr/main/org/org_user_list.jsp";
    		}
    		frm.sear_cont.value = frm.query.value;
    		frm.target = "_self";
    		frm.submit();
    	}

    	 return false;
    }
        
    
    function initTextBanner() {
		orderBanner(1);
		bannerCnt = jQuery("#bannerUlList li").length;		
		jQuery("#btnSortSdate").click(function(){
			orderBanner(1);
		});
		jQuery("#btnSortEdate").click(function(){
			orderBanner(2);
		});
		jQuery("#btnReg").click(function(){
			bannerPage = bannerPage - 1;
			if( bannerPage < 1 ) {
				bannerPage = Math.ceil(bannerCnt/5);
			}
			changeBanner(bannerPage);
		});
		jQuery("#btnExp").click(function(){
			if( bannerCnt > bannerPage * 5 ) { 
				bannerPage ++;
			} else {
				bannerPage = 1;
			}
			changeBanner(bannerPage);
		});
    }

    function changeBanner(bannerPage) {
    	var startBanner = (bannerPage - 1) * 5;
    	var endBanner = bannerPage * 5;
    	jQuery("#bannerUlList li").each(function(index){
			if( startBanner <= index && index < endBanner ) {
				jQuery(this).show();
			} else {
				jQuery(this).hide();
			}
		});
    }

    function orderBanner(kind) {
    	var list = [];
    	jQuery("#bannerUlList li").each(function(){
			var obj = {};
			/*
			obj.edate = jQuery(this).find(".edate").text(); 
			obj.sdate = jQuery(this).find(".sdate").text();
			*/
			obj.html = jQuery(this).html();		
			list.push(obj);
		});
    	/*
    	if( kind == 1 ){
			list.sort(sdateSort);
    	} else {
    		list.sort(edateSort);
    	}
    	*/
		jQuery("#bannerUlList li").remove();        
        for(var i = 0 ; i < list.length ; i++ ) {
            var obj = list[i];
            jQuery("#bannerUlList").append("<li>" + obj.html + "</li>");  
        }
        changeBanner(1);
        if( kind == 1 ){ 
        	jQuery(".sdate").show();
        	jQuery(".edate").hide();
        } else {
        	jQuery(".sdate").hide();
        	jQuery(".edate").show();
        }
    }

    // 텍스트 배너존 SORT
    function sdateSort(a, b) {   
        if(a.sdate == b.sdate){ 
            return 0
         } 
        return  a.sdate > b.sdate ? -1 : 1; 
    } 
    
    function edateSort(a, b) {   
        if(a.edate == b.edate){ 
            return 0
         } 
        return  a.edate > b.edate ? -1 : 1; 
    } 

    
	function msg1_closebtn(id){
		document.getElementById(id).style.display='none';
	}
	
    

	// 커버이미지 롤링
	
	function start(st,e,int){
		if (st > (totalcoverimg-1)){st=0}
		var c=st;
		sliderIntervalID = setInterval(function(){
			newslide(c);
			intnum = c;
			if (c==(e)){c=0}else{c=c+1;}
		},int)
	}
	function newslide(e){
		$('.visualUL li.on .pic').fadeOut();
		$('.visualUL li.on').removeClass('on');
		
		$('.navi:eq('+e+')').parent().addClass('on')
		$('.navi:eq('+e+')').next().fadeIn();
		intnum = e;
		//$('body').prepend(intnum);
	}

	function startVisual() {
		if( sliderIntervalID == "" ) {
			start((intnum+1),(totalcoverimg-1),5000);
		}
	}
	
	function stopVisual() {
		if( sliderIntervalID != "" ) {
			clearInterval(sliderIntervalID);
			sliderIntervalID = "";
		}
	}
	
	function start2(st,e,int){
		if (st > (totalbancount-1)){st=0}
		var c=st;
		sliderIntervalID2 = setInterval(function(){
			banslide((c));
			intnum2 = c;
			if (c==(e)){c=0}else{c=c+1;}
		},int)
	}
	
	function banslide(e){
		$('.banPicUL li.on span.pic').fadeOut();
		$('.banPicUL li.on').removeClass();
		
		$('.banPicUL li:eq('+e+')').attr('class','on');
		$('.banPicUL li:eq('+e+') span.pic').fadeIn();
		intnum2 = (e);
	}

	function startImageBanner() {
		if( sliderIntervalID2 == "" ) {
			start2((intnum2+1),(totalbancount-1),5000);
		}
	}

	function stopImageBanner() {
		if( sliderIntervalID2 != "" ) {
			clearInterval(sliderIntervalID2);
			sliderIntervalID2 = "";
		}
	}
	
	function event_rolling(st,e,int){
		if (st > 1){st=0}
		sliderIntervalID3 = setInterval(function(){
			eventslide(st);
			intnum3 = st;
			if (st==(e)){st=0}else{st=st+1;}
		},int)
	}

	function eventslide(e){
		$('.m_event').find('span.img').fadeOut();
		$('.m_event ul li.on').removeClass();

		$('.m_event ul li:eq('+e+')').attr('class','on');
		$('.m_event ul li:eq('+e+')').find('span.img').fadeIn();
	}

	function start3(){
		if( sliderIntervalID3 == "" ) {
			event_rolling((intnum3+1),1,5000);
		}

	}
	function stop3() {
		if( sliderIntervalID3 != "" ) {
			clearInterval(sliderIntervalID3);
			sliderIntervalID3 = "";
		}
	}

	$("document").ready(function(){


		var loginHtml = "";
		// 로그인 체크
		var chk = true;

		if( jQuery.cookie("MEM001_ID") =="" || jQuery.cookie("MEM001_ID") == null )  
			chk = false;
		if( chk==false ) {
			$('#util2').css('width','455px');
			loginHtml += 	'<ul class="utilUL" style="width:473px" id="login_guest">';
			loginHtml +=	'	<li class="first"><a href="http://www.seoul.go.kr/v2012/help/sitemap.html?SSid=401_05">사이트맵</a></li>';
//			loginHtml +=	'	<li class="first"><a href="http://mileage.seoul.go.kr/main/NoticeList.do">마일리지기부</a></li>';
			loginHtml +=	'	<li class="first" style="background-image:none"><a href="http://www.seoul.go.kr/seoul/servlet/seoul?a=UserLoginCheckApp&amp;div=mem&amp;version=renewal&amp;refresh_url=http%3A%2F%2Fwww.seoul.go.kr/&amp;SITE_GB=GB001/?SSid=102_06">로그인</a></li>';
			loginHtml +=	'	<li><a href="http://m.seoul.go.kr/topmenu.do?SSID=102_07" target="_blank" title="서울시 모바일 홈페이지-새창">모바일</a></li>';
			loginHtml +=	'	<li><a href="http://tv.seoul.go.kr" target="_blank" title="서울시 라이브서울 홈페이지-새창">라이브서울</a></li>';
			loginHtml +=	'	<li><a href="http://citizen.seoul.kr/?SSid=102_03" target="_blank" title="서울시 전자우편 홈페이지-새창">전자우편</a></li>';
			loginHtml +=	'</ul>';
		} else {
			$('#util2').css('width','536px');
			loginHtml += 	'<ul class="utilUL" style="width:550px" id="login_member">';
			loginHtml +=	'	<li class="first"><a href="http://www.seoul.go.kr/v2012/help/sitemap.html?SSid=401_05">사이트맵</a></li>';
//			loginHtml +=	'	<li class="first"><a href="http://mileage.seoul.go.kr/main/NoticeList.do">마일리지기부</a></li>';
			loginHtml += 	'	<li class="first"><a href="http://www.seoul.go.kr/seoul/jsp/myseoul/indexT.jsp">마이서울</a></li>';
			loginHtml += 	'	<li class="first" style="background-image:none"><a href="http://www.seoul.go.kr/seoul/jsp/common/logout.jsp?SSid=102_09">로그아웃</a></li>';
			loginHtml +=	'	<li><a href="http://m.seoul.go.kr/topmenu.do?SSID=102_07" target="_blank" title="서울시 모바일 홈페이지-새창">모바일</a></li>';
			loginHtml +=	'	<li><a href="http://tv.seoul.go.kr" target="_blank" title="서울시 라이브서울 홈페이지-새창">라이브서울</a></li>';
			loginHtml +=	'	<li><a href="http://citizen.seoul.kr/?SSid=102_03" target="_blank" title="서울시 전자우편 홈페이지-새창">전자우편</a></li>';
			loginHtml +=	'</ul>';
		}
		$('#util2').html(loginHtml);

		//국가별언어 펼침
		$('#login_guest .language').hover(function(){
			$(this).animate({
					top:"0"
				},500)
		},function(){
			$(this).animate({
					top:"-100px"
				},300)
		})


		startVisual();
		startImageBanner();
		
		$(window).bind("focus", function(){
		//	startVisual();
			startImageBanner();
		});
		 $('#visualGall').hover(stopVisual, startVisual);

		$('.visualUL li:eq(0)').addClass('on');
		$('.visualUL li span.pic:eq(0)').fadeIn();

		
		$('.banPicUL').hover(function(){
			stopImageBanner();
		},function(){
			if ( banplay==1){
				startImageBanner();
			}
		})

		$('.m_event .close').click(function(){
			$('.m_event ').fadeOut(300);
			return false;
		})
		/*
		$('.m_event ').hover(stop3,start3);
		*/
		$('.banPicUL li:eq(0)').addClass('on');
		$('.banPicUL li span.pic:eq(0)').fadeIn();


		// 텍스트 배너 초기화
		initTextBanner()
		$('#hotsPause').click(stopVisual);

		$('#btnPrevHot').click(function(){
			prev_VS = intnum-1;
			if (prev_VS == -1) {prev_VS=totalcoverimg-1}
			 newslide(prev_VS)
		});
		
		$('#btnNextHot').click(function(){
			next_VS = intnum+1;
			if (next_VS == totalcoverimg) {next_VS=0}
			 newslide(next_VS)
		});
		



// 팝업존
		$('#ctrlPause').click(function(){
			$(this).hide()
			$('#ctrlPlay').show()
			clearInterval(sliderIntervalID2);
			banplay=0;
		});
		
		$('#ctrlPlay').click(function(){
			$(this).hide()
			$('#ctrlPause').show()
			start2((intnum2+1),(totalbancount-1),5000);
			banplay=1;
		});
	
		$('#btnPrev').click(function(){
			var prev = intnum2-1;
			if (prev == -1) {prev=totalbancount-1}
			 banslide(prev)
		});
		
		$('#btnNext').click(function(){
			var next = intnum2+1;
			if (next == totalbancount) {next=0}
			 banslide(next)
		});
		
		/*$('#picDiv').hover(
			function(){
				$('#ctrlPic').fadeIn();
				$('#btnPrev, #btnNext').show();
			},
			function(){
				$('#ctrlPic').fadeOut();
				$('#btnPrev, #btnNext').hide();
			}
		);*/

		$('#gnbUL .depth1').mouseover(function(){
			$('#gnbUL .depth1').removeClass('gnbon');
			$('#gnbUL .depth1').addClass('gnboff');
	
			$(this).removeClass('gnboff');
			$(this).addClass('gnbon');
		});
		
		$('#gnbUL .depth1').mouseout(function(){
			$('#gnbUL .depth1').removeClass('gnbon');
			$('#gnbUL .depth1').addClass('gnboff');
		});
		
		$('#gnbUL .last .allbtn').click(function(){
			$('#gnbUL .depth1').removeClass('gnbon');
			$('#gnbUL .depth1').addClass('gnboff');
			$('#gnbOverAll').slideDown(500);
		});
		
		$('#btnClose a').click(function(){
			$('#gnbOverAll').slideUp(300);
		});

		$('#banUL2Wrap').css('overflow-x','hidden');

	$('.visualUL li:eq(0)').addClass('v_1');
	$('.visualUL li:eq(1)').addClass('v_2');
	$('.visualUL li:eq(2)').addClass('v_3');
	$('.visualUL li:eq(3)').addClass('v_4');
	$('.visualUL li:eq(4)').addClass('v_5');
	$('.visualUL li:eq(5)').addClass('v_6');
	$('.visualUL li:eq(6)').addClass('v_7');
	$('.visualUL li:eq(7)').addClass('v_8');
	$('.visualUL li:eq(8)').addClass('v_9');


	});

/*
var pc_cook_val = $.cookie("PC_FLAG");  


	$("document").ready(function(){

		if ( $('body').width() <= 610){
				if(pc_cook_val == "Y"){
					seoul_pc();
					$('#pcwrap').css("width","950px");
					$('#pcwrap .mbtn_black').show();
//					$('#viewport_seoul').attr('content','width=device-width');
//					alert($('#viewport_seoul').attr('content'))
				}else{
					seoul_mobile();
//					$('#viewport_seoul').attr('content','width=device-width,target-densitydpi=medium-dpi,initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0');
//					alert($('#viewport_seoul').attr('content'))
				}
		} else {
			seoul_pc();
		}


	});


	$(window).resize(function() { 
		if ( $('body').width() <= 610){
				if(pc_cook_val == "Y"){
					seoul_pc()
				}else{
					seoul_mobile()
				}
				
		} else {
				seoul_pc()
		}
		if ($('body').width() < 950){
			var v_width = ($('.visualUL').width() * 0.42)
			$('.HotImg').css('height',''+v_width+'px')
			$('#visualGall').css('height',''+v_width+'px')
		} else {
			$('.HotImg').css('height','268px')
			$('#visualGall').css('height','268px')
		}
	}) 
*/





	function seoul_pc(){
		$('#pcwrap').show();
		$('#m_wrapper').hide();
		$('body').removeClass();
		$('#search_pc').append($('#searchWrap'));
		$('#gm_6').append($('.infotype'));
		$('#logo').append($('a.logo'));
	}
	function seoul_mobile(){
		$('#m_wrapper').show();
		$('#pcwrap').hide();
		$('body').addClass('m');
		$('#search_mobile').append($('#searchWrap'));
		$('.mlist').append($('.infotype'));
		$('#logo_m').append($('a.logo'));
	}

	$("document").ready(function(){
		seoul_pc()
	})