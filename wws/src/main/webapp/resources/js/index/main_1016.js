
jQuery(function($){
	//검색
	$('#searchWrap .searchCate').click(function(){
		$('#ly_searchCate').fadeIn();
	})

	//$('.visualUL li:last-child').addClass('last');

	$('#searchWrap a').click(function(){
		
		if(!$(this).is('#btnMainSearch')){
			$('#ly_searchCate').hide();
			if($(this).is('#searchCate1')) {
				var searchCate_txt = $(this).text()
				$('#searchWrap .searchCate').text(searchCate_txt)
			} else if($(this).is('#searchCate2')) {
				var searchCate_txt = $(this).text()
				$('#searchWrap .searchCate').text(searchCate_txt)
			} else {
				var searchCate_txt = $(this).text()
				$('#searchWrap .searchCate').text(searchCate_txt)
			}
		}
	})
	//검색 조직도
	$('#orgChartBox .searchCate2').click(function(){
		$('#ly_searchCate2').show();
	})
	$('#ly_searchCate2 a').click(function(){
		$('#ly_searchCate2').hide();
		if($(this).is('#searchCate2_1')) {
			var searchCate_txt = $(this).text()
			$('.searchCate2').text(searchCate_txt)
		} else {
			var searchCate_txt = $(this).text()
			$('.searchCate2').text(searchCate_txt)
		}
	})
	// 생방송 더보기 버튼
	$('#notice').hover(function(){
			$('#notice #plus').animate({
						right:"0px"
					},500)
		},
		function(){
			$('#notice #plus').animate({
						right:"-34px"
					},500)
	})
	// 시민발언대 신청하기 버튼
	/*$('#speech').hover(function(){
			$('#speech #plus2').animate({
						right:"-7px"
					},500)
		},
		function(){
			$('#speech #plus2').animate({
						right:"-49px"
					},500)
	})*/
	// 온라인청책워크숍 버튼
	$('#online-ws').hover(function(){
			$('#online-ws #plus3').animate({
						right:"0px"
					},500)
		},
		function(){
			$('#online-ws #plus3').animate({
						right:"-53px"
					},500)
	})
	//동영상 제목 전체보기
	$('#movieWrap span.txt').hover(function(){
		$(this).attr('class','txton')
	},function(){
		$(this).attr('class','txt')
	})

	//메인하단 자주찾는 서비스 
	$('.utilUL3 li.favor').mouseover(function(){
		$('.utilUL3 li .utilUL4').removeClass('w-2line');
		$(this).children('.utilUL4').addClass('w-2line');
	})

	//등록일순/마감일순
	$('#banCtrl span').click(function(){
		if (!$(this).is('on')){
			$('#banCtrl span').removeClass()
			$(this).addClass('on')
		}
	})
	/*$('#btnReg').click(function(){
		$('#expList').hide();
		$('#regList').show();
		return false;
	})
	jQuery('#btnExp').click(function(){
		$('#regList').hide();
		$('#expList').show();
		return false;
	})*/
	//QR코드
	$('#bntQR').hover(
		function(){$('#bntQR_on').show()},
		function(){$('#bntQR_on').hide()}
	)
/*	$('.minwon_graph').hover(
		function(){$('#min_popup').show()},
		function(){$('#min_popup').hide()}
	)
*/
	$('#site_2_link').click(function(){
		if($('.site_2_link').css('display') == 'block'){
			$('.site_2_link').hide();
		} else {
			$('.site_1_link').hide();
			$('.site_2_link').show();
		}
	})

	$('.site_2_link .close a').click(function(){
		$('.site_2_link').hide();
	})

	$('#site_1_link').click(function(){
		if($('.site_1_link').css('display') == 'block'){
			$('.site_1_link').hide();
		} else {
			$('.site_2_link').hide();
			$('.site_1_link').show();
		}
	})

	$('.site_1_link .close a').click(function(){
		$('.site_1_link').hide();
	})
	
	/*$('#snsTabUL img').each(function(){
		$(this).hover(function(){
			$(this).attr('src',function(){return $(this).attr('src').replace('_off.gif','_on.gif')})
		},function(){
			$(this).attr('src',function(){return $(this).attr('src').replace('_on.gif','_off.gif')})
		})
	})*/
	/*
	$('.snsmap a').click(function(){
		deemed_show();
		$('#frmWrap').show();
	})
	*/
	$('.btndeemed').click(function(){
		$('#deemed').hide();
		$('#frmWrap').hide();
		$('#seoultalktalkemail').hide();
	})
	$('#deemed').click(function(){
		$('#deemed').hide();
		$('#frmWrap').hide();
		$('#seoultalktalkemail').hide();
	})
	$('.seoultalktalkemail').click(function(){
		deemed_show();
		$('#seoultalktalkemail').show();
	})


	$('.issue2').hover(function(){
		$('.issue_box div.more a').animate({
						right:"0px"
					},300)
	},function(){
		$('.issue_box div.more a').animate({
						right:"-32px"
					},200)
	})
	
	$('#banUL2Wrap').hover(function(){
	},function(){
		$('#banUL2Wrap').animate({top:"120px"},300);
		setTimeout(banUL2WrapHide,300);
	});
	$('#ctrlList').click(function(){
		$('#banUL2WrapWrap').show();
		$('#banUL2Wrap').animate({top:"0"},300);
		return false;
	})
	$('#banUL2WrapClose').click(function(){
		$('#banUL2Wrap').animate({top:"120px"},300);
		setTimeout(banUL2WrapHide,300);
		return false;
	})

	$('.visualUL li span.pic').hide();
	$('.banPicUL li span.pic').hide();
})

function banUL2WrapHide(){
	$('#banUL2WrapWrap').hide();
}
function errimg(e){
	e.src='/v2012/images/main/img_err.gif';
	$(e).parent().css('border','1px solid #ddd');
}
function deemed_show(){
	$('#deemed').show();
	var deemedH = $('body').height();
//	alert(deemedH);
	$('#deemed').css('height',deemedH);
	$('#deemed').css('opacity','0.5');
}