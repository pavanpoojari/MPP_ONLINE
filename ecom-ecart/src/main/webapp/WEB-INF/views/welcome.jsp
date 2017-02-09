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
<body>
	<%@include file="./shared/menu.jsp"%>

	<br>
	<br>
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<div class="well" style="border-radius: 0px">
				<h1>
					Registration successful. Please click <a href="login">here</a> to
					redirect to log in page.
				</h1>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>
	<!-- End Of Footer -->
</body>
</html>