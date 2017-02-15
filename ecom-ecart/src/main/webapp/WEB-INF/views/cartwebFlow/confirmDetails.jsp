<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%-- All the tag libraries are included here --%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<s:url value="/resources/css" var="css" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/images" var="images" />
<s:url value="/resources/fonts" var="fonts" />
<c:set value="${pageContext.request.contextPath}" var="contextRoot" />

<!DOCTYPE html>
<html>
<head>
<meta name="description" content="WEBTEMP">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="${images}/LOGO.ico">

<title>WebTemp - ${title}</title>

<script src="${js}/jquery.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/lstyle.js"></script>

<link rel="stylesheet" href="${css}/bootstrap-flatly.css">
<link rel="stylesheet" href="${css}/lstyle.css">
<link rel="stylesheet" href="${css}/font-awesome.css">
<link rel="stylesheet" href="${css}/animation.css">
<link rel="stylesheet" href="${css}/icon.css">

<!-- Menu bar active -->
<script type="text/javascript">
	window.hoverMenu = '${title}';
</script>

</head>
<body id="mypage" data-spy="scroll" data-target="#my-navbar">
	<%@include file="../shared/menu.jsp"%>
	<br>
	<br>
	<form:form>
		<div class="container">
			<div class="">

				<div class="row">
					<div>
						<h3 class="text-center">
							<small style="font-size: 25px"><span
								class="fa fa-info-circle"></span></small>&nbsp; Confirm Details
						</h3>
						<hr class="small">
						<div class="col-md-2">
							<!--<span class="fa fa-user-circle-o" style="font-size:250px"></span>-->
						</div>
						<div class="col-md-8">
							<div class="well" style="border-radius: 0px;">
								<form id="paymentForm">
									<div class="row">
										<div class="col-md-1"></div>
										<!--one-->
										<div class="col-md-10">

											<div class="form-group">
												<label for="address"> First Name </label>
												<div class="input-group">
													<input type="text" class="form-control-static"
														path="user.firstName" value="${orderBean.user.firstname}"
														required="required" />
												</div>
											</div>
											<div class="form-group">
												<label for="address"> Last Name </label>
												<div class="input-group">
													<input type="text" class="form-control-static" id="address"
														path="user.lastName" name="address" required="required"
														value="${orderBean.user.lastname}" />
												</div>
											</div>

											<div class="form-group">
												<label for="email"> E-mail </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-user-circle"></span> </span> <input type="text"
														path="user.emailid" class="form-control-static" id="email"
														required="required" value="${orderBean.user.emailid}" />
												</div>
											</div>

											<div class="form-group">
												<label for="address"> Address</label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-address-book-o"></span> </span> <input type="text"
														class="form-control-static" id="address" name="address"
														path="address.address" required="required"
														value="${orderBean.address.address}" />
												</div>
											</div>

											<div class="form-group">
												<label for="city"> City </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-map-marker"></span> </span> <input type="text"
														class="form-control-static" id="city" name="city"
														path="address.city" required="required"
														value="${orderBean.address.city}" />
												</div>
											</div>

											<div class="form-group">
												<label for="country"> Country </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-map-o"></span> </span> <input type="text"
														path="address.country" class="form-control-static"
														id="country" name="country" required="required"
														value="${orderBean.address.country}" />
												</div>
											</div>

											<div class="form-group">
												<label for="zip"> Zip / Pincode </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-file-zip-o"></span> </span> <input type="text"
														class="form-control-static" id="zip" name="zip"
														path="address.pincode" required="required" value="${orderBean.address.value="${orderBean.address.pincode}" />
												</div>
											</div>
										</div>
										<!--End Of one-->
										<div class="col-md-12 text-center">
											<button id="B6size" type="submit" class="btn btn-warning ">
												Edit</button>
											&nbsp;
											<button id="B6size" type="submit" class="btn btn-primary ">
												Confirm Details</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form:form>
	<!-- Footer -->
	<%@include file="../shared/footer.jsp"%>
	<!-- End Of Footer -->

	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
	<script src="${js}/lstyle.js"></script>
	<script src="${js}/formScript.js"></script>
	<script src="${js}/jquery.validate.js"></script>
</body>
</html>