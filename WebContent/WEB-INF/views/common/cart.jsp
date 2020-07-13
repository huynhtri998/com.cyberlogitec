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
													<div class="cart_row">
														<div class="row">
															<div class="col-xs-2">
																<img class="img-responsive"
																	src="http://placehold.it/100x70">
															</div>
															<div class="col-xs-4">
																<h4 class="product-name">
																	<strong>Product name</strong>
																</h4>
																<h4>
																	<small>Product description</small>
																</h4>
															</div>
															<div class="col-xs-6">
																<div class="col-xs-6 text-right">
																	<h6>
																		<strong>$ </strong><strong class="cart_price">25</strong>
																		<span class="text-muted">x</span>
																	</h6>
																</div>
																<div class="col-xs-4">
																	<input type="text"
																		class="cart_input form-control input-sm" value="1">
																</div>
																<div class="col-xs-2">
																	<button type="button"
																		class="btn btnDelete btn-link btn-xs">
																		<span class="glyphicon glyphicon-trash"> </span>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<hr>
													<div class="cart_row">
														<div class="row cart_row">
															<div class="col-xs-2">
																<img class="img-responsive"
																	src="http://placehold.it/100x70">
															</div>
															<div class="col-xs-4">
																<h4 class="product-name">
																	<strong>Product name</strong>
																</h4>
																<h4>
																	<small>Product description</small>
																</h4>
															</div>
															<div class="col-xs-6">
																<div class="col-xs-6 text-right">
																	<h6>
																		<strong>$ </strong><strong class="cart_price">25</strong>
																		<span class="text-muted">x</span>
																	</h6>
																</div>
																<div class="col-xs-4">
																	<input type="text"
																		class="cart_input form-control input-sm" value="1">
																</div>
																<div class="col-xs-2">
																	<button type="button"
																		class="btn btnDelete btn-link btn-xs">
																		<span class="glyphicon glyphicon-trash"> </span>
																	</button>
																</div>
															</div>
														</div>
														<hr>
													</div>
												</div>

												<div class="row">
													<div class="text-center">
														<div class="col-xs-9">
															<h6 class="text-right">Added items?</h6>
														</div>
														<div class="col-xs-3">
															<button type="button"
																class="btn btn-default btn-sm btn-block">
																Update cart</button>
														</div>
													</div>
												</div>
											</div>
											<div class="panel-footer">
												<div class="row text-center">
													<div class="col-xs-12">
														<h4 class="text-center">
															Total <strong class="cart_total">$50</strong>
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