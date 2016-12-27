<!-- Container -->
<div class="container">
	<h1 class="text-center">Product List</h1>
	<hr>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint,
		explicabo dolores ipsam aliquam inventore corrupti eveniet quisquam
		quod totam laudantium repudiandae obcaecati ea consectetur debitis
		velit facere nisi expedita vel?</p>

	<div class="row">
		<c:forEach items="${products}" var="product">

			<div class="col-md-3">

				<h3>${product.id}</h3>
				<h3>${product.name}</h3>

			</div>

		</c:forEach>
	</div>
</div>

<!--End of Container-->