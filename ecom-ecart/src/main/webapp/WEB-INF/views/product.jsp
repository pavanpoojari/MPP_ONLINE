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
							data-toggle="modal" data-target="#myModal"
							class="btn btn-primary">
							<span class="fa fa-eye" style="font-size: 18px"></span>&nbsp;
							View Demo
						</button>
						&nbsp;&nbsp;

						<c:if test="${not empty existingProduct }"></c:if>
						<c:choose>
							<c:when test="${existingProduct == true }">
								<a id="Bsize" style="border-radius: 2px" type="button"
									class="btn btn-warning" href="${contextRoot}/user/cart/"> <span
									class="fa fa-shopping-cart" style="font-size: 18px"></span>&nbsp;
									Go to Cart
								</a>
							</c:when>
							<c:otherwise>
								<a id="Bsize" style="border-radius: 2px" type="button"
									class="btn btn-warning"
									href="${contextRoot}/user/cart/add/${product.productId}"> <span
									class="fa fa-cart-plus" style="font-size: 18px"></span>&nbsp;
									Add to Cart
								</a>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</div>

			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-lg">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header modal-header-success">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">${product.name}</h4>
						</div>
						<div class="modal-body">
							<div class="panel panel-default">
								<div class="panel-body"
									style="padding: 0px; border-radius: 0px; box-shadow: 1px 1px 1px 1px #E4E4E4;">
									<img src="${images}/product/${product.productId}.png" class="view" />
								</div>
							</div>

							<div class="">
								<div class="row">
									<div class="col-md-12">
										<!-- Nav tabs -->
										<div class="card">
											<ul class="nav nav-tabs" role="tablist">
												<li role="presentation"><a href="#pages"
													aria-controls="pages" role="tab" data-toggle="tab"><span
														class="fa fa-file-code-o" aria-hidden="true"></span>&nbsp;
														Pages</a></li>
												<li role="presentation"><a href="#about"
													aria-controls="about" role="tab" data-toggle="tab"><span
														class="fa fa-info-circle" aria-hidden="true"></span>&nbsp;
														About</a></li>

											</ul>
											<!-- Tab panes -->
											<div class="tab-content">
												<div role="tabpanel" class="tab-pane active" id="pages">
													Pages</div>
												<div role="tabpanel" class="tab-pane" id="about">
													About</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
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
								<img src="${images}/bootstrap-logo.jpg"
									class="boots parentimage" style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/HTML5.png" class="boots parentimage"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/CSS3.png" class="css3 parentimage"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/javascript.png" class="html5 parentimage"
									style="padding: 3px" />
							</div>
							<div class="col-md-2">
								<img src="${images}/angular-icon.png" class="boots parentimage"
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
