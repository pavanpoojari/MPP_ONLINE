<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Container -->
<br>
<br>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<!--Search-->
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search by name ...."> <span
							class="input-group-btn">
							<button class="btn btn-primary" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
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
								<option value="Computers&Internet">Computers & Internet</option>
								<option value="Entertainment&Games">Entertainment &
									Games</option>
								<option value="Medical">Medical(Healthcare)</option>
							</select>
						</div>
						<div class="form-group">
							<label for="subject">By Price</label> <select id="subject"
								name="subject" class="form-control" required="required">
								<option value="na" selected="">Choose One:</option>
								<option value="0-1000">0 - 1000</option>
								<option value="1000-2000">1000 - 2000</option>
								<option value="2000-3000">2000 - 3000</option>
								<option value="3000-4000">3000 - 4000</option>
								<option value="4000-5000">4000 - 5000</option>
							</select>
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
						<c:forEach items="${products}" var="product">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="col-md-2" style="padding: 0px;">
										<img src="${images}/product/${product.productId}.png" alt="" width="120px" height="120px" />
									</div>
									<div class="col-md-6" style="padding: 0px;">
										${product.name}<br />
										<div class="text-muted">${product.description}</div>
									</div>
									<div class="col-md-2" style="padding: 0px;">
										<div class="text-center">
											<h4>&#8377; ${product.price}</h4>
										</div>
									</div>
									<div class="col-md-2 text-right">
										<button type="submit" class="btn btn-info" id="">
											<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
										</button>
										<br> <br>
										<button type="submit" class="btn btn-warning" id="">
											<span class="fa fa-shopping-cart" aria-hidden="true"></span>
										</button>
									</div>
								</div>
							</div>
						</c:forEach>
						<!--End Of list-->
					</div>
					<!--End Of list View-->

					<!--Grid View-->
					<div id="grid" class="tab-pane fade">

						<c:forEach items="${products}" var="product">
							<!--Product-->
							<div class="col-sm-4 col-lg-4 col-md-5">
								<div class="thumbnail">
									<img src="${images}/product/${product.productId}.png" alt="" />
									<div class="caption">
										<h4 class="pull-right">&#8377; ${product.price}</h4>
										<h4>
											<a href="#">${product.name}</a>
										</h4>
										<p>
											${product.description} <a
												target="_blank" href="">Test - http://test.com</a>.
										</p>
									</div>
									<div class="text-right"
										style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px">
										<button type="submit" class="btn btn-info" id="">
											<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
										</button>
										&nbsp;
										<button type="submit" class="btn btn-warning" id="">
											<span class="fa fa-shopping-cart" aria-hidden="true"></span>
										</button>
									</div>
								</div>
							</div>
							<!--End Of Product-->
						</c:forEach>
					</div>
					<!--End Of Grid View-->
				</div>
			</div>
		</div>
		<!--End Of div col-md-9-->
	</div>
</div>