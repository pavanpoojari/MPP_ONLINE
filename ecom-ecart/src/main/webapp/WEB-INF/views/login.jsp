<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container">
	<hr>
	<h1 class="text-center">
		Login<small></small>
	</h1>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="well well-sm">
					<form:form id="loginForm" action="${contextRoot}/login" role="form"
						method="POST">
						<div class="row">
							<div class="col-md-12 text-center">
								<span class="fa fa-user-circle-o" style="font-size: 120px"></span>
							</div>
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="form-group">
									<label for="username"> User Name</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="text" class="form-control" id="username"
											name="username" placeholder="Enter User Name" required="required" />
									</div>
								</div>
								<div class="form-group">
									<label for="password"> Password</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span> </span> <input
											type="password" class="form-control" id="password"
											name="password" placeholder="Enter password" required="required"/>
									</div>
								</div>
							</div>

							<div class="col-md-10 col-md-offset-1 text-center">
								<button type="submit"
									class="col-md-12 col-sm-12 col-xs-12 btn btn-primary pad">
									Login</button>
								&nbsp;
								<div class="col-md-12">
									<h4>
										<a href="register">Sign Up</a>
									</h4>
								</div>
							</div>
							<!-- <div class="form-group col-md-12 text-center">
								<button id="B2size" type="submit" class="btn btn-primary"
									id="btnLogin">Login</button>
							</div> -->
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Of Contain -->