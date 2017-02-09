<br>
<br>
<div class="container">
	<div class="row">

		<div class="col-md-12">

			<div class="well"
				style="padding-left: 20px; padding-bottom: 5px; padding-top: 5px;">
				<div class="row">
					<div class="col-md-1">
						<img class="img-circle" src="${images}/3.png" width="60px"
							height="60px">
					</div>
					<div>
						<h4 style="padding-left: 0px; padding-top: 9px">
							<label for="username">Pavan Poojary </label>
						</h4>
					</div>
				</div>
			</div>

		</div>

		<%@include file="menu.jsp"%>

		<!-- To Load Index Page -->
		<c:if test="${ifUserClickedProfile == true}">
			<%@include file="userprofile.jsp"%>
		</c:if>
		
		<c:if test="${ifUserClickedUpdateProfile == true}">
			<%@include file="billingInformation.jsp"%>
		</c:if>
		
		<c:if test="${ifUserClickedpurchaseHistory == true}">
			<%@include file="purchaseHistory.jsp"%>
		</c:if>

		<c:if test="${ifUserClickedbillingHistory == true}">
			<%@include file="billingHistory.jsp"%>
		</c:if>
		
		<c:if test="${ifUserClickedmyWishlist == true}">
			<%@include file="myWishlist.jsp"%>
		</c:if>
		
	</div>
</div>
