<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head th:replace="common/header :: head">
<style type="text/css">
body {
	font-family: "Open Sans", sans-serif;
}

h2 {
	color: #000;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	text-transform: uppercase;
	position: relative;
	margin: 30px 0 80px;
}

h2 b {
	color: #ffc000;
}

h2::after {
	content: "";
	width: 100px;
	position: absolute;
	margin: 0 auto;
	height: 4px;
	background: rgba(0, 0, 0, 0.2);
	left: 0;
	right: 0;
	bottom: -20px;
}

.carousel {
	margin: 50px auto;
	padding: 0 70px;
}

.carousel .item {
	min-height: 330px;
	text-align: center;
	overflow: hidden;
}

.carousel .item .img-box {
	height: 160px;
	width: 100%;
	position: relative;
}

.carousel .item img {
	max-width: 100%;
	max-height: 100%;
	display: inline-block;
	position: absolute;
	bottom: 0;
	margin: 0 auto;
	left: 0;
	right: 0;
}

.carousel .item h4 {
	font-size: 18px;
	margin: 10px 0;
}

.carousel .item .btn {
	color: #333;
	border-radius: 0;
	font-size: 11px;
	text-transform: uppercase;
	font-weight: bold;
	background: none;
	border: 1px solid #ccc;
	padding: 5px 10px;
	margin-top: 5px;
	line-height: 16px;
}

.carousel .item .btn:hover, .carousel .item .btn:focus {
	color: #fff;
	background: #000;
	border-color: #000;
	box-shadow: none;
}

.carousel .item .btn i {
	font-size: 14px;
	font-weight: bold;
	margin-left: 5px;
}

#carouselright1 {
	font-size: 14px;
	font-weight: bold;
	margin-left: 5px;
	font-size: 30px;
	position: absolute;
	top: 50%;
	display: inline-block;
	margin: -16px 0 0 0;
	z-index: 5;
	left: 0;
	right: 0;
	color: rgba(0, 0, 0, 0.8);
	text-shadow: none;
	font-weight: bold;
	margin-left: -3px;
	margin-right: -3px;
}

#carouselleft1 {
	font-size: 14px;
	font-weight: bold;
	margin-left: 5px;
	font-size: 30px;
	position: absolute;
	top: 50%;
	display: inline-block;
	margin: -16px 0 0 0;
	z-index: 5;
	left: 0;
	right: 0;
	color: rgba(0, 0, 0, 0.8);
	text-shadow: none;
	font-weight: bold;
	margin-left: -3px;
	margin-right: -3px;
}

.carousel .thumb-wrapper {
	text-align: center;
}

.carousel .thumb-content {
	padding: 15px;
}

.carousel .carousel-control {
	height: 100px;
	width: 40px;
	background: none;
	margin: auto 0;
	background: rgba(0, 0, 0, 0.2);
}

.carousel .carousel-control i {
	font-size: 30px;
	position: absolute;
	top: 50%;
	display: inline-block;
	margin: -16px 0 0 0;
	z-index: 5;
	left: 0;
	right: 0;
	color: rgba(0, 0, 0, 0.8);
	text-shadow: none;
	font-weight: bold;
}

.carousel .item-price {
	font-size: 13px;
	padding: 2px 0;
}

.carousel .item-price strike {
	color: #999;
	margin-right: 5px;
}

.carousel .item-price span {
	color: #86bd57;
	font-size: 110%;
}

.carousel .carousel-control.left i {
	margin-left: -3px;
}

.carousel .carousel-control.left i {
	margin-right: -3px;
}

.carousel .carousel-indicators {
	bottom: -50px;
}

.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	margin: 4px;
	border-radius: 50%;
	border-color: transparent;
}

.carousel-indicators li {
	background: rgba(0, 0, 0, 0.2);
}

.carousel-indicators li.active {
	background: rgba(0, 0, 0, 0.6);
}

.star-rating li {
	padding: 0;
}

.star-rating i {
	font-size: 14px;
	color: #ffc000;
}
</style>
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

	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script th:src="@{/js/ace-elements.min.js}"></script>
	<script th:src="@{/js/ace.min.js}"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
	 	var objStr = '{[]}';
		var add_cart = document.getElementsByClassName("btn_addToCart");
		console.log(add_cart);
		for (var i = 0; i < add_cart.length; i++) {
			var add = add_cart[i];
			add.addEventListener(
							"click",
							function(event) {

								var button = event.target;
								var product = button.parentElement.parentElement;
								var img = product.parentElement
										.getElementsByClassName("img_product")[0].src
								var title = product
										.getElementsByClassName("name_product")[0].innerText
								var price = product
										.getElementsByClassName("price_product")[0].innerText
										console.log(img + '  ' + title + '  ' + price);
								addItemToCart(title, price, img)
								// Khi thêm sản phẩm vào giỏ hàng thì sẽ hiển thị modal
								//modal.style.display = "block";

								//updatecart()
							})
		}

		function addItemToCart(title, price, img) {
		  var objInner = '{"title":"' + title + '", "img":"'+ img + '", "price":"' +price +'"}';
		  obj = JSON.parse(objStr);
		  obj.push(objInner);
		  document.cookie = '"' + title + '" ' + obj;
		  var x = document.cookie;
		  console.log('cookie : ' + x);
		  var cartRow = document.createElement('div')
		  cartRow.classList.add('cart_row')
		  var cartItems = document.getElementsByClassName('cart_items')[0]
		  var cart_title = cartItems.getElementsByClassName('cart_name_product')
		  //Nếu title của sản phẩm bằng với title mà bạn thêm vao giỏ hàng thì sẽ thông cho user.
		  for (var i = 0; i < cart_title.length; i++) {
		    if (cart_title[i].innerText == title) {
		      alert('Sản Phẩm Đã Có Trong Giỏ Hàng')
		      return
		    }
		  }
		  
		  

		  var cartRowContents = '<div class="row"><div class="col-xs-2">' + 
				'<img class="img-responsive" src="' + img + '">' + 
			'</div>'+
			'<div class="col-xs-4">' + 
				'<h4 class="product-name">' + 
					'<strong class="cart_name_product">' + title + '</strong>' + 
				'</h4>' + 
			'</div>' + 
			'<div class="col-xs-6">' + 
				'<div class="col-xs-6 text-right">' + 
					'<h6>' + 
						'<strong>$ </strong><strong class="cart_price">' + price + '</strong>' + 
						'<span class="text-muted">x</span>' + 
					'</h6>' + 
				'</div>' + 
				'<div class="col-xs-4">' + 
					'<input type="number" class="cart_input form-control input-sm" value="1">' + 
				'</div>' + 
				'<div class="col-xs-2">' + 
					'<button type="button" class="btn btnDelete btn-link btn-xs">' + 
						'<span class="glyphicon glyphicon-trash"> </span>' +
					'</button>' + 
				'</div>' + 
			'</div>' + 
		'</div>' +
		'<hr>'
	  		
		  cartRow.innerHTML = cartRowContents
		 
		  cartItems.append(cartRow)
		  cartRow.getElementsByClassName('btnDelete')[0].addEventListener('click', function () {
		    var button_remove = event.target
		    button_remove.parentElement.parentElement.parentElement.parentElement.parentElement
			.remove()
		    updatecart()
		  })
		   cartRow.getElementsByClassName('cart_input')[0].addEventListener('change', function (event) {
		    var input = event.target
		    if (isNaN(input.value) || input.value <= 0) {
		      input.value = 1;
		    }
		    updatecart()
		  })
		  updatecart()
		}
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
				var price = parseFloat(price_item.innerText)
				var quantity = quantity_item.value 
				total = total + (price * quantity)
			}
			document.getElementsByClassName("cart_total")[0].innerText = total
					+ '$'
			
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
	</script>
</body>
</html>
