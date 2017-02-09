<!-- Container -->
<br>
<br>
<div class="container">
	<div class="row">
		<div id="Sbox" class="col-md-4">
			<img src="${images}/product/${product.productId}.png" width="360px" />
			<hr>
			<div class="text-center">
				<button id="Bsize" type="button" class="btn btn-primary">View
					Demo</button>
				&nbsp;&nbsp;
				<button id="Bsize" type="button" class="btn btn-warning">Add
					to Cart</button>
			</div>
		</div>
		<div class="col-md-7">
			<blockquote>${product.name}</blockquote>
		</div>
		<div class="col-md-7">
			<p>${product.description}</p>
		</div>
	</div>
	<c:if test = "${not empty existingProduct }"></c:if>
	<c:choose>
		<c:when test="${existingProduct == true }">
			<button class="btn btn-default">Go to
				Cart</button>
		</c:when>
		<c:otherwise>
			<button class="btn btn-default">Add to Cart</button>
		</c:otherwise>
	</c:choose>


</div>
<!--End of Container-->