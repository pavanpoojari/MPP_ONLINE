$(function() {
	
	switch(hoverMenu) {
	
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