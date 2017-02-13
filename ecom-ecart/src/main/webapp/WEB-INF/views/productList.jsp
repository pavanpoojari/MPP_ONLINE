<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="${js}/angular.js"></script>
<script src="${js}/productCon.js"></script>

<!-- Container -->
<br>
<br>
<div class="container" ng-app="myApp">
	<div ng-controller="ProductList">
		<div class="row">
			<div class="col-md-12">
				<!--Search-->
				<div class="panel panel-default">
					<div class="panel-heading sha">
						<input type="text" class="form-control"
							placeholder="Search by name ...." ng-model="searchTab.name">
						<!-- <div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search by name ...." ng-model="searchTab.name">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div> -->
					</div>
				</div>
				<!--End Of Search-->
			</div>
			<div class="col-md-3">
				<div class="">
					<!--Filter panel-->
					<div class="panel panel-default">
						<div class="panel-heading">
							<b>Filter</b>
						</div>
						<div class="panel-body">
							<div class="form-group">
								<!--Drop-Down-->
								<label for="subject">By Categories</label> <select id="subject"
									name="subject" class="form-control" required="required">
									<option value="na" selected="">Choose One:</option>
									<option value="Art&Culture">Art & Culture</option>
									<option value="Electronics">Electronics</option>
									<option value="Business&Service">Business & Service</option>
									<option value="Animal&Pets">Animal & Pets</option>
									<option value="Car&Motorcycles">Car & Motorcycles</option>
									<option value="Computers&Internet">Computers &
										Internet</option>
									<option value="Entertainment&Games">Entertainment &
										Games</option>
									<option value="Medical">Medical(Healthcare)</option>
								</select>
							</div>
							<div>
								<hr class="smalls">
							</div>
							<div class="form-group">
								<label for="price">By Price</label>
								<ul
									class="nav nav-pills nav-stacked rad nav-pills-stacked-example">
									<li><a href="#" class="">Low to High</a></li>
									<li><a href="#" class="">High to Low</a></li>
								</ul>
							</div>
							<div>
								<hr class="smalls">
							</div>
							<!--End Of Drop-Down-->
						</div>
					</div>
					<!--End Of Filter panel-->
				</div>
			</div>

			<!--div col-md-9-->
			<div class="col-md-9">
				<div class="">
					<div class="panel panel-default">
						<div class="panel-heading" style="font-size: 18px">
							<a data-toggle="tab" href="#list" data-toggle="tooltip"
								data-placement="top" title="List View"><span
								class="fa fa-th-list"></span></a>&nbsp; <a data-toggle="tab"
								href="#grid" data-toggle="tooltip" data-placement="top"
								title="Grid View"><span class="fa fa-th-large"></span> </a>
						</div>
					</div>

					<div class="tab-content">

						<!--End Of list View-->
						<div id="list" class="tab-pane fade in active">
							<!--List-->

							<div ng-repeat="product in products | filter:searchTab">
								<%-- <c:forEach items="${products}" var="product"> --%>
								<div class="panel panel-default">
									<div class="panel-body">
										<div class="col-md-2" style="padding: 0px;">
											<img ng-src="${images}/product/{{product.productId}}.png"
												alt="" width="120px" height="120px" />
										</div>
										<div class="col-md-6" style="padding: 0px;">
											<a ng-href="${contextRoot}/product/{{product.productId}}">{{product.name}}</a><br />
											<div class="text-muted">{{product.description}}</div>
										</div>
										<div class="col-md-2" style="padding: 0px;">
											<div class="text-center">
												<h4>&#8377; {{product.price}}</h4>
											</div>
										</div>
										<div class="col-md-2 text-center">
											<div class="col-md-12">
												<a type="submit" class="btn btn-info" href="#"><span
													class="fa fa-heart" aria-hidden="true"></span></a>
											</div>
											<div class="col-md-12">
												<br> <a type="submit" class="btn btn-warning"
													href="${contextRoot}/user/cart/add/{{product.productId}}"><span
													class="fa fa-cart-plus" aria-hidden="true"></span></a>
											</div>
										</div>

										<%-- <div class="col-md-2 text-right">
											&nbsp;<a class="btn btn-info" href="#"> <span
												class="glyphicon glyphicon-heart" aria-hidden="true"></span>
											</a> <br> <br> <a class="btn btn-warning"
												href="${contextRoot}/user/cart/add/{{product.productId}}">
												<span class="fa fa-shopping-cart" aria-hidden="true"></span>
											</a>
										</div> --%>
									</div>
								</div>
								<%-- </c:forEach> --%>
							</div>
							<!--End Of list-->
						</div>
						<!--End Of list View-->

						<!--Grid View-->
						<div id="grid" class="tab-pane fade">

							<div ng-repeat="product in products | filter:searchTab">
								<%-- <c:forEach items="${products}" var="product"> --%>
								<!--Product-->
								<div class="col-sm-4 col-lg-4 col-md-5">
									<div class="thumbnail">
										<img ng-src="${images}/product/{{product.productId}}.png"
											alt="" />
										<div class="caption">
											<h4 class="pull-right">&#8377; {{product.price}}</h4>
											<h4>
												<a ng-href="${contextRoot}/product/{{product.productId}}">{{product.name}}</a>
											</h4>
											<p>{{product.description}} .</p>
										</div>
										<div class="text-right"
											style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px">
											<a type="submit" class="btn btn-info" href="#"> <span
												class="glyphicon glyphicon-heart" aria-hidden="true"></span>
											</a> &nbsp; <a type="submit" class="btn btn-warning"
												href="${contextRoot}/user/cart/add/{{product.productId}}">
												<span class="fa fa-cart-plus" aria-hidden="true"></span>
											</a>
										</div>
									</div>
								</div>
								<!--End Of Product-->
								<%-- </c:forEach> --%>
							</div>
						</div>
						<!--End Of Grid View-->
					</div>
				</div>
			</div>
			<!--End Of div col-md-9-->
		</div>
	</div>
</div>