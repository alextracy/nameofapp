# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 

<!-- 33 KB -->
<!-- Latest compiled and minified jquery -->
	<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <%= csrf_meta_tags %>
<script> 
    $(function () {
	    $('#item1').tooltip();
	    $('#item2').tooltip();
	    $('#item3').tooltip();
    });
    </script>
    <script>
    $(function () {
	    $('[data-toggle="tooltip"]').tooltip();
    });
</script>