<div th:fragment="confirm">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<div class="row">
							<div class="col-md-6">
								<h5 style="font-size: x-large; font-weight: bold;"
									class="modal-title" id="exampleModalLabel">Shopping Cart</h5>
							</div>
							<div class="col-md-6">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">
										<div class="panel panel-info">
											<div class="panel-heading">
												<div class="panel-title"></div>
											</div>
											<div class="panel-body">
												<div class="cart_items">
												</div>
											</div>
											<div class="panel-footer">
												<div class="row text-center">
													<div class="col-xs-12">
														<h4 class="text-center">
															Total <strong class="cart_total"></strong>
														</h4>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary close-footer">Cancel</button>
						<button type="button" class="btn btn-primary order">Checkout</button>
					</div>
				</div>
			</div>
		</div>
		</div>