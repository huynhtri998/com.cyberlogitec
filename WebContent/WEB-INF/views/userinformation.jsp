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
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">More Pages</a>
							</li>
							<li class="active">User Profile</li>
						</ul><!-- /.breadcrumb -->
					</div>

					<div class="page-content">

						<div class="page-header">
							<h1>
								User Profile
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="hr dotted"></div>

								<div>
									<div id="user-profile-1" class="user-profile row">
										<form th:action="@{/updateUser}" method="post">
											<div class="col-xs-12 col-sm-3 center">
												<div>
													<div class="avatar-upload">
														<div class="avatar-edit">
															<input type='file' id="imageUpload" name="imageURL"
																accept=".png, .jpg, .jpeg" /> <label for="imageUpload"></label>
														</div>
														<div class="avatar-preview">
															<div id="imagePreview" th:style="'background-image:url(/com.cyberlogitec/img/' + ${userProfile.imageURL} + ');'">
															</div>
														</div>
													</div>
	
													<div class="space-4"></div>
	
													<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
														<div class="inline position-relative">
															<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
																<i class="ace-icon fa fa-circle light-green"></i>
																&nbsp;
																<span th:text="${userProfile.name}" class="white"></span>
															</a>		
														</div>
													</div>
												</div>
	
												<div class="space-6"></div>
												<div class="hr hr12 dotted"></div>
	
												<div class="hr hr16 dotted"></div>
											</div>
											<div class="col-xs-12 col-sm-9">
												<div class="space-12"></div>
	
												<div class="profile-user-info profile-user-info-striped">
													<div class="profile-info-row">
														<div class="profile-info-name"> Username </div>
	
														<div class="profile-info-value">
															<span class="editable" id="username"><input disabled="disabled"
														type="text" name="name" th:field="*{userProfile.userName}" class="form-control" placeholder="User Name" /></span>
														</div>
													</div>
													<div class="profile-info-row">
														<div class="profile-info-name"> Full Name </div>
	
														<div class="profile-info-value">
															<span class="editable" id="name"><input 
														type="text" name="name" th:field="*{userProfile.name}" class="form-control" placeholder="Full Name" /></span>
														</div>
													</div>
													<div class="profile-info-row">
														<div class="profile-info-name"> Phone </div>
	
														<div class="profile-info-value">
															<span class="editable" id="city"><input
														type="text" name="name" th:field="*{userProfile.phone}" class="form-control" placeholder="Full Name" /></span>
														</div>
													</div>
	
													<div class="profile-info-row">
														<div class="profile-info-name"> Email </div>
	
														<div class="profile-info-value">
															<span class="editable" id="age"><input
														type="text" name="name" th:field="*{userProfile.email}" class="form-control" placeholder="Full Name" /></span>
														</div>
													</div>
												</div>
	
												<div class="space-10"></div>
												<div style="text-align: center;">
													<button class="btn btn-primary" type="submit">Update</button>
												</div>
												
												<div class="space-10"></div>
												<div class="hr hr2 hr-double"></div>
												<div class="space-6"></div>
											</div>
										</form>
										

										
									</div>
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

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
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#imagePreview").css("background-image",
						"url(" + e.target.result + ")");
				$("#imagePreview").hide();
				$("#imagePreview").fadeIn(650);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}
	$("#imageUpload").change(function() {
		readURL(this);
	});
	jQuery(function($) {
		$(document).on('click', '.toolbar a[data-target]', function(e) {
			e.preventDefault();
			var target = $(this).data('target');
			$('.widget-box.visible').removeClass('visible');//hide others
			$(target).addClass('visible');//show target
		});
	});
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
