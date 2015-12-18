function ratyRating(){
 $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
 $('.rated').raty({ path: '/assets',
   readOnly: true,
   score: function() {
     return $(this).attr('data-score');
   }
 });
};

$(document).on('ready page:load', function(){
 ratyRating();
 $('#Zoom_01').elevateZoom({
 	cursor: default
 });
});