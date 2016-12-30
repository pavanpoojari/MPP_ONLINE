$(function() {
	
	switch(hoverMenu) {
	
	case 'Sign Up':
		$('#signup').addClass('active');
		break;
	case 'Login':
		$('#login').addClass('active');
		break;
	case 'Cart':
		$('#cart').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	default: 
		$('#index').addClass('active');
		break;	
	}
});

/*To Top arrow*/
$(document).ready(function(){
     $(window).scroll(function () {
            if ($(this).scrollTop() > 80) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('#back-to-top').tooltip('hide');
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
        $('#back-to-top').tooltip('show');
});
/*End OfTo Top arrow*/