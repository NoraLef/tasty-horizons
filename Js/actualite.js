$(window).scroll(function(){
	var sticky = $('.eventSticky'),
		scroll = $(window).scrollTop();
		limitScroll = $(document).height() - $(window).height() - 200;
	if (scroll >= 300 && scroll <= limitScroll) {
		sticky.addClass('eventFixed');
		$(".eventFixed").css("top", "60px");
	} else if(scroll > limitScroll) {
		$(".eventFixed").css("top", -scroll+limitScroll+60);
	} else {
		sticky.removeClass('eventFixed');
	}
});