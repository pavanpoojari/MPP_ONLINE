

<!-- ImageSlider -->
<div class="container-fliud">
	<div class="carousel slide" id="screenshot-carousel"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#screenshot-carousel" data-slide-to="0"
				class="active"></li>
			<li data-target="#screenshot-carousel" data-slide-to="1"></li>
			<li data-target="#screenshot-carousel" data-slide-to="2"></li>
			<li data-target="#screenshot-carousel" data-slide-to="3"></li>
			<li data-target="#screenshot-carousel" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="${images}/co/1.jpg" alt="1">
				<div class="carousel-caption">
					<h2>First image</h2>
					<h3>The Caption</h3>
				</div>
			</div>
			<div class="item">
				<img src="${images}/co/2.jpg" alt="2">
				<div class="carousel-caption">
					<h2>Second image</h2>
					<h3>The Caption</h3>
				</div>
			</div>
			<div class="item">
				<img src="${images}/co/3.jpg" alt="2">
				<div class="carousel-caption">
					<h2>Third image</h2>
					<h3>The Caption</h3>
				</div>
			</div>
			<div class="item">
				<img src="${images}/co/4.jpg" alt="2">
				<div class="carousel-caption">
					<h2>Fourth image</h2>
					<h3>The Caption</h3>
				</div>
			</div>
			<div class="item">
				<img src="${images}/co/5.jpg" alt="2">
				<div class="carousel-caption">
					<h2>5th image</h2>
					<h3>The Caption</h3>
				</div>
			</div>
		</div>
		<!--<a href="#screenshot-carousel" class="left carousel-control" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>

			<a href="#screenshot-carousel" class="right carousel-control" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>-->
	</div>
</div>
<!-- End Of ImageSlider -->
<!-- Contain -->
<!--<div class="col-lg-6">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
      </span>
    </div>-->
<div class="container">
	<h2 class="text-center">WEB-SITE&nbsp; TEMPLATES</h2>
	<hr>
	<c:forEach items="${products}" var="product">
		<!--Product-->
		<div class="col-sm-4 col-lg-4 col-md-5">
			<div class="thumbnail">
				<img src="${images}/product/${product.productId}.png" alt="" />
				<div class="caption">
					<h4 class="pull-right">&#8377; ${product.price}</h4>
					<h4>
						<a href="${contextRoot}/product/${product.productId}">${product.name}</a>
					</h4>
					<p>
						${product.description} <a target="_blank" href="">Test -
							http://test.com</a>.
					</p>
				</div>
				<div class="text-right"
					style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px">
					<a type="submit" class="btn btn-info" href="#"> <span
						class="glyphicon glyphicon-heart" aria-hidden="true"></span>
					</a> &nbsp; <a type="submit" class="btn btn-warning"
						href="${contextRoot}/user/cart/add/${product.productId}"> <span
						class="fa fa-cart-plus" aria-hidden="true"></span>
					</a>
				</div>
			</div>
		</div>
		<!--End Of Product-->
	</c:forEach>
</div>
<%-- 
<%@include file="./shared/totop.jsp"%> --%>