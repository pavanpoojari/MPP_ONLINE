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
				<!--Add Product-->
				<div class="tab-pane active" id="Product">
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
													class="fa fa-shopping-cart"></span> </span> <select id="category"
													name="category" class="form-control" required="required">
													<option value="na" selected="">Add a Category :</option>
													<option value="1"></option>
													<option value="2"></option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="username"> Choose a Developer </label>
											<div class="input-group">
												<span class="input-group-addon"><span
													class="fa fa-code"></span> </span> <select id="developer"
													name="developer" class="form-control" required="required">
													<option value="na" selected="">Add a Developer :</option>
													<option value="1"></option>
													<option value="2"></option>
												</select>
											</div>
										</div>

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
											<label for="exampleInputFile">Add a Cover Photo</label> <input
												type="file" id="exampleInputFile" class="form-control">
										</div>

										<!--<div class="form-group">
                            <label for="exampleInputFile">Upload a Templete</label>
                            <input type="file" id="exampleInputFile" class="form-control">
                        </div>-->

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

					<div class="col-md-2">
						<button id="B7size" type="submit" class="btn btn-primary"
							id="btnSignup">View All Product</button>
					</div>

				</div>
				<!--End Of Add Product-->
				<!--Developer-->
				<div class="tab-pane" id="Developer">
					<h3 class="text-center">
						<small style="font-size: 23px"><span
							class="fa fa-database"></span></small>&nbsp; Add a Developer
					</h3>
					<hr class="small">
					<div class="col-md-2">
						<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
					</div>

				</div>
				<!--End Of Developer-->

				<!--Category-->
				<div class="tab-pane" id="Categories">

					<h3 class="text-center">
						<small style="font-size: 23px"><span
							class="fa fa-database"></span></small>&nbsp; Add a Category
					</h3>
					<hr class="small">
					<div class="col-md-2">
						<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
					</div>

				</div>

			</div>
		</div>
	</div>
</div>
