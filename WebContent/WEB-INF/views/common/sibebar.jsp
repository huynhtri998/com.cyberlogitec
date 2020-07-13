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
				<th:block th:each="categories : ${categories}">
				<li class="" ><a th:href="@{'/smartphonecatalog/' + ${categories.categoryId} + '/1'}"> <i
						class="menu-icon fa fa-caret-right"></i><span th:utext="${categories.categoryName}"></span>
				</a> <b class="arrow"></b></li>
				</th:block>
				


			</ul></li>



	</ul>
	<!-- /.nav-list -->
</div>