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
						</div> <!-- /.dropdown-menu --></li>

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
												<img src="" style="width: 900px; height: 100px;"
													alt="Los Angeles">
											</div>

											<div class="item">
												<img src="" style="width: 900px; height: 100px;"
													alt="Chicago">
											</div>

											<div class="item">
												<img src="" style="width: 900px; height: 100px;"
													alt="New york">
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

							<div style="text-align: center; color: steelblue;">
								<h2>Top Product</h2>
							</div>

							<div class="row">
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
							</div>
							<hr style="border-top: 1px solid #8c8b8b;">
							<div style="text-align: center; color: steelblue;">
								<h2>Sale Product</h2>
							</div>

							<div class="row">
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
								</div>
								<div class="col-md-3">
									<div style="background-color: red; height: 200px;"></div>
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
