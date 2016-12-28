
<!-- Container -->
<br>
<br>
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>Filter</b>
					</div>
					<div class="panel-body"></div>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-3"></div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-body">Panel content</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  <br>
  <blockquote>
    <h2>Product Name</h2>
  </blockquote>-->

<!--
  <table class="table table-condensed" style="width:100px" >
     <tr>
      <th colspan="2"><img src="resource\image\3.png" width="430px"/></th>
     </tr>
     <tr>
      <th><img src="resource\image\3.png" width="100px"/></th>
      <th><img src="resource\image\3.png" width="100px"/></th>
      <th><img src="resource\image\3.png" width="100px"/></th>
      <th><img src="resource\image\3.png" width="100px"/></th>
     </tr>
     <tr style="margin:0 auto">
       <th><button type="button" class="btn btn-primary">View Demo</button></th>
       <th><button type="button" class="btn btn-warning">Add to Cart</button></th>
     </tr>
  </table>-->

<!-- End Of Container -->
<div class="container">
	<div class="row">
		<c:forEach items="${products}" var="product">

			<div class="col-md-3">

				<h3>${product.id}</h3>
				<h3>${product.name}</h3>

			</div>

		</c:forEach>
	</div>
</div>