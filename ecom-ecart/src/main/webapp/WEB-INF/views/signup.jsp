<%-- All the tag libraries are included here --%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<s:url value="/resources/css" var="css" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/images" var="images" />
<c:set value="${pageContext.request.contextPath}" var="contextRoot" />

<!DOCTYPE html>
<html>
<head>
<meta name="description" content="WEBTEMP">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WebTemp - ${title}</title>

<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/lstyle.js"></script>

<link rel="stylesheet" href="${css}/bootstrap-flatly.css">
<link rel="stylesheet" href="${css}/lstyle.css">
<link rel="stylesheet" href="${css}/font-awesome.css">

<!-- Menu bar active -->
<script type="text/javascript">
	window.hoverMenu = '${title}';
</script>

</head>
<body id="mypage" data-spy="scroll" data-target="#my-navbar">
	<%@include file="./shared/menu.jsp"%>
	<div class="container">
		<hr>
		<h1 class="text-center">
			Sign Up<small></small>
		</h1>
		<hr>
		<div class="container">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="well well-sm">
						<form:form modelAttribute="user" role="form">
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
												class="glyphicon glyphicon-user"></span> </span>
											<form:input path="uname" id="uname" class="form-control"
												placeholder="Enter User Name"></form:input>
										</div>
										<form:hidden path="userId" id="" name="" class="form-control"
											placeholder="Category Id" value="${user.userId}" />
									</div>
									<div class="form-group">
										<label for="password"> Password</label>
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span> </span>
											<form:input type="password" id="password" path="password"
												class="form-control" placeholder="Enter password"
												required="required" />
										</div>
									</div>
									<!-- <div class="form-group">
									<label for="repassword"> Re-Type Password</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span> </span>
										<input type="password"
											class="form-control" placeholder="Enter password"
											required="required" />
									</div>
								</div> -->
									<div class="form-group">
										<label for="email"> Email Address</label>
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-envelope"></span> </span>
											<form:input type="email" id="emailid" path="emailid"
												class="form-control" placeholder="Enter email"
												required="required" />
										</div>
									</div>
									<div class="form-group">
										<label for="gender"> Gender</label>
										<form:select path="gender" id="gender" class="form-control"
											required="required">
											<option value="na" selected="">Choose One:</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
										</form:select>
									</div>
									<div class="form-group">
										<label for="email"> Contact Number</label>
										<div class="input-group">
											<span class="input-group-addon"><span>+91</span> </span>
											<form:input type="number" id="phonenumber" path="phonenumber"
												class="form-control" placeholder="Enter Contact Number"
												required="required" />
										</div>
									</div>
									<div class="">
										<div class="well-sm">
											<p class="" aria-label="...">
												<input type="checkbox" aria-label="..." required="required">&nbsp;
												I , agree with the Terms & Condition
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12 text-center">
									<button id="B3size" name="_eventId_submit"
										type="submit" class="btn btn-primary" id="btnSignup">Sign
										Up</button>
									&nbsp;
									<button id="B3size" type="reset" class="btn btn-primary"
										id="btnReset">Reset</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End of Container-->

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>
	<!-- End Of Footer -->
</body>
</html>
