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
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<div class="well">
				<div class="row">
					<div class="text-center">
						<form:form class="form-horizontal sign-up-form"
							modelAttribute="orderBean" method="POST">

							<!-- Change your address here -->

							<h2 class="text-center header-sign-up">Order Summary</h2>

							<div class="form-group">
								<label for="email" class="control-label col-sm-5">Billar
									Email Address</label>
								<div class="col-sm-3">
									<h4>
										<small>${orderBean.user.emailid}</small>
									</h4>
								</div>
							</div>
							<!-- Update mobile number here -->

							<div class="form-group">
								<label for="mobile" class="labelPadding col-sm-5 control-label">Mobile
									no:</label>
								<div class="col-sm-5 ">${orderBean.user.phonenumber}</div>
							</div>

							<!-- Update address Line 1 here -->


							<div class="col-md-12 text-center">
								<input type="submit" class="btn btn-primary"
									name="_eventId_confirm" value="Confirm" />
							</div>


						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
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