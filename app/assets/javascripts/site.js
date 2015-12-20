$(document).on('page:load ready', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets', 
		readOnly: true, 
		score: function() {
		return $(this).attr('data-score');
		}
	});
    $('#zoom_01').elevateZoom();
});