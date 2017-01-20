<!--Table-->
						<div class="col-md-12">
							<hr class="small">
							<div class="">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<div class="row">
											<div class="col-md-10">
												<h3 class="panel-title text-center">List&nbsp; Of&nbsp;
													Product</h3>
											</div>

											<div class="col-md-2 hidden-xs">
												<div class="pull-right">
													<span class="clickable filter" data-toggle="search"
														title="Toggle table filter" data-container="body">
														<i class="glyphicon glyphicon-filter"></i>
													</span>
												</div>
											</div>
										</div>
									</div>

									<!--Search-->
									<div class="panel-body display">
										<input type="text" class="form-control" id="dev-table-filter"
											data-action="filter" data-filters="#dev-table"
											placeholder="Filter Product" />
									</div>
									<!--End Of Search-->

									<!--<div class="panel-heading text-center"><h4>List&nbsp; Of &nbsp;Product</h4> </div>-->
									<div class="table-responsive">
										<table
											class="table table-hover table-striped table-bordered table-list"
											id="dev-table">

											<thead>
												<tr>
													<th class="hidden-xs">ID</th>
													<th>Cover Photo</th>
													<th>Product Name</th>
													<th>Category</th>
													<th>Product Description</th>
													<th>Templete</th>
													<th>Price</th>
													<th class="text-center"><span class="fa fa-cog"></span>
														&nbsp;Setting</th>
												</tr>
											</thead>

											<tbody>

												<c:forEach items="${products}" var="product">
													<tr>
														<td class="hidden-xs"></td>
														<td></td>
														<td>${product.name}</td>
														<td></td>
														<td>${product.description}</td>
														<td></td>
														<td>&#8377; ${product.price}</td>
														<td class="text-center"><a
															class="btn btn-default btn-sm"><span
																class="fa fa-pencil"></span></a>&nbsp; <a
															class="btn btn-danger btn-sm"><span
																class="fa fa-trash"></span></a></td>
													</tr>
												</c:forEach>

											</tbody>

										</table>
									</div>
								</div>
							</div>

						</div>
						<!--End Of Table-->
