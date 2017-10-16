(function($){
	$.fn.extend({
		eol_picFocus:function(options){
			var defaults	=	{slideBg:'play_bg',slideInfo:'play_info',slideText:'play_text',timer:2000,infoText:true,btnNum:true}
			var options		=	$.extend(defaults,options);
			return this.each(function(){
			var n			=	0;
			var btnNum		=	options.btnNum;
			var info		=	options.infoText;
			var slideBox	=	$(this);
			var slideImg	=	$(this).children().first();
			var count		=	slideImg.children().size();
				slideImg.children().each(function(){
					if(!$(this).is('a')){info=false}
				});
			if(info){
			var slideBg=$('<div></div>').addClass(options.slideBg);slideBg.appendTo(slideBox);
			var slideInfo=$('<div></div>').addClass(options.slideInfo);slideInfo.appendTo(slideBox);
			}
			var slideText=$('<div></div>').addClass(options.slideText);slideText.appendTo(slideBox);
			var ul=$('<ul></ul>');ul.appendTo(slideText);
			slideImg.children().each(function(index){
				if(btnNum){var list=$('<li></li>').text(index+1);}else{var list=$('<li></li>')}
				list.appendTo(ul);
			});
			var liw=parseInt($('li:first',slideText).outerWidth())+1;
			ul.css('width',liw*count+8+'px');
			slideImg.find(':not(:first-child)').hide();
			if(info){slideInfo.html(slideImg.find('a:first-child img').attr('alt'));
			slideInfo.click(function(){window.open(slideImg.find('a:first-child').attr('href'),'_blank')});}
			slideText.find('li:first-child').addClass('current');
			slideText.find('li').click(function(){
				var i=$(this).index();
				n=i;
				if(i>=count) return;
				if(info){
				slideInfo.html(slideImg.find('a').eq(i).find('img').attr('alt'));
				slideInfo.unbind().click(function(){
					window.open(slideImg.find('a').eq(i).attr('href'),'_blank')
				});}
				slideImg.children(':visible').fadeOut(500).parent().children().eq(i).fadeIn(1000);
				$(this).addClass('current').siblings().removeClass('current');
			});
			var t=setInterval(
				function(){
				n=n>=(count-1)?0:n+1;
				slideText.find('li').eq(n).addClass('current').siblings().removeClass('current');
				slideImg.children(':visible').fadeOut(500).parent().children().eq(n).fadeIn(1000);
				if(info){
				slideInfo.html(slideImg.find('a').eq(n).find('img').attr('alt'));}}
				,options.timer);
			slideBox.hover(
				function(){clearInterval(t)},
				function(){t=setInterval(function(){n=n>=(count-1)?0:n+1;
				slideText.find('li').eq(n).addClass('current').siblings().removeClass('current');
				slideImg.children(':visible').fadeOut(500).parent().children().eq(n).fadeIn(1000);
				if(info){slideInfo.html(slideImg.find('a').eq(n).find('img').attr('alt'));}
				}
				,options.timer)});
			});
		}
	});
})(jQuery)