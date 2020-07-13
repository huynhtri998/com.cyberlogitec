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
											<div class="item active">
												<img src=""
													style="width: 900px; height: 100px;" alt="Los Angeles">
											</div>

											<div class="item">
												<img src="banner_smartphone.jpg"
													style="width: 900px; height: 100px;" alt="Chicago">
											</div>

											<div class="item">
												<img src="banner_smartphone.jpg"
													style="width: 900px; height: 100px;" alt="New york">
											</div>
										</div>

										<!-- Left and right controls -->
										<a class="left carousel-control" href="#myCarousel"
											data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left"></span> <span
											class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#myCarousel"
											data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right"></span> <span
											class="sr-only">Next</span>
										</a>
									</div>
								</div>
								<!-- .sidebar -->
							</div>

							<div  class="row " style="margin-top: 40px;">
							<th:block th:each="ProductByCategoryId: ${listProductByCategoryId}">
								<th:block th:each="Product: ${ProductByCategoryId.product}">
								<a th:href="@{/smartphonedetail/{id}(id=${Product.productId})}">
								<div class="col-md-3">
									
										<div class="img-box">
											<img th:src="@{/img/ipad.jpg}"
												style="max-width: 30% !important; display: block; height: auto;"
												alt="">
										</div>
										<div class="thumb-content">
											<h4 th:utext="${Product.productName}" ></h4>
											<p class="item-price">
												<strike th:utext="${Product.productPrice}" ></strike> 
												<span th:utext="${Product.productSalePrice}" ></span>
											</p>
										</div>
									
								</div></a></th:block>
								</th:block>
							</div>

							<div class="row" style="margin-top: 50px; text-align: center;">
								<nav aria-label="Page navigation example">
									<ul class="pagination pagination-lg">
										<li class="page-item"><a class="page-link" th:href="@{'/smartphonecatalog/' + ${categoryId} + '/' + ${thisPage - 1}}"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												<span class="sr-only">Previous</span>
										</a></li>
										<th:block th:each="page: ${pages}">
										<li class="page-item"><a th:href="@{'/smartphonecatalog/' + ${categoryId} + '/' + ${page}}"  th:utext="${page}"  class="page-link" href="#"></a></li>
										</th:block>
									</ul>
								</nav>
							</div>

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
		})
	</script>
</body>
</html>
