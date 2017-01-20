<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- Tab NavBar -->

<div class="container" style="padding-top: 50px">
	<div class="panel panel-success" style="padding: 5px">
		<ul class="nav nav-tabs nav-justified">
			<li class="active"><a href="#Product" data-toggle="tab">Add
					Product</a></li>
			<li><a href="#Developer" data-toggle="tab">Add Developer</a></li>
			<li><a href="#Categories" data-toggle="tab">Add Categories</a></li>
			<!--<li ><a href="#d" data-toggle="tab">Add </a> </li> -->
		</ul>
		<div class="panel-footer">
			<div class="tab-content clearfix">
				<div class="tab-pane active" id="Product">
					<div class="row">
						<div>
							<h3 class="text-center">
								<small style="font-size: 23px"><span
									class="fa fa-database"></span></small>&nbsp; Add a new Product
							</h3>
							<hr class="small">
							<div class="col-md-2">
								<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
							</div>
							<div class="col-md-8">
								<div class="well">
									<form>
										<div class="row">

											<div class="col-md-1"></div>

											<div class="col-md-10">

												<div class="form-group">
													<label for="username"> Product Name </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-shopping-cart"></span> </span> <input type="text"
															class="form-control" id="product"
															placeholder="Enter Product Name" required="required" />
													</div>
												</div>

												<div class="form-group">
													<label for="username"> Choose a Category </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-shopping-cart"></span> </span> <select
															id="category" name="category" class="form-control"
															required="required">
															<option value="na" selected="">Add a Category :</option>
															<option value="1"></option>
															<option value="2"></option>
														</select>
													</div>
												</div>

												<!--<div class="form-group">
                            <label for="username">
                                Choose a Developer </label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-code"></span>
                                </span>
                                <select id="developer" name="developer" class="form-control" required="required">
                                    <option value="na" selected="">Add a Developer :</option>
                                    <option value="1"></option>
                                    <option value="2"></option>
                                </select>
                                </div>
                        </div>-->

												<div class="form-group">
													<label for="username"> Set a Price </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-inr"></span> </span> <input type="text"
															class="form-control" id="product"
															placeholder="Enter a Price" required="required" />
													</div>
												</div>


												<div class="form-group">
													<label for="username"> Add a Product Description </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-info"></span> </span>
														<textarea name="message" id="message" class="form-control"
															rows="3" cols="25" required="required"
															placeholder="Message"></textarea>
													</div>
												</div>

												<div class="form-group">
													<label for="InputFile">Add a Cover Photo</label> <input
														type="file" id="InputFile" class="form-control">
													<!--<input type="file" id="InputFile1" class="form-control">-->
													<!--<input type="file" id="InputFile2" class="form-control">-->
												</div>

												<div class="form-group">
													<label for="exampleInputFile">Upload a Templete</label> <input
														type="file" id="exampleInputFile"
														class="form-control-static">
												</div>

											</div>
											<div class="col-md-12 text-center">
												<button id="B6size" type="submit" class="btn btn-primary"
													id="btnSignup">ADD PRODUCT</button>
												&nbsp;
												<button id="B6size" type="reset" class="btn btn-primary"
													id="btnReset">RESET</button>
											</div>
										</div>
									</form>
								</div>

							</div>
						</div>

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
														<td class="hidden-xs">${product.productId}</td>
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

					</div>
					<!--<div class="col-md-2">
                    <button id="B7size" type="submit" class="btn btn-primary" id="btnSignup">
                        View All Product
                    </button>
               </div> -->

				</div>
				<!--End Of Add Product-->
				<!--Developer-->
				<div class="tab-pane" id="Developer">
					<div class="row">

						<div>

							<h3 class="text-center">
								<small style="font-size: 23px"><span
									class="fa fa-database"></span></small>&nbsp; Add a Developer
							</h3>
							<hr class="small">
							<div class="col-md-2">
								<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
							</div>

							<div class="col-md-8">
								<div class="well">
									<form>
										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-10">

												<div class="form-group">
													<label for="username"> Developer Name </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-code"></span> </span> <input type="text"
															class="form-control" id="product"
															placeholder="Enter Developer Name" required="required" />
													</div>
												</div>

												<div class="form-group">
													<label for="username"> Phone Number </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-phone"></span> </span> <input type="number"
															class="form-control" id="product"
															placeholder="Enter Phone Number" required="required" />
													</div>
												</div>

												<div class="form-group">
													<label for="username"> Email ID </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-envelope"></span> </span> <input type="email"
															class="form-control" id="product"
															placeholder="Enter Email ID" required="required" />
													</div>
												</div>

											</div>

											<div class="col-md-12 text-center">
												<button id="B6size" type="submit" class="btn btn-primary"
													id="btnSignup">ADD DEVELOPER</button>
												&nbsp;
												<button id="B6size" type="reset" class="btn btn-primary"
													id="btnReset">RESET</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!--Table-->
						<div class="col-md-12">
							<hr class="small">
							<div class="">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<div class="row">
											<div class="col-md-10">
												<h3 class="panel-title text-center">List&nbsp; Of&nbsp;
													Developer</h3>
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
										<input type="text" class="form-control" id="div-table-filter"
											data-action="filter" data-filters="#div-table"
											placeholder="Filter Developers" />
									</div>
									<!--End Of Search-->

									<!--<div class="panel-heading text-center"><h4>List&nbsp; Of &nbsp;Product</h4> </div>-->
									<div class="table-responsive">
										<table
											class="table table-hover table-striped table-bordered table-list"
											id="div-table">

											<thead>
												<tr>
													<th class="hidden-xs">ID</th>
													<th>Developer Name</th>
													<th>Phone Name</th>
													<th>Email ID</th>
													<th class="text-center"><span class="fa fa-cog"></span>
														&nbsp;Setting</th>
												</tr>
											</thead>

											<tbody>
											
											<c:forEach items="${developers}" var="developer">
												<tr>
													<td class="hidden-xs">${developer.id}</td>
													<td></td>
													<td></td>
													<td></td>
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

					</div>

				</div>
				<!--End Of Developer-->

				<!--Category-->
				<div class="tab-pane" id="Categories">

					<div class="row">

						<div>

							<h3 class="text-center">
								<small style="font-size: 23px"><span
									class="fa fa-database"></span></small>&nbsp; Add a Category
							</h3>
							<hr class="small">
							<div class="col-md-2">
								<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
							</div>

							<div class="col-md-8">
								<div class="well">
									<form>
										<div class="row">
											<div class="col-md-1"></div>
											<div class="col-md-10">

												<div class="form-group">
													<label for="username"> Category Name </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-shopping-cart"></span> </span> <input type="text"
															class="form-control" id="product"
															placeholder="Enter Developer Name" required="required" />
													</div>
												</div>

												<div class="form-group">
													<label for="username"> Add a category Description </label>
													<div class="input-group">
														<span class="input-group-addon"><span
															class="fa fa-info"></span> </span>
														<textarea name="message" id="message" class="form-control"
															rows="3" cols="25" required="required"
															placeholder="Message"></textarea>
													</div>
												</div>

											</div>

											<div class="col-md-12 text-center">
												<button id="B6size" type="submit" class="btn btn-primary"
													id="btnSignup">ADD CATEGORY</button>
												&nbsp;
												<button id="B6size" type="reset" class="btn btn-primary"
													id="btnReset">RESET</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!--Table-->
						<div class="col-md-12">
							<hr class="small">
							<div class="">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<div class="row">
											<div class="col-md-10">
												<h3 class="panel-title text-center">List&nbsp; Of&nbsp;
													Category</h3>
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
										<input type="text" class="form-control" id="div-table-filter"
											data-action="filter" data-filters="#div-table"
											placeholder="Filter Developers" />
									</div>
									<!--End Of Search-->

									<!--<div class="panel-heading text-center"><h4>List&nbsp; Of &nbsp;Product</h4> </div>-->
									<div class="table-responsive">
										<table
											class="table table-hover table-striped table-bordered table-list"
											id="div-table">

											<thead>
												<tr>
													<th class="hidden-xs">ID</th>
													<th>Category Name</th>
													<th>Category Description</th>
													<th class="text-center"><span class="fa fa-cog"></span>
														&nbsp;Setting</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach items="${categories}" var="cat">
													<tr>
														<th class="hidden-xs">${cat.id}</th>
														<th>${cat.name}</th>
														<th>${cat.description}</th>
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

					</div>

				</div>

				<!--End Of Category-->
				<!--<div class="tab-pane" id="d">
          <h3>4th Tab</h3>
	  </div>-->

			</div>
		</div>
	</div>
</div>

<!-- End Of Tab NavBar -->
<!--Container-->

<!--End Of Container-->