var main = function(){
	$("#products").addClass('active');
	$("#orders").click(function(){
		$("#products").removeClass('active');
		$(".products-row").hide();
		$(this).addClass('active');
		$('orders-row').show();
	});

	$("#products").click(function(){
		$("#orders").removeClass('active');
		$(".products-row").css('display', 'block');
		$(this).addClass('active');
	});
}
$(document).ready(main);