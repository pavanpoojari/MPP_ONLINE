<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row">
	<div>
		<h3 class="text-center">
			<small style="font-size: 23px"><span class="fa fa-database"></span></small>&nbsp;
			Add a new Product
		</h3>
		<hr class="small">
		<div class="col-md-2">
			<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
		</div>
		<div class="col-md-8">
			<div class="well">
				<form:form method="POST" action="${contextRoot}/admin/saveProduct"
					class="form" role="form" modelAttribute="product"
					enctype="multipart/form-data">
					<div class="row">

						<div class="col-md-1"></div>

						<div class="col-md-10">

							<div class="form-group">
								<label for="username"> Product Name </label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-shopping-cart"></span> </span>
									<form:input type="text" path="name" class="form-control"
										placeholder="Enter Product Name" required="required"
										value="${product.name}"></form:input>
								</div>
								<form:hidden path="productId" class="form-control"
									placeholder="Enter Product Id" value="${product.productId}" />
							</div>

							<div class="form-group">
								<label for="username"> Choose a Category </label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-shopping-cart"></span> </span>
									<form:select path="categoryId" class="form-control">
										<c:forEach items="${categories}" var="category">
											<form:option value="${category.id}">${category.name}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>

							<div class="form-group">
								<label for="username"> Choose a Developer </label>
								<div class="input-group">
									<span class="input-group-addon"><span class="fa fa-code"></span>
									</span>
									<form:select path="developerId" class="form-control">
										<c:forEach items="${developers}" var="developer">
											<form:option value="${developer.id}">${developer.name}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>

							<div class="form-group">
								<label for="username"> Set a Price </label>
								<div class="input-group">
									<span class="input-group-addon"><span class="fa fa-inr"></span>
									</span>
									<form:input type="text" class="form-control" path="price"
										placeholder="Enter a Price" required="required"
										value="${product.price}" />
								</div>
							</div>


							<div class="form-group">
								<label for="username"> Add a Product Description </label>
								<div class="input-group">
									<span class="input-group-addon"><span class="fa fa-info"></span>
									</span>
									<form:textarea path="description" rows="3" cols="25"
										class="form-control" placeholder="Enter Description"
										value="${product.description}" />
								</div>
							</div>

							<div class="form-group">
								<label for="InputFile">Add a Cover Photo</label>
								<form:input path="image" type="file" id="uploadFile" />
							</div>

							<!-- <div class="form-group">
									<label for="exampleInputFile">Upload a Templete</label> <input
										type="file" id="exampleInputFile" class="form-control-static">
								</div> -->

						</div>
						<div class="col-md-12 text-center">
							<button id="B6size" type="submit" class="btn btn-primary"
								id="btnSubmit">ADD PRODUCT</button>
							&nbsp;
							<button id="B6size" type="reset" class="btn btn-primary"
								id="btnReset">RESET</button>
						</div>
					</div>
				</form:form>
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
									title="Toggle table filter" data-container="body"> <i
									class="glyphicon glyphicon-filter"></i>
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
								<th class="hidden-xs hidden-md hidden-lg">ID</th>
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
									<td class="hidden-xs hidden-md hidden-lg">${product.productId}</td>
									<td><img class="well img-responsive img-center pad img-size img-rounded"
										src="${images}/product/${product.productId}.png"
										height="120px" width="120px" /></td>
									<td>${product.name}</td>
									<td>${category.name}</td>
									<td>${product.description}</td>
									<td></td>
									<td>&#8377; ${product.price}</td>
									<td class="text-center"><a
										href="${contextRoot}/admin/edit/product/${product.productId}"
										class="btn btn-default btn-sm"><span class="fa fa-pencil"></span></a>&nbsp;
										<a
										href="${contextRoot}/admin/delete/product/${product.productId}"
										class="btn btn-danger btn-sm"><span class="fa fa-trash"></span></a></td>
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
