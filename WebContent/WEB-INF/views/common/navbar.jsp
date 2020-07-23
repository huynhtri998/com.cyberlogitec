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
					<a  data-toggle="modal" data-target="#exampleModal"  onclick="showCart()" class="btn btn-info btn-lg">
							<span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
						  </a>
					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" th:src="@{'/img/' + ${userProfile.imageURL}}"
							alt="Jason's Photo" /> <span class="user-info"> <small th:text="${userProfile.name}"></small>
						</span> <i class="ace-icon fa fa-caret-down"></i>
						<input hidden="" th:value="${userProfile.id}" type="number" id="idUser">
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a th:href="@{/userinformation}"> <i
									class="ace-icon fa fa-user"></i> Profile
							</a></li>

							<li class="divider"></li>

							<li><a th:href="@{/logout}"> <i class="ace-icon fa fa-power-off"></i>
									Logout
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>