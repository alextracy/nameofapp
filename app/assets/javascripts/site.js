$(document).on('ready page:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets', 
		readOnly: true, 
		score: function() {
		return $(this).attr('data-score');
		}
	});
	
	
    $('#zoom_01').elevateZoom();

      $(window).scroll(function() { // check if scroll event happened
        if ($(document).scrollTop() > 12) { // check if user scrolled more than 50 from top of the browser window
          $(".navbar-fixed-top").fadeOut(); // if yes, then change the color of class "navbar-fixed-top" to white (#f8f8f8)
        } else {
          $(".navbar-fixed-top").css("background-color", "transparent").fadeIn(); // if not, change it back to transparent
        }
      });

    setTimeout( function()	{
    	$('#notice').slideUp('slow').hide();
    } , 4000
    );
});