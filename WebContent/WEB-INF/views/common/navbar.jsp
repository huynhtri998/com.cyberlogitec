<div id="navbar"
		class="navbar navbar-default    navbar-collapse       ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a th:href="@{/smartphone}" class="navbar-brand"> <small> <i
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
							class="nav-user-photo" th:src="@{'/img/' + ${userProfile.imageURL}}"
							alt="Jason's Photo" /> <span class="user-info"> <small th:text="${userProfile.name}"></small>
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