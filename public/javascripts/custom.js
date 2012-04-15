$(document).ready(function() {

	// Superfish dropdown menu initialization
	$('ul.sf-menu').supersubs({
		minWidth:    15,
		maxWidth:    30,
		extraWidth:  1
	}).superfish({ 
		animation:   {height:'show'},
		speed:       'fast'
	}); 
	// jCycle slider initialization
	$('#slides').cycle({
		height: 360,
		speed: 1500,
		timeout: 5000,
		fx: 'fade',
		randomizeEffects: false,
		pause: 1,
		pager: '#slide-pager'
	});
	// Coin slider initialization
	$('#coin-slider').coinslider({
		width: 960,
		height: 360,
		navigation: true,
		delay: 5000
	});
	// Image/video hover effect
	$('.zoom-image img, .zoom-video img').hoverIntent(function() {
		$(this).stop().animate({'opacity': '0.4'}, 'slow'); 
	}, function() {
		$(this).stop().animate({'opacity': '1'}, 'slow');
	});
	// Fancybox - image popup effect
	$("a.fancybox").fancybox({
		'titlePosition'	: 'inside'
	});
	// Fancybox - YouTube popup effect
	$("a.youtube").click(function() {
		$.fancybox({
			'title'			: this.title,
			'titlePosition'	: 'inside',
			'href'			: this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
			'type'			: 'swf'
		});
		return false;
	});
	// Fancybox - Vimeo popup effect
	$("a.vimeo").click(function() {
		$.fancybox({
			'title'			: this.title,
			'titlePosition'	: 'inside',
			'href'			: this.href.replace(new RegExp("([0-9])","i"),'moogaloop.swf?clip_id=$1'),
			'type'			: 'swf'
		});
		return false;
	});
	$(".error, .success").click(function () {
		$(this).fadeTo(400, 0, function () {
			$(this).slideUp(400);
		});
		return false;
	});
});
// Cufon text replacement
try
{
    if(! $.browser.msie)
    {
        Cufon.replace('h1, h2, h3, h4, h5, h6', {hover:true, textShadow:'1px 1px #111'});
        Cufon.replace('#logo span', {hover:false, color: '-linear-gradient(#eee, #999)', textShadow:'1px 1px #111'});
    }
}catch(e){}

