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
						<h1 style="font-size: 50px; font-style: bold;">Product</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-4 item-photo">
							<img class="img_product" style="max-width: 100%;"
								src="https://ak1.ostkcdn.com/images/products/8818677/Samsung-Galaxy-S4-I337-16GB-AT-T-Unlocked-GSM-Android-Cell-Phone-85e3430e-6981-4252-a984-245862302c78_600.jpg" />
						</div>
						<div class="col-xs-5" style="border: 0px solid gray">
							<!-- Datos del vendedor y titulo del producto -->
							<h3 class="name_product" th:utext="${product.productName}"></h3>

							<!-- Precios -->
							<h6 class="title-price">
								<small>Price</small>
							</h6>
							<strike th:utext="${product.productPrice}"></strike>
							<h3 class="price_product" style="margin-top: 0px;" th:utext="${product.productSalePrice}"></h3>
							<input hidden="" th:value="${product.productId}" type="text" class="id_product">
							<!-- Detalles especificos del producto -->
							<div class="section">
								<h6 class="title-attr" style="margin-top: 15px;">
									<small>COLOR</small>
								</h6>
								<div>
									<div class="attr" style="width: 25px; background: #5a5a5a;"></div>
									<div class="attr" style="width: 25px; background: white;"></div>
								</div>
							</div>
							<div class="section" style="padding-bottom: 5px;">
								<h6 class="title-attr">
									<small> Memory</small>
								</h6>
								<div>
									<div class="attr2">16 GB</div>
									<div class="attr2">32 GB</div>
								</div>
							</div>
							<!--<div class="section" style="padding-bottom:20px;">
									 <h6 class="title-attr"><small>CANTIDAD</small></h6>                    
									 <div>
										 <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
										 <input value="1" />
										 <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
									 </div>
								 </div>  -->

							<!-- Botones de compra -->
							<div class="section" style="padding-bottom:20px;">
									 <button class="btn_addToCart btn btn-primary" >Add to Cart</button>
								 </div>
						</div>

						<div class="col-xs-9">
							<ul class="menu-items">
								<li class="active">Product Details</li>
							</ul>
							<div style="width: 100%; border-top: 1px solid silver">
								<p style="padding: 15px;">
									<small th:utext="${product.productContent}"> </small>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- /.page-content -->
			</div>
		</div>
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
	<script th:src="@{/js/cart-function.js}"></script>
	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script th:src="@{/js/ace-elements.min.js}"></script>
	<script th:src="@{/js/ace.min.js}"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$(document).ready(function() {
				//-- Click on detail
				$("ul.menu-items > li").on("click", function() {
					$("ul.menu-items > li").removeClass("active");
					$(this).addClass("active");
				})

				$(".attr,.attr2").on("click", function() {
					var clase = $(this).attr("class");

					$("." + clase).removeClass("active");
					$(this).addClass("active");
				})

				//-- Click on QUANTITY
				$(".btn-minus").on("click", function() {
					var now = $(".section > div > input").val();
					if ($.isNumeric(now)) {
						if (parseInt(now) - 1 > 0) {
							now--;
						}
						$(".section > div > input").val(now);
					} else {
						$(".section > div > input").val("1");
					}
				})
				$(".btn-plus").on("click", function() {
					var now = $(".section > div > input").val();
					if ($.isNumeric(now)) {
						$(".section > div > input").val(parseInt(now) + 1);
					} else {
						$(".section > div > input").val("1");
					}
				})
			})
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
