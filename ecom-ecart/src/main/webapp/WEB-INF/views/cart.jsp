<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- Contain -->
<br>
<br>
<div class="container table-responsive">
	<div class="panel panel-default">
		<div class="panel-heading text-center" id="fs">CART SUMMARY</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			Cart&nbsp; <span class="label label-info">${cart.noofcartitems}</span>
		</div>
		<div class="panel-body">
			
				
					<table class="table table-hover">

						<thead class="text-center">
							<tr>
								<td colspan="2">ITEM</td>
								<td>PRICE</td>
								<td>SUBTOTAL</td>
								<td></td>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${cartItems}" var="cartItem">
								<tr>
									<td class="col-md-1">
										<div class="col-md-3" style="padding: 0px;">
											<img
												src="${images}/product/${cartItem.product.productId}.png"
												alt="" width="120px" height="120px" />
										</div>
									</td>
									<td class="col-md-6">
										<div class="col-md-12">
											${cartItem.product.name}<br />
											<div class="text-muted">${cartItem.product.description}</div>
										</div>
									</td>
									<td class="col-md-2">
										<div class="text-center">&nbsp;&nbsp; &#8377;
											${cartItem.price} &nbsp;&nbsp;</div>
									</td>
									<td class="col-md-1">
										<div class="text-center">&nbsp;&nbsp; &#8377;
											${cartItem.price} &nbsp;&nbsp;</div>
									</td>
									<td class="col-md-2">
										<div class="col-md-4">
											<button type="button" class="btn btn-info btn-sm"
												data-toggle="popover" title="Add To Wish List">
												<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
											</button>
										</div>
										<div class="col-md-6">
											<a type="button" class="btn btn-danger btn-sm"
												data-toggle="popover" title="Remove" href="${contextRoot}/user/cart/delete/${cartItem.id}">
												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											</a>
										</div>
									</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
		</div>
		
		<div class="panel-footer">
			<b style="padding-left: 19.4cm;">ORDER TOTAL
				:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#8377;
				${cart.total}</b>
		</div>
	</div>
</div>

<div class="container">
	<div class="panel panel-default">
		<div class="panel-heading">
			<div class="text-right">
				<button type="submit" class="btn btn-default" id="">
					<span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>&nbsp;
					Continue Shopping
				</button>
				&nbsp;
				<button type="submit" class="btn btn-warning" id="">
					<span class="fa fa-credit-card-alt" aria-hidden="true"></span>&nbsp;
					Checkout Now
				</button>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">

		<div class="col-sm-2 col-md-2">
			<img src="${images}/1.png" alt="..." width="140px" height="140px">
		</div>
		<div class="col-sm-2 col-md-2 caption" style="padding: 0px;">
			24/7 Free Support<br />
			<div class="text-muted">Your questions will be handled promptly
				by our support team.</div>
		</div>

		<div class="col-sm-2 col-md-2">
			<img src="${images}/1.png" alt="..." width="140px" height="140px">
		</div>
		<div class="col-sm-2 col-md-2 caption" style="padding: 0px;">
			Stock Photos Included<br />
			<div class="text-muted">You get 7-15 hi-res stock photos &
				images for free life-time usage.</div>
		</div>

		<div class="col-sm-2 col-md-2">
			<img src="${images}/1.png" alt="..." width="140px" height="140px">
		</div>
		<div class="col-sm-2 col-md-2 caption" style="padding: 0px;">
			Satisfaction Guarantee<br />
			<div class="text-muted">You will be completely happy with our
				products and services.</div>
		</div>


	</div>
</div>
<!-- End Of Contain -->