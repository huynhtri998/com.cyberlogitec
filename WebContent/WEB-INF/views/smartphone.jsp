<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head th:replace="common/header :: head">
<style type="text/css">
img.img-responsive{
	display: block;
    max-width: 32%;
    height: auto;
}
div.img-box {
	height: 100px;
	width: 25% !important;
	position: relative;
}
div.thumb-content {
	padding: 15px;
}
div.item img {
	max-width: 25%;
	max-height: 25%;
	display: inline-block;
	position: absolute;
	bottom: 0;
	margin: 0 auto;
	left: 0;
	right: 0;
}
.item-price {
	font-size: 13px;
	padding: 2px 0;
}
.item-price strike {
	color: #999;
	margin-right: 5px;
}
.item-price span {
	color: #86bd57;
	font-size: 110%;
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
										<a class="left carousel-control" style="width: 6% !important;" href="#myCarousel"
											data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left"></span> <span
											class="sr-only">Previous</span>
										</a> <a class="right carousel-control" style="width: 6% !important;" href="#myCarousel"
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

							<div class="row">
								<div class="col-md-12" >
									<div class="carousel slide multi-item-carousel"
										id="theCarousel1">
										<div class="carousel-inner" >
											<div class="item active">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box" >
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;"
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box">
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;"
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box">
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;"
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box">
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;"
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box">
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;"
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box">
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;"
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>
											<!-- add  more items here -->
											<!-- Example item start:  -->

											<div class="item">
												<div class="col-xs-3">
													<a href="#1">
														<div class="img-box">
															<img th:src="@{/img/ipad.jpg}" style="max-width: 30% !important;display: block;height: auto;" 
																alt="">
														</div>
														<div class="thumb-content">
															<h4>Sony Headphone</h4>
															<p class="item-price">
																<strike>$25.00</strike> <span>$23.99</span>
															</p>
														</div>
													</a>
												</div>
											</div>

											<!--  Example item end -->
										</div>
										<a class="left carousel-control" style="width: 6% !important;" href="#theCarousel1"
											data-slide="prev"><i
											class="glyphicon glyphicon-chevron-left"></i>
										</a> 
										<a class="right carousel-control" style="width: 6% !important;" href="#theCarousel1"
											data-slide="next"><i
											class="glyphicon glyphicon-chevron-right"></i>
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
									<div class="carousel slide multi-item-carousel"
										id="theCarousel2">
										<div class="carousel-inner">
											<div class="item active">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>
											<div class="item">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>
											<!-- add  more items here -->
											<!-- Example item start:  -->

											<div class="item">
												<div class="col-xs-4">
													<a href="#1"><div
															style="background-color: red; height: 200px;"></div></a>
												</div>
											</div>

											<!--  Example item end -->
										</div>
										<a class="left carousel-control" href="#theCarousel2"
											data-slide="prev"><i
											class="glyphicon glyphicon-chevron-left"></i></a> <a
											class="right carousel-control" href="#theCarousel2"
											data-slide="next"><i
											class="glyphicon glyphicon-chevron-right"></i></a>
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
