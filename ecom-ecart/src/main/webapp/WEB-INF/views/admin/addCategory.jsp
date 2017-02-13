<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row">
	<div>
		<h3 class="text-center">
			<small style="font-size: 23px"><span class="fa fa-database"></span></small>&nbsp;
			Add a Category
		</h3>
		<hr class="small">
		<div class="col-md-2">
			<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
		</div>

		<div class="col-md-8">
			<div class="well">
				<form:form id="categoryForm" method="POST"
					action="${contextRoot}/admin/saveCategory" class="form" role="form"
					modelAttribute="category">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">

							<div class="form-group">
								<label for="name"> Category Name </label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-shopping-cart"></span> </span>
									<form:input path="name" id="name" name="name"
										class="form-control" placeholder="Enter Category Name"
										value="${category.name}"></form:input>
								</div>
								<form:hidden path="id" class="form-control"
									placeholder="Category Id" value="${category.id}" />
							</div>

							<div class="form-group">
								<label for="username"> Add a category Description </label>
								<div class="input-group">
									<span class="input-group-addon"><span class="fa fa-info"></span>
									</span>
									<form:textarea path="description" rows="5" cols="25"
										id="description" name="description" class="form-control"
										placeholder="Enter Description"
										value="${category.description}"></form:textarea>
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
								Category</h3>
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
								<th class="hidden-xs hidden-md hidden-lg">ID</th>
								<th>Category Name</th>
								<th>Category Description</th>
								<th class="text-center"><span class="fa fa-cog"></span>
									&nbsp;Setting</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${categories}" var="category">
								<tr>
									<th class="hidden-xs hidden-md hidden-lg">${category.id}</th>
									<th>${category.name}</th>
									<th>${category.description}</th>
									<td class="text-center"> <a
										href="${contextRoot}/admin/edit/category/${category.id}"
										class="btn btn-default btn-sm btn-rad"><span
											class="fa fa-pencil"></span></a>&nbsp; <a
										href="${contextRoot}/admin/delete/category/${category.id}"
										class="btn btn-danger btn-sm btn-rad"><span
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