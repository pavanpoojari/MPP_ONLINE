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
	<form:form >
		<div class="container">
			<div class="">

				<div class="row">
					<div>
						<h3 class="text-center">
							<small style="font-size: 25px"><span
								class="fa fa-info-circle"></span></small>&nbsp; Address Details
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
													<span class="input-group-addon"><span
														class="fa fa-address-book-o"></span> </span>
													<form:input type="text" class="form-control" id="address"
														name="address" path="user.firstName"
														placeholder="Enter Address" required="required"
														value="${orderBean.user.firstname}" />
												</div>
											</div>
											<form:input path="user.userId" value="${orderBean.user.userId}"/>
											<form:input path="address.addressId" value="${orderBean.address.addressId}"/>
											<div class="form-group">
												<label for="address"> Last Name </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-address-book-o"></span> </span>
													<form:input type="text" class="form-control" id="address"
														name="address" path="user.lastName"
														placeholder="Enter Address" required="required"
														value="${orderBean.user.lastname}" />
												</div>
											</div>

											<div class="form-group">
												<label for="email"> E-mail </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-user-circle"></span> </span>
													<form:input type="text" class="form-control" id="email"
														placeholder="Enter E-mail" path="user.emailid"
														required="required" value="${orderBean.user.emailid}" />
												</div>
											</div>

											<div class="form-group">
												<label for="address"> Address</label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-address-book-o"></span> </span>
													<form:input type="text" class="form-control" id="address"
														name="address" placeholder="Enter Address"
														path="address.address" required="required"
														value="${orderBean.address.address}" />
												</div>
											</div>

											<div class="form-group">
												<label for="city"> City </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-map-marker"></span> </span>
													<form:input type="text" class="form-control" id="city"
														path="address.city" name="city" placeholder="Enter City"
														required="required" value="${orderBean.address.city}" />
												</div>
											</div>

											<div class="form-group">
												<label for="country"> Country </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-map-o"></span> </span>
													<form:select id="country" name="country"
														path="address.country" class="form-control"
														required="required">
														<form:option value="" selected="">Choose One:</form:option>
														<form:option value="India">India</form:option>
														<form:option value="U.S.A">U.S.A</form:option>
													</form:select>
												</div>
											</div>

											<div class="form-group">
												<label for="zip"> Zip / Pincode </label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="fa fa-file-zip-o"></span> </span>
													<form:input type="text" class="form-control" id="zip"
														name="zip" placeholder="Enter Zip / Pincode" path="address.pincode"
														required="required" value="${orderBean.address.pincode}" />
												</div>
											</div>
										</div>
										<!--End Of one-->
										<div class="col-md-12 text-center">
											<button id="B6size" type="submit" class="btn btn-primary ">
												Next</button>
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