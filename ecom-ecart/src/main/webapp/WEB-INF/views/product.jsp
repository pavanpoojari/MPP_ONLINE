<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Container -->
<br>
<br>
<div class="container">
	<div class="row">
		<div class="col-md-5">

			<div class="panel panel-default"
				style="border-radius: 2px; box-shadow: 1px 1px 1px 1px #E4E4E4;">
				<div class="panel-body panel-info" style="padding: 0px">
					<img src="${images}/product/${product.productId}.png"
						class="view img-center" />
				</div>
				<div class="panel-footer">
					<div class="text-center">
						<button id="Bsize" style="border-radius: 2px" type="button"
							class="btn btn-primary">
							<span class="fa fa-eye" style="font-size: 18px"></span>&nbsp;
							View Demo
						</button>
						&nbsp;&nbsp;

						<c:if test="${not empty existingProduct }"></c:if>
						<c:choose>
							<c:when test="${existingProduct == true }">
								<button id="Bsize" style="border-radius: 2px" type="button"
									class="btn btn-warning">
									<span class="fa fa-cart-plus" style="font-size: 18px"></span>&nbsp;
									Go to Cart
								</button>
							</c:when>
							<c:otherwise>
								<button id="Bsize" style="border-radius: 2px" type="button"
									class="btn btn-warning">
									<span class="fa fa-cart-plus" style="font-size: 18px"></span>&nbsp;
									Add to Cart
								</button>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</div>
		</div>


		<div class="col-md-7">
			<div class="panel panel-default"
				style="border-radius: 0px; box-shadow: 1px 1px 1px 1px #E4E4E4;">
				<div class="panel-body panel-info" style="padding: 6px 1px 2px 0px;">
					<div class="col-md-12">
						<blockquote>${product.name}</blockquote>
					</div>

					<div class="col-md-12">
						<p>Programming Language Used :</p>
						<div class="col-md-12">
							<hr class="smalls">
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12 text-center">
							<div class="col-md-1"></div>
							<div class="col-md-2">
								<img src="${images}/bootstrap-logo.jpg" class="boots"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/HTML5.png" class="boots"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/CSS3.png" class="css3"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/javascript.png" class="html5"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/angular-icon.png" class="boots"
									style="padding: 3px" />
							</div>
						</div>
						<div class="col-md-12">
							<hr class="smalls">
						</div>
					</div>

					<div class="col-md-12">
						<p style="padding: 5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${product.description}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--End of Container-->
