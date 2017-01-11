<br>
<div class="container">
<div class="row">
	<%@include file="umenu.jsp"%>

	<!-- To Load Index Page -->
	<c:if test="${ifUserClickedProfile == true}">	
	<%@include file="userprofile.jsp"%>
	</c:if>
	
</div>
</div>

