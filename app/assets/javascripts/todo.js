$(document).ready(function(){
	$('ul').on('change', '.toggle', function(){
		$(this).parent('form').submit();
		$(this).closest('li').toggleClass('completed')
	});
});