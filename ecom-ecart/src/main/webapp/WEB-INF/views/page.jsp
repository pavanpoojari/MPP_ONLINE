<%-- All the tag libraries are included here --%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url value="/resources/css" var="css" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/images" var="images" />
<c:set value="${pageContext.request.contextPath}" var="contextRoot" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="WEBTEMP">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WEBTEMP - ${title}</title>
<link rel="stylesheet" href="${css}/bootstrap-flatly.css">
<!--<link rel="stylesheet" href="${css}/bootstrap-theme.min.css">-->
<link rel="stylesheet" href="${css}/lstyle.css">
</head>



<body id="mypage" data-spy="scroll" data-target="#my-navbar">
	<%@include file="./shared/menu.jsp"%>
	
	<!-- To Load Index Page -->
	<c:if test="${ifUserClickedHome == true}">	
	<%@include file="index.jsp"%>
	</c:if>
	
	<!-- To Load About Page -->
	<c:if test="${ifUserClickedAbout == true}">	
	<%@include file="about.jsp"%>
	</c:if>
	
	<!-- To Load Contact Page -->
	<c:if test="${ifUserClickedContact == true}">	
	<%@include file="contact.jsp"%>
	</c:if>
	
	
	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>
	<!-- End Of Footer -->
	
	
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
</body>
</html>
