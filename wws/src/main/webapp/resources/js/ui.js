var Bhvior = "";
(function($){
	$.fn.extend({
		bwEventBind:function(opt){var _this = $(this),bwUIFn = {bwVal:function(){return $(window).innerWidth()},areaSta:opt.d?opt.d:600,areaEnd:opt.e?opt.e:700};function csMet(tval){var ret,origName=jQuery.camelCase(opt.c),hooks=jQuery.cssHooks[origName],name=jQuery.cssProps[origName]||origName;_this.css(name,tval)}var rtVal = GIOs(opt.a,opt.b,bwUIFn.areaSta,bwUIFn.areaEnd, bwUIFn.bwVal()-bwUIFn.areaSta);if(bwUIFn.bwVal()>bwUIFn.areaSta&&bwUIFn.bwVal()<bwUIFn.areaEnd){csMet(rtVal)}else if(bwUIFn.bwVal() < bwUIFn.areaSta){csMet(opt.a)}else if(bwUIFn.bwVal()>bwUIFn.areaEnd){csMet(opt.b)}},
		screenCheck:function() {
			var _this = $('body'),
				checkSticky = $('.sticky-header');
			function resizeChk(){
				if ($(window).width() >= 769 && $(window).width() > 945) {
					_this.removeAttr('class');
					if (!checkSticky.is('#header-wraper')) {
						checkSticky.attr('id','header-wraper');
					}
					$('.possibilities-gallery').css({height:412});
					if ($('#navigation').is('.en-navigation')) {
						$('.submenu-bg').css({height:480});
					} else {
						$('.submenu-bg').css({height:324});
					}

				}
				/* less than desktop */
				if ($(window).width() <= 768 && $(window).width() > 581) {
					_this.addClass('responsive-body');
					_this.removeClass('responsive-mobile');
					checkSticky.removeAttr('id')
					$('.possibilities-gallery').css({height:$(window).width()/2.48});
					$('.submenu-bg').css({height:$('.reponsive-submenu').height()});
				}
				/* //less than desktop */

				/* less tablet */
				if ($(window).width() <= 580) {
					_this.addClass('responsive-body responsive-mobile');
					checkSticky.removeAttr('id')
					$('.possibilities-gallery').css({height:$(window).width()/1.24});
					$('.submenu-bg').css({height:$('.reponsive-submenu').height()});
				}
				if ($(window).width() <= 514) {
					$('#possibility-contents').addClass('masonry514');
					$('.masonry514 .box >a img').css({width:'100%',height:$(this).width()*0.6})
					$('.masonry514 .box1 >a img').css({width:224,height:314})
					$('.masonry514 .box2 >a img').css({width:'100%',height:$(this).width()/0.8})
				} else if($(window).width() > 514){
					$('#possibility-contents').removeClass('masonry514');
					$('#possibility-contents .box >a img').css({width:460,height:314})
					$('#possibility-contents .box1 >a img').css({width:224,height:314})
					$('#possibility-contents .box2 >a img').css({width:460,height:640})
				}
				/* //less tablet */
				if ($(window).width() <= 321) {
					$('body').addClass('responsive-mobile320');
					$('#possibility-contents').removeClass('masonry514');
					$('.possibilities-gallery').css({height:259});
					$('.submenu-bg').css({height:$('.reponsive-submenu').height()});
					$('#possibility-contents .box >a img').css({width:286,height:195})
					$('#possibility-contents .box1 >a img').css({width:224,height:314})
					$('#possibility-contents .box2 >a img').css({width:286,height:398})
				}else if($(window).width() > 321){
					$('body').removeClass('responsive-mobile320');
				}
			}
			resizeChk();

			$(window).bind("orientationchange resize", function (e) {
				if(e.type == 'resize'){
					resizeChk();
				}else{
					resizeChk();
				}
			})
		},
		naviControl:function() {
			var _this = $(this),
				anc = _this.find('ul >li a'),
				closeAnc = _this.find('.gnb-close');
			$.each(anc,function() {
				if ($(this).is('.depth-include')) {
					$(this).click(function() {
						var appendDiv = $('<div class="submenu-bg"></div>');
						if (!$(this).parent().is('.depth-over')) {
							$(this).parent().addClass('depth-over');
							if (_this.is('.en-navigation')) {
								appendDiv.appendTo(_this.parent().parent()).css({height:480})
								$('#gnb_cover').css({height:570})
							} else {
								appendDiv.appendTo(_this.parent().parent())
								$('#gnb_cover').css({height:414})
							}


							if ($('body').is('.responsive-body')) {
								appendDiv.css({height:_this.find('.reponsive-submenu').height()})
							}
						} else {
							$(this).parent().removeClass('depth-over');
							_this.parent().parent().find('.submenu-bg').remove();
							$('#gnb_cover').css({height:105})
							var checkOpen = _this.find('.menu-open'),
								checkOpenWrap = _this.find('.menu-open-wrap');
							checkOpen.removeClass('menu-open');
							checkOpenWrap.removeClass('menu-open-wrap');
						}
						return false;
					})
				}
			})
			closeAnc.click(function() {
				$(this).parent().parent().removeClass('depth-over');
				$('#gnb_cover').css({height:105})
				_this.parent().parent().find('.submenu-bg').remove();
			})
		},
		subNaviControl:function() {
			var _this = $(this);
				_wrap = $('#header-wrap'),
				anc = _this.find('.reponsive-item');
			$.each(anc,function() {
				$(this).click(function() {
					var checkOpen = _this.find('.menu-open'),
						checkOpenWrap = _this.find('.menu-open-wrap');
					checkOpen.removeClass('menu-open');
					checkOpenWrap.removeClass('menu-open-wrap');
					$(this).addClass('menu-open');
					$(this).parent().addClass('menu-open-wrap');
					_wrap.find('.submenu-bg').css({height:_this.height()})
					return false;
				})
			})
		},
		togglelistControl:function() {
			var _this = $(this),
				row = $(this).find('>li'),
				subject = _this.find('.question > a'),
				answer = _this.find('.answer');
				answer.hide();
				row.eq(0).addClass('row-on');
				row.eq(0).find('.answer').show();
			$.each(subject,function() {
				$(this).click(function() {
					if (!$(this).parent().parent().is('.row-on')) {
						$(this).parent().parent().addClass('row-on');
						$(this).parent().next().slideDown(100);
					} else {
						$(this).parent().parent().removeClass('row-on');
						$(this).parent().next().slideUp(100);
					}
					return false;
				})
			})
		},
		bannerControl:function() {
			var _this = $(this);
			$.each(_this,function() {
				var _this = $(this),
					button = _this.find('.circle'),
					item = _this.find('.cell');
				_this.attr('num',0)
				item.eq(0).addClass('on-cell');
				$.each(button,function(index) {
					$(this).attr('num',index);
					$(this).click(function() {
						var removeOn = _this.find('.on-circle');
							removeOn2 = _this.find('.on-cell');
						removeOn.removeClass('on-circle');
						removeOn2.removeClass('on-cell');
						_this.attr('num',$(this).attr('num'));
						$(this).addClass('on-circle');
						$(this).next().addClass('on-cell');
					})
					$(this).focusin(function() {
						var removeOn = _this.find('.on-circle');
							removeOn2 = _this.find('.on-cell');
						removeOn.removeClass('on-circle');
						removeOn2.removeClass('on-cell');
						_this.attr('num',$(this).attr('num'));
						$(this).addClass('on-circle');
						$(this).next().addClass('on-cell');
					})
				})
			})
			$('.banner-wrap').circleControl();
		},
		circleControl:function() {
			var _this = $(this);
			$.each(_this,function() {
				var _this = $(this),
					pause =  _this.find('.stop'),
					play =  _this.find('.play'),
					circle = _this.find('.circle'),
					item = _this.find('.cell'),
					init,
					num = _this.attr('num'),
					time = 2500,
					runpoint = 0;
				if (item.length == 1) {
					pause.hide();
					play.hide();
				}
				circle.first().addClass('on-circle')
				var clickEvent = function() {
					if (num == circle.length-1) {
						num = 0
					} else {
						num ++;
					}
					circle.eq(num).click();
					fnCircleRun();
				}
				var fnCircleRun = function() {
					clearTimeout(init);
					init = setTimeout(function() { clickEvent(); },time);
				}

				circle.mouseenter(function() {
					clearTimeout(init);
				}).mouseleave(function() {
					if (!_this.is('.pause-banner')) {
						if (_this.attr('num') == circle.length-1) {
							num = -1
						} else {
							num = _this.attr('num')
						}
						clearTimeout(init);
						init = setTimeout(function() { clickEvent(); },time);
					}
				})
				item.mouseenter(function() {
					clearTimeout(init);
				}).mouseleave(function() {
					if (!_this.is('.pause-banner')) {
						if (_this.attr('num') == circle.length-1) {
							num = -1
						} else {
							num = _this.attr('num')
						}
						clearTimeout(init);
						init = setTimeout(function() { clickEvent(); },time);
					}
				})

				circle.focusin(function() {
					clearTimeout(init);
				})
				circle.focusout(function() {
					if (!_this.is('.pause-banner')) {
						if (_this.attr('num') == circle.length-1) {
							num = -1
						} else {
							num = _this.attr('num')
						}
						if (_this.is('.pause-banner')) {
							clearTimeout(init);
						} else {
							clearTimeout(init);
							init = setTimeout(function() { clickEvent(); },time);
						}

					}
				})
				item.focusin(function() {
					clearTimeout(init);
				})
				item.focusout(function() {
					if (!_this.is('.pause-banner')) {
						if (_this.attr('num') == circle.length-1) {
							num = -1
						} else {
							num = _this.attr('num')
						}
						if (_this.is('.pause-banner')) {
							clearTimeout(init);
						} else {
							clearTimeout(init);
							init = setTimeout(function() { clickEvent(); },time);
						}
					}
				})
				pause.click(function() {
					clearTimeout(init);
					$(this).parent().addClass('pause-banner');
				})
				play.click(function() {
					$(this).parent().removeClass('pause-banner');
					if (_this.attr('num') == circle.length-1) {
						num = -1
					} else {
						num = _this.attr('num')
					}
					clearTimeout(init);
					init = setTimeout(function() { clickEvent(); },time);
				})
				fnCircleRun();
			});
		},
		tabControl:function() {
			var _this = $(this),
				tab = _this.find('.tab li >a'),
				obj = _this.find('.tab-contents'),
				select = _this.find('.select-tab select'),
				option = _this.find('.select-tab option');
				obj.hide();
				tab.eq(0).parent().addClass('on');
				obj.eq(0).show().addClass('on-view');
			$.each(option,function(index) {
				$(this).attr('value','#tab-contents-'+index);
			})
			$.each(obj,function(index) {
				$(this).attr('id','tab-contents-'+index);
			})
			$.each(tab,function(index) {
				$(this).attr('href','#tab-contents-'+index);
				$(this).attr('num',index);
				$(this).click(function() {
					var clearOn = _this.find('.on'),
						clearView =  _this.find('.on-view');
					clearOn.removeClass('on');
					clearView.hide().removeClass('on-view');
					$(this).parent().addClass('on');
					$($(this).attr('href')).show().addClass('on-view');
					option.eq(parseInt($(this).attr('num'))).attr('selected','selected');
					return false;
				});
			})
			select.change(function() {
				var $this = $(this);
				$this.next().attr('href',$this.attr('value'));
				$this.next().attr('num',$this.attr('value').split('#tab-contents-')[1]);
				$this.next().click(function() {
					var clearOn = _this.find('.on'),
						clearView =  _this.find('.on-view');
					clearOn.removeClass('on');
					clearView.hide().removeClass('on-view');
					tab.eq(parseInt($(this).attr('num'))).parent().addClass('on')
					$($(this).attr('href')).show().addClass('on-view');
					return false;
				})
			})
		},
		selectControl:function() {
			var _this = $(this),
				select = _this.find('select'),
				option = _this.find('option');
			select.change(function() {
				var $this = $(this);
				$this.next().attr('href',$this.attr('value'));
			})
		},
		privacySelect:function() {
			var _this = $(this),
				wrap = $('#privacy01-wrap');
			_this.change(function() {
				_this.next().attr('href',$(this).attr('value'))
				_this.next().click(function() {
					var checkExpose = wrap.find('.inner-expose');
					checkExpose.removeClass('inner-expose');
					wrap.find($(this).attr('href')).addClass('inner-expose');
					return false;
				})
			})
		},
		privacySelect2:function() {
			var _this = $(this),
				wrap = $('#privacy02-wrap');
			_this.change(function() {
				_this.next().attr('href',$(this).attr('value'))
				_this.next().click(function() {
					var checkExpose = wrap.find('.inner-expose');
					checkExpose.removeClass('inner-expose');
					wrap.find($(this).attr('href')).addClass('inner-expose');
					return false;
				})
			})
		},
		socialControl:function() {
			var _this = $(this),
				anc = _this.find('h5 a'),
				anc2 = _this.find('.social-sorting select');
			$.each(anc,function() {
				$(this).click(function() {
					var checkOver = _this.find('.social-over'),
						checkView =  _this.find('.social-view');
					checkOver.removeClass('social-over');
					checkView.removeClass('social-view');
					$(this).parent().addClass('social-over');
					$($(this).attr('href')).addClass('social-view');
					return false;
				})
			})
			anc2.change(function() {
				$(this).next().attr('href',$(this).attr('value'));
				$(this).next().click(function() {
					var checkOver = _this.find('.social-over'),
						checkView =  _this.find('.social-view');
					checkOver.removeClass('social-over');
					checkView.removeClass('social-view');
					$($(this).attr('href')).prev().addClass('social-over')
					$($(this).attr('href')).addClass('social-view');
					return false;
				})
			})
		},
		familysiteControl:function() {
			var _this = $(this);
			_this.click(function() {
				var target = $($(this).attr('href'));
				$(this).toggleClass('anc-close');
				target.toggle();
				target.attr('tabindex', '0');
				window.setTimeout(function(){target.focus();},100)
				return false;
			})
		},
		possibilitiesGallery:function() {
			var _this = $(this),
				button = _this.find('.circle'),
				item = _this.find('.cell'),
				nextWrap = $('.possibilities-list'),
				nextItem = nextWrap.find('li a');

				var item_cnt = $(".possibilities-list li").length;
				var rnd = Math.floor((Math.random()*item_cnt));

				nextItem.eq(rnd).parent().addClass('remote-on');
				button.eq(rnd).addClass('on-circle');
				item.eq(rnd).addClass('on-cell');
			$.each(button,function(index) {
				var $this = $(this);
				$this.attr('num',index)
				$this.click(function() {
					var removeOn = _this.find('.on-circle'),
						removeOn2 = _this.find('.on-cell'),
						remoteCheck = nextWrap.find('.remote-on');
					removeOn.removeClass('on-circle');
					removeOn2.removeClass('on-cell');
					remoteCheck.removeClass('remote-on')
					$this.addClass('on-circle');
					$this.next().addClass('on-cell').attr('tabindex',0).focus();
					nextItem.eq(parseInt($this.attr('num'))).parent().addClass('remote-on');
				})
			})
			$.each(nextItem,function(index) {
				var $this = $(this);
				$this.attr('num',index)
				$this.click(function() {
					button.eq(parseInt($this.attr('num'))).click();
					return false;
				})
			})

		},
		sidemenuControl:function() {
			var _this = $(this),
				runpoint;
			if (!_this.get(0)){return false}
			$(window).scroll(function() {
				if ( $(window).scrollTop() > 295 ) {
					if (!runpoint) {
						_this.css({top:130});
						runpoint = 1;
					}
				} else {
					if (runpoint) {
						_this.css({top:293});
						runpoint = 0;
					}
				}
			});
		}
	})
	$(document).ready(function() {
		$('body').screenCheck();
		$('.faq-list').togglelistControl();
		$('.brand-history').togglelistControl();
		$('.familysite-anc').familysiteControl();
		$('#sidemenu').sidemenuControl();
	})
})(jQuery)

function sizeCheck() {
	$('.movie-frame').css({height:$('.movie-frame').width()/1.65})
	$(window).resize(function() {
	$('.movie-frame').css({height:$('.movie-frame').width()/1.65})
	})
}