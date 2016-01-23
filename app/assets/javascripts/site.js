$(document).on('ready page:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets', 
		readOnly: true, 
		score: function() {
		return $(this).attr('data-score');
		}
	});
	
	
    $('#zoom_01').elevateZoom();

    $(window).scroll(function(){
		var scrollTop = $(window).scrollTop();
		if(scrollTop != 0)
			$('#nav').stop().animate({'opacity':'0.2'},400);
		else	
			$('#nav').stop().animate({'opacity':'1'},400);
	});
	
	$('#nav').hover(
		function (e) {
			var scrollTop = $(window).scrollTop();
			if(scrollTop != 0){
				$('#nav').stop().animate({'opacity':'1'},400);
			}
		},
		function (e) {
			var scrollTop = $(window).scrollTop();
			if(scrollTop != 0){
				$('#nav').stop().animate({'opacity':'0.2'},400);
			}
		}
	);

});