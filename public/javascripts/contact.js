$(document).ready(function() {
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

