<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="menu.jsp"%>

<div class="container">
	<div class="well panel panel-success"
		style="padding: 3px; border-radius: 0px;">
		<div class="panel-footer">

			
			<c:if test="${ifAdminClickedAddProduct == true}">
				<%@include file="addProduct.jsp"%>
			</c:if>
			<c:if test="${ifAdminClickedUpdateProduct == true}">
				<%@include file="addProduct.jsp"%>
			</c:if>
			
			
			<c:if test="${ifAdminClickedAddDeveloper == true}">
				<%@include file="addDeveloper.jsp"%>
			</c:if>
			<c:if test="${ifAdminClickedUpdateDeveloper == true}">
				<%@include file="addDeveloper.jsp"%>
			</c:if>
			
			
			<c:if test="${ifAdminClickedAddCategory == true}">
				<%@include file="addCategory.jsp"%>
			</c:if>
			<c:if test="${ifAdminClickedUpdateCategory == true}">
				<%@include file="addCategory.jsp"%>
			</c:if>
			
		</div>
	</div>
</div>
<!--End Of Add Product-->
<!--End Of Container-->