$(function() {
	
	switch(hoverMenu) {
	
	case 'Sign Up':
		$('#signup').addClass('active');
		break;
	case 'Login':
		$('#login').addClass('active');
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