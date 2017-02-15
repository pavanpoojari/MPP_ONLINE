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
	<form method="POST">
		<div class="container">
			<h2 class="text-center">Choose the Payment Mode</h2>
			<hr class="small">
		</div>
		<div class="container">
			<div class="well">
				<div class="row">
					<%-- <div class="col-md-12">
						<div class="col-md-6 text-center">
							<span class="fa fa-credit-card" style="font-size: 80px"></span>
						</div>
						<div class="col-md-6 text-center">
							<span class="fa fa-paypal" style="font-size: 80px"></span>
						</div>
					</div> --%>

					<div class="col-md-12">
						<div class="col-md-6">
							<div class="well" style="padding: 3px; border-radius: 2px">
								<div class="row">
									<div class="col-md-12 text-center">
										<span class="fa fa-credit-card" style="font-size: 120px"></span>
									</div>

									<div class="col-md-12">
										<br>
										<div class="form-control">
											<input type="radio" name="" value="CCDC"> Credit /
											Debit Card
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div class="well" style="padding: 3px; border-radius: 2px">
								<div class="row">
									<div class="col-md-12 text-center">
										<span class="fa fa-paypal" style="font-size: 120px"></span>
									</div>

									<div class="col-md-12">
									<br>
										<div class="form-control">
											<input type="radio" name="" value="PayPal"> PayPal
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12 text-center">
						<br><input name="_eventId_continue" type="submit"
							class="btn btn-primary" id="B6size" value="Continue" />
					</div>
				</div>
			</div>
		</div>
	</form>
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