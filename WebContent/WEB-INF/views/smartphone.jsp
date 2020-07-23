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

					<div style="text-align: center;" class="page-header">
						<h1 style="font-size: 50px; font-style: bold;">Product</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="invisible">
								<button data-target="#sidebar2" data-toggle="collapse"
									type="button" class="pull-left navbar-toggle collapsed">
									<span class="sr-only">Toggle sidebar</span> <i
										class="ace-icon fa fa-dashboard white bigger-125"></i>
								</button>

								<div id="sidebar2" style="text-align: center;"
									class="sidebar h-sidebar navbar-collapse collapse ace-save-state">
									<div id="myCarousel" class="carousel slide"
										data-ride="carousel">
										<!-- Indicators -->
										<ol class="carousel-indicators">
											<li data-target="#myCarousel" data-slide-to="0"
												class="active"></li>
											<li data-target="#myCarousel" data-slide-to="1"></li>
											<li data-target="#myCarousel" data-slide-to="2"></li>
										</ol>

										<!-- Wrapper for slides -->
										<div class="carousel-inner">
											<div class="item active ">
												<div style="background-color: red; height: 200px;"></div>
											</div>

											<div class="item">
												<div style="background-color: red; height: 200px;"></div>
											</div>

											<div class="item">
												<div style="background-color: red; height: 200px;"></div>
											</div>
										</div>

										<!-- Left and right controls -->
										<a class="left carousel-control" style="width: 6% !important;"
											href="#myCarousel" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left"></span> <span
											class="sr-only">Previous</span>
										</a> <a class="right carousel-control"
											style="width: 6% !important;" href="#myCarousel"
											data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right"></span> <span
											class="sr-only">Next</span>
										</a>
									</div>
								</div>
								<!-- .sidebar -->
							</div>

							<div style="text-align: center; color: steelblue;">
								<h2>Top Product</h2>
							</div>

							<div class="row carousel">
								<div class="col-md-12">
									<div id="myCarousel1" class="carousel slide"
										data-ride="carousel" data-interval="0">
										<!-- Carousel indicators -->
										<ol class="carousel-indicators">
											<li data-target="#myCarousel" data-slide-to="0"
												class="active"></li>
											<li data-target="#myCarousel" data-slide-to="1"></li>
											<!-- <li data-target="#myCarousel" data-slide-to="2"></li> -->
										</ol>
										<!-- Wrapper for carousel items -->
										<div class="carousel-inner">
											<div class="item carousel-item active">
												<div class="row">
													<!-- wrap 1 item active -->
													<th:block th:each="topTenProduct, state : ${topTenProduct}"
														th:if="${state.index} < 4">
														<div class="col-md-3">
															<div class="thumb-wrapper">
																<div class="img-box">
																	<img  style="width: 25%;"
																		src="https://image.ibb.co/g0CAPp/ipad.jpg"
																		class="img_product img-responsive img-fluid" alt="" />
																</div>
																<div class="thumb-content">
																	<a style="border-style: none;"
																		th:href="@{/smartphonedetail/{id}(id=${topTenProduct.productId})}">
																		<p class="name_product" style="font-size: 16px;"
																			th:utext="${topTenProduct.productName}"></p>
																	</a>
																	<p class="item-price">
																		<strike th:utext="${topTenProduct.productPrice}"></strike>
																		<input hidden="" th:value="${topTenProduct.productId}" type="text" class="id_product">
																		<span class="price_product" th:utext="${topTenProduct.productSalePrice}"></span>
																	</p>
																	<button class="btn_addToCart btn btn-primary" >Add to Cart</button>
																</div>
															</div>
														</div>
													</th:block>
												</div>
											</div>
											<!-- End active -->

											<!-- Start inactive -->
											<div class="item carousel-item">
												<div class="row">
													<!-- inactive item -->
													<th:block th:each="topTenProduct, state : ${topTenProduct}"
														th:if="${state.index} >= 4">
														<div class="col-md-3">
															<div class="thumb-wrapper">
																<div class="img-box">
																	<img style="width: 25%;"
																		src="https://image.ibb.co/g0CAPp/ipad.jpg"
																		class="img_product img-responsive img-fluid" alt="" />
																</div>
																<div class="thumb-content">
																	<a style="border-style: none;"
																		th:href="@{/smartphonedetail/{id}(id=${topTenProduct.productId})}">
																		<p class="name_product" style="font-size: 16px;"
																			th:utext="${topTenProduct.productName}"></p>
																	</a>
																	<p class="item-price">
																		<strike th:utext="${topTenProduct.productPrice}"></strike>
																		<input hidden="" th:value="${topTenProduct.productId}" type="text" class="id_product">
																		<span class="price_product" th:utext="${topTenProduct.productSalePrice}"></span>
																	</p>
																	
																	<button class="btn_addToCart btn btn-primary" >Add to Cart</button>
																</div>
															</div>
														</div>
													</th:block>
													<!-- End inactive item -->
												</div>
											</div>
										</div>
										<!-- Carousel controls -->
										<a class="carousel-control left carousel-control-prev"
											href="#myCarousel1" data-slide="prev"> <i
											id="carouselright1" class="fa fa-angle-left"></i>
										</a> <a class="carousel-control right carousel-control-next"
											href="#myCarousel1" data-slide="next"> <i
											id="carouselleft1" class="fa fa-angle-right"></i>
										</a>
									</div>
								</div>
							</div>
							<hr style="border-top: 1px solid #8c8b8b;">
							<div style="text-align: center; color: steelblue;">
								<h2>Sale Product</h2>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div id="myCarousel2" class="carousel slide"
										data-ride="carousel" data-interval="0">
										<!-- Carousel indicators -->
										<ol class="carousel-indicators">
											<li data-target="#myCarousel" data-slide-to="0"
												class="active"></li>
											<li data-target="#myCarousel" data-slide-to="1"></li>
											<!-- <li data-target="#myCarousel" data-slide-to="2"></li> -->
										</ol>
										<!-- Wrapper for carousel items -->
										<div class="carousel-inner">
											<div class="item carousel-item active">
												<div class="row">
													<!-- wrap 1 item active -->
													<th:block
														th:each="topTenSaleProduct, state : ${topTenSaleProduct}"
														th:if="${state.index} < 4">
														<div class="col-md-3">
															<div class="thumb-wrapper">
																<div class="img-box">
																	<img style="width: 25%;"
																		src="https://image.ibb.co/g0CAPp/ipad.jpg"
																		class="img_product img-responsive img-fluid" alt="" />
																</div>
																<div class="thumb-content">
																	<a style="border-style: none;"
																		th:href="@{/smartphonedetail/{id}(id=${topTenSaleProduct.productId})}">
																		<p class="name_product" style="font-size: 16px;"
																			th:utext="${topTenSaleProduct.productName}"></p>
																	</a>
																	<p class="item-price">
																		<strike th:utext="${topTenSaleProduct.productPrice}"></strike>
																		<span class="price_product" th:utext="${topTenSaleProduct.productSalePrice}"></span>
																		<input hidden="" th:value="${topTenSaleProduct.productId}" type="text" class="id_product">
																	</p>
																	
																	<button class="btn_addToCart btn btn-primary" >Add to Cart</button>
																	
																</div>
															</div>
														</div>
													</th:block>
												</div>
											</div>
											<!-- End active -->

											<!-- Start inactive -->
											<div class="item carousel-item">
												<div class="row">
													<!-- inactive item -->
													<th:block
														th:each="topTenSaleProduct, state : ${topTenSaleProduct}"
														th:if="${state.index} >= 4">
														<div class="col-md-3">
															<div class="thumb-wrapper">
																<div class="img-box">
																	<img style="width: 25%;"
																		src="https://image.ibb.co/g0CAPp/ipad.jpg"
																		class="img_product img-responsive img-fluid" alt="" />
																</div>
																<div class="thumb-content">
																	<a style="border-style: none;"
																		th:href="@{/smartphonedetail/{id}(id=${topTenSaleProduct.productId})}">
																		<p class="name_product" style="font-size: 16px;"
																			th:utext="${topTenSaleProduct.productName}"></p>
																	</a>
																	<p class="item-price">
																		<strike th:utext="${topTenSaleProduct.productPrice}"></strike>
																		<input hidden="" th:value="${topTenSaleProduct.productId}" type="text" class="id_product">
																		<span class="price_product" th:utext="${topTenSaleProduct.productSalePrice}"></span>
																	</p>
																	
																	<button class="btn_addToCart btn btn-primary" >Add to Cart</button>
																</div>
															</div>
														</div>
													</th:block>
													<!-- End inactive item -->
												</div>
											</div>
										</div>
										<!-- Carousel controls -->
										<a class="carousel-control left carousel-control-prev"
											href="#myCarousel2" data-slide="prev"> <i
											id="carouselright1" class="fa fa-angle-left"></i>
										</a> <a class="carousel-control right carousel-control-next"
											href="#myCarousel2" data-slide="next"> <i
											id="carouselleft1" class="fa fa-angle-right"></i>
										</a>
									</div>
								</div>
							</div>

							<div class="hidden-md hidden-lg">
								<div class="well well-sm">You can place multiple toggle
									buttons for multiple menus anywhere inside navbar!</div>
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
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
			$('.multi-item-carousel').carousel({
				interval : false
			});

			// for every slide in carousel, copy the next slide's item in the slide.
			// Do the same for the next, next item.
			$('.multi-item-carousel .item')
					.each(
							function() {
								var next = $(this).next();
								if (!next.length) {
									next = $(this).siblings(':first');
								}
								next.children(':first-child').clone().appendTo(
										$(this));

								if (next.next().length > 0) {
									next.next().children(':first-child')
											.clone().appendTo($(this));
								} else {
									$(this).siblings(':first').children(
											':first-child').clone().appendTo(
											$(this));
								}
							});

		})
		
		
		function sendRequest(){
			var getVal = $(".cart_row")
		    var idUser = $("#idUser").val();
		    var total = $(".cart_total")[0].innerText.split("$")[0];
		    var shoppingCart = 
		    	{
		    		total: total,
		    		idUser: idUser,
		    		cartItems:[] 
		    	};
		    for (var i = 0; i < getVal.length; i++) {
		    	var productPrice = getVal[i].getElementsByClassName("cart_price")[0].innerText;
		    	var productId = getVal[i].getElementsByClassName("id_product")[0].value;
		    	var productQuantity = getVal[i].getElementsByClassName("cart_input")[0].value;
		    	shoppingCart['cartItems'].push({productId:productId,productPrice:productPrice,productQuantity:productQuantity})
		    	
			}
			axios.post('/com.cyberlogitec/saveCart', 
						{
							product: JSON.stringify(shoppingCart)
						}
					
					)
				.then((response) => {
				  console.log(response);
				}, (error) => {
				  console.log(error);
				});
		}
	</script>
</body>
</html>
