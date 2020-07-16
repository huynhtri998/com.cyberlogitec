<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head th:replace="common/header :: head">
</head>

<body class="no-skin">
	<div th:replace="~{common/navbar :: #navbar}"></div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div th:replace="~{common/sibebar :: #sidebar}"></div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">

					<div class="page-header">
						<h1 style="font-size: 50px; font-style: bold;">Cart</h1>
					</div>
					<!-- /.page-header -->


					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->
		<!-- /.main-content -->
		<div th:include="common/cart :: confirm"></div>
		<div th:replace="~{common/footer :: .footer}"></div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script th:src="@{/js/jquery-2.1.4.min.js}"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='/js/jquery.mobile.custom.min.js'>"
					+ "<"+"/script>");
	</script>
	<script th:src="@{/js/bootstrap.min.js}"></script>

	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script th:src="@{/js/ace-elements.min.js}"></script>
	<script th:src="@{/js/ace.min.js}"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		var remove_cart = document.getElementsByClassName("btnDelete");
		for (var i = 0; i < remove_cart.length; i++) {
			var button = remove_cart[i]

			button
					.addEventListener(
							"click",
							function() {
								var button_remove = event.target
								console.log(button_remove);
								button_remove.parentElement.parentElement.parentElement.parentElement.parentElement
										.remove()
								updatecart();
							})
		}
		//Update cart
		function updatecart() {
			var cart_item = document.getElementsByClassName("cart_items")[0];
			var cart_rows = cart_item.getElementsByClassName("cart_row");
			var total = 0;
			console.log(cart_item);
			console.log(cart_rows);
			for (var i = 0; i < cart_rows.length; i++) {
				var cart_row = cart_rows[i]
				console.log(cart_row);
				var price_item = cart_row.getElementsByClassName("cart_price")[0]
				console.log(price_item);
				var quantity_item = cart_row
						.getElementsByClassName("cart_input")[0]
				console.log(quantity_item);
				var price = parseFloat(price_item.innerText)// chuyển một chuổi string sang number để tính tổng tiền.
				var quantity = quantity_item.value // lấy giá trị trong thẻ input
				total = total + (price * quantity)
			}
			document.getElementsByClassName("cart_total")[0].innerText = total
					+ '$'
			// Thay đổi text = total trong .cart-total-price. Chỉ có một .cart-total-price nên mình sử dụng [0].
		}
		var quantity_input = document
				.getElementsByClassName("cart_input");
		console.log(quantity_input.length);
		console.log(quantity_input);
		for (var i = 0; i < quantity_input.length; i++) {
			var input = quantity_input[i];
			console.log(input);
			input.addEventListener("change", function(event) {
				var input = event.target
				console.log(input);
				if (isNaN(input.value) || input.value <= 0) {
				      input.value = 1;
				    }
				updatecart()
			})
		}
		jQuery(function($) {
			$('#sidebar2').insertBefore('.page-content');

			$('.navbar-toggle[data-target="#sidebar2"]').insertAfter(
					'#menu-toggler');

			$(document).on('settings.ace.two_menu',
					function(e, event_name, event_val) {
						if (event_name == 'sidebar_fixed') {
							if ($('#sidebar').hasClass('sidebar-fixed')) {
								$('#sidebar2').addClass('sidebar-fixed');
								$('#navbar').addClass('h-navbar');
							} else {
								$('#sidebar2').removeClass('sidebar-fixed')
								$('#navbar').removeClass('h-navbar');
							}
						}
					})
					.triggerHandler(
							'settings.ace.two_menu',
							[ 'sidebar_fixed',
									$('#sidebar').hasClass('sidebar-fixed') ]);
		})
	</script>
</body>
</html>