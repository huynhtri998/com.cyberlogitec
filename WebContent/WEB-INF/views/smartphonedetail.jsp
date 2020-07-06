<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>SmartPhone</title>

<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" th:href="@{/css/bootstrap.min.css}" />
<link rel="stylesheet" th:href="@{/css/font-awesome.min.css}" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" th:href="@{/css/fonts.googleapis.com.css}" />

<!-- ace styles -->
<link rel="stylesheet" th:href="@{/css/ace.min.css}"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" th:href="@{/css/ace-part2.min.css}" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" th:href="@{/css/ace-skins.min.css}" />
<link rel="stylesheet" th:href="@{/css/ace-rtl.min.css}" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" th:href="@{/css/ace-ie.min.css}" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script th:src="@{/js/ace-extra.min.js}"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script th:src="@{/js/html5shiv.min.js}"></script>
		<script th:src="@{/js/respond.min.js}"></script>
		<![endif]-->
<style>
ul>li {
	margin-right: 25px;
	font-weight: lighter;
	cursor: pointer
}

li.active {
	border-bottom: 3px solid silver;
}

.item-photo {
	display: flex;
	justify-content: center;
	align-items: center;
	border-right: 1px solid #f6f6f6;
}

.menu-items {
	list-style-type: none;
	font-size: 11px;
	display: inline-flex;
	margin-bottom: 0;
	margin-top: 20px
}

.btn-success {
	width: 100%;
	border-radius: 0;
}

.section {
	width: 100%;
	margin-left: -15px;
	padding: 2px;
	padding-left: 15px;
	padding-right: 15px;
	background: #f8f9f9
}

.title-price {
	margin-top: 30px;
	margin-bottom: 0;
	color: black
}

.title-attr {
	margin-top: 0;
	margin-bottom: 0;
	color: black;
}

.btn-minus {
	cursor: pointer;
	font-size: 7px;
	display: flex;
	align-items: center;
	padding: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border: 1px solid gray;
	border-radius: 2px;
	border-right: 0;
}

.btn-plus {
	cursor: pointer;
	font-size: 7px;
	display: flex;
	align-items: center;
	padding: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border: 1px solid gray;
	border-radius: 2px;
	border-left: 0;
}

div.section>div {
	width: 100%;
	display: inline-flex;
}

div.section>div>input {
	margin: 0;
	padding-left: 5px;
	font-size: 10px;
	padding-right: 5px;
	max-width: 18%;
	text-align: center;
}

.attr, .attr2 {
	cursor: pointer;
	margin-right: 5px;
	height: 20px;
	font-size: 10px;
	padding: 2px;
	border: 1px solid gray;
	border-radius: 2px;
}

.attr.active, .attr2.active {
	border: 1px solid orange;
}

@media ( max-width : 426px) {
	.container {
		margin-top: 0px !important;
	}
	.container>.row {
		padding: 0 !important;
	}
	.container>.row>.col-xs-12.col-sm-5 {
		padding-right: 0;
	}
	.container>.row>.col-xs-12.col-sm-9>div>p {
		padding-left: 0 !important;
		padding-right: 0 !important;
	}
	.container>.row>.col-xs-12.col-sm-9>div>ul {
		padding-left: 10px !important;
	}
	.section {
		width: 104%;
	}
	.menu-items {
		padding-left: 0;
	}
}
</style>
</head>

<body class="no-skin">
	<div id="navbar"
		class="navbar navbar-default    navbar-collapse       ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="index.html" class="navbar-brand"> <small> <i
						class="fa fa-mobile"></i> SmartPhone
				</small>
				</a>

				<button class="pull-right navbar-toggle navbar-toggle-img collapsed"
					type="button" data-toggle="collapse" data-target=".navbar-buttons">
					<span class="sr-only">Toggle user menu</span> <img
						th:src="@{/img/user.jpg}" alt="Jason's Photo" />
				</button>
			</div>

			<div
				class="navbar-buttons navbar-header pull-right  collapse navbar-collapse"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="transparent dropdown-modal"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i>
					</a>

						<div
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<div class="tabbable">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab"
										href="#navbar-tasks"> Tasks <span
											class="badge badge-danger">4</span>
									</a></li>

									<li><a data-toggle="tab" href="#navbar-messages">
											Messages <span class="badge badge-danger">5</span>
									</a></li>
								</ul>
								<!-- .nav-tabs -->

								<div class="tab-content">
									<div id="navbar-tasks" class="tab-pane in active">
										<ul class="dropdown-menu-right dropdown-navbar dropdown-menu">
											<li class="dropdown-content">
												<ul class="dropdown-menu dropdown-navbar">
													<li><a href="#">
															<div class="clearfix">
																<span class="pull-left">Software Update</span> <span
																	class="pull-right">65%</span>
															</div>

															<div class="progress progress-mini">
																<div style="width: 65%" class="progress-bar"></div>
															</div>
													</a></li>

													<li><a href="#">
															<div class="clearfix">
																<span class="pull-left">Hardware Upgrade</span> <span
																	class="pull-right">35%</span>
															</div>

															<div class="progress progress-mini">
																<div style="width: 35%"
																	class="progress-bar progress-bar-danger"></div>
															</div>
													</a></li>

													<li><a href="#">
															<div class="clearfix">
																<span class="pull-left">Unit Testing</span> <span
																	class="pull-right">15%</span>
															</div>

															<div class="progress progress-mini">
																<div style="width: 15%"
																	class="progress-bar progress-bar-warning"></div>
															</div>
													</a></li>

													<li><a href="#">
															<div class="clearfix">
																<span class="pull-left">Bug Fixes</span> <span
																	class="pull-right">90%</span>
															</div>

															<div
																class="progress progress-mini progress-striped active">
																<div style="width: 90%"
																	class="progress-bar progress-bar-success"></div>
															</div>
													</a></li>
												</ul>
											</li>

											<li class="dropdown-footer"><a href="#"> See tasks
													with details <i class="ace-icon fa fa-arrow-right"></i>
											</a></li>
										</ul>
									</div>
									<!-- /.tab-pane -->


								</div>
								<!-- /.tab-content -->
							</div>
							<!-- /.tabbable -->
						</div>
						<!-- /.dropdown-menu --></li>

					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" th:src="@{/img/user.jpg}"
							alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
								Jason
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
									Settings
							</a></li>

							<li><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> Profile
							</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
									Logout
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>

			<ul class="nav nav-list">

				<li class="active open"><a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-desktop"></i> <span class="menu-text">
							MENU </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">

						<li class=""><a href="typography.html"> <i
								class="menu-icon fa fa-caret-right"></i> Typography
						</a> <b class="arrow"></b></li>

						<li class=""><a href="elements.html"> <i
								class="menu-icon fa fa-caret-right"></i> Elements
						</a> <b class="arrow"></b></li>

						<li class=""><a href="buttons.html"> <i
								class="menu-icon fa fa-caret-right"></i> Buttons &amp; Icons
						</a> <b class="arrow"></b></li>

						<li class=""><a href="content-slider.html"> <i
								class="menu-icon fa fa-caret-right"></i> Content Sliders
						</a> <b class="arrow"></b></li>

						<li class=""><a href="treeview.html"> <i
								class="menu-icon fa fa-caret-right"></i> Treeview
						</a> <b class="arrow"></b></li>

						<li class=""><a href="jquery-ui.html"> <i
								class="menu-icon fa fa-caret-right"></i> jQuery UI
						</a> <b class="arrow"></b></li>

						<li class=""><a href="nestable-list.html"> <i
								class="menu-icon fa fa-caret-right"></i> Nestable Lists
						</a> <b class="arrow"></b></li>

					</ul></li>



			</ul>
			<!-- /.nav-list -->
		</div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">

					<div class="page-header">
						<h1 style="font-size: 50px; font-style: bold;">Product</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-4 item-photo">
							<img style="max-width: 100%;"
								src="https://ak1.ostkcdn.com/images/products/8818677/Samsung-Galaxy-S4-I337-16GB-AT-T-Unlocked-GSM-Android-Cell-Phone-85e3430e-6981-4252-a984-245862302c78_600.jpg" />
						</div>
						<div class="col-xs-5" style="border: 0px solid gray">
							<!-- Datos del vendedor y titulo del producto -->
							<h3>Samsung Galaxy S4 I337 16GB 4G LTE Unlocked GSM Android
								Cell Phone</h3>
							<h5 style="color: #337ab7">
								vendido por <a href="#">Samsung</a> · <small
									style="color: #337ab7">(5054 ventas)</small>
							</h5>

							<!-- Precios -->
							<h6 class="title-price">
								<small>Price</small>
							</h6>
							<h3 style="margin-top: 0px;">399$</h3>

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
							<!--<div class="section" style="padding-bottom:20px;">
									 <button class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Agregar al carro</button>
									 <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Agregar a lista de deseos</a></h6>
								 </div>   -->
						</div>

						<div class="col-xs-9">
							<ul class="menu-items">
								<li class="active">Product Details</li>
							</ul>
							<div style="width: 100%; border-top: 1px solid silver">
								<p style="padding: 15px;">
									<small> Stay connected either on the phone or the Web
										with the Galaxy S4 I337 from Samsung. With 16 GB of memory and
										a 4G connection, this phone stores precious photos and video
										and lets you upload them to a cloud or social network at
										blinding-fast speed. With a 17-hour operating life from one
										charge, this phone allows you keep in touch even on the go.

										With its built-in photo editor, the Galaxy S4 allows you to
										edit photos with the touch of a finger, eliminating extraneous
										background items. Usable with most carriers, this smartphone
										is the perfect companion for work or entertainment. </small>
								</p>
								<small>
									<ul>
										<li>Super AMOLED capacitive touchscreen display with 16M
											colors</li>
										<li>Available on GSM, AT T, T-Mobile and other carriers</li>
										<li>Compatible with GSM 850 / 900 / 1800; HSDPA 850 /
											1900 / 2100 LTE; 700 MHz Class 17 / 1700 / 2100 networks</li>
										<li>MicroUSB and USB connectivity</li>
										<li>Interfaces with Wi-Fi 802.11 a/b/g/n/ac, dual band
											and Bluetooth</li>
										<li>Wi-Fi hotspot to keep other devices online when a
											connection is not available</li>
										<li>SMS, MMS, email, Push Mail, IM and RSS messaging</li>
										<li>Front-facing camera features autofocus, an LED flash,
											dual video call capability and a sharp 4128 x 3096 pixel
											picture</li>
										<li>Features 16 GB memory and 2 GB RAM</li>
										<li>Upgradeable Jelly Bean v4.2.2 to Jelly Bean v4.3
											Android OS</li>
										<li>17 hours of talk time, 350 hours standby time on one
											charge</li>
										<li>Available in white or black</li>
										<li>Model I337</li>
										<li>Package includes phone, charger, battery and user
											manual</li>
										<li>Phone is 5.38 inches high x 2.75 inches wide x 0.13
											inches deep and weighs a mere 4.59 oz</li>
									</ul>
								</small>
							</div>
						</div>
					</div>
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">SmartPhone</span>
						Application &copy; 2013-2014
					</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-rss-square orange bigger-150"></i>
					</a>
					</span>
				</div>
			</div>
		</div>

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
