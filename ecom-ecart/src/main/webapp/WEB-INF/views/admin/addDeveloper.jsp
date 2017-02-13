<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row">
	<div>
		<h3 class="text-center">
			<small style="font-size: 23px"><span class="fa fa-database"></span></small>&nbsp;
			Add a Developer
		</h3>
		<hr class="small">
		<div class="col-md-2">
			<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
		</div>

		<div class="col-md-8">
			<div class="well">
				<form:form id="developerForm" method="POST"
					action="${contextRoot}/admin/saveDeveloper" class="form"
					role="form" modelAttribute="developer">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">

							<div class="form-group">
								<label for="name"> Developer Name </label>
								<div class="input-group">
									<span class="input-group-addon"><span class="fa fa-code"></span>
									</span>
									<form:input type="text" path="name" id="name" name="name"
										class="form-control" placeholder="Enter Developer Name"
										required="required" value="${developer.name}" />
								</div>
								<form:hidden path="id" class="form-control"
									placeholder="Developer Id" value="${developer.id}" />
							</div>

							<div class="form-group">
								<label for="phonenumber"> Phone Number </label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-phone"></span> </span>
									<form:input type="number" path="phonenumber" id="phonenumber"
										name="phonenumber" class="form-control"
										placeholder="Enter Phone Number" required="required"
										value="${developer.phonenumber}" />
								</div>
							</div>

							<div class="form-group">
								<label for="email"> Email ID </label>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-envelope"></span> </span>
									<form:input type="email" path="email" id="email" name="email"
										class="form-control" placeholder="Enter Email ID"
										required="required" value="${developer.email}" />
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
								Developer</h3>
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
									<td class="hidden-xs hidden-md hidden-lg">${developer.id}</td>
									<td>${developer.name}</td>
									<td>${developer.phonenumber}</td>
									<td>${developer.email}</td>
									<td class="text-center">
									<a href="${contextRoot}/admin/edit/developer/${developer.id}"
										class="btn btn-default btn-sm btn-rad"><span
											class="fa fa-pencil"></span></a>&nbsp; <a
										href="${contextRoot}/admin/delete/developer/${developer.id}"
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