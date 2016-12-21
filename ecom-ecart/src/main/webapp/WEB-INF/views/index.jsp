<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url value="/resources/css" var="css" />
<s:url value="/resources/js" var="js" />
<s:url value="/resources/images" var="images" />
<c:set value="${pageContext.request.contextPath}" var="contextRoot" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="WEBTEMP">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WEBTEMP - ${title}</title>
<link rel="stylesheet" href="${css}/bootstrap-flatly.css">
<!--<link rel="stylesheet" href="${css}/bootstrap-theme.min.css">-->
<link rel="stylesheet" href="${css}/lstyle.css">
</head>



<body id="mypage" data-spy="scroll" data-target="#my-navbar">
	<%@include file="./shared/menu.jsp"%>
	<!-- ImageSlider -->
	<div class="container-fliud">
		<div class="carousel slide" id="screenshot-carousel"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#screenshot-carousel" data-slide-to="0"
					class="active"></li>
				<li data-target="#screenshot-carousel" data-slide-to="1"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="${images}/1.jpg" alt="1">
					<div class="carousel-caption">
						<h2>First image</h2>
						<h3>The Caption</h3>
					</div>
				</div>
				<div class="item">
					<img src="${images}/2.jpg" alt="2">
					<div class="carousel-caption">
						<h2>Second image</h2>
						<h3>The Caption</h3>
					</div>
				</div>
			</div>
			<!--
			<a href="#screenshot-carousel" class="left carousel-control" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>

			<a href="#screenshot-carousel" class="right carousel-control" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      -->
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
		<h2 class="text-center">Home</h2>
		<hr>
		<!-- Custom content -->
		<div class="container-fliud">
			<div class="row">
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="" />
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="">
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="">
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="">
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">13 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="" />
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="" />
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="" />
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-4">
					<div class="thumbnail">
						<img src="${images}/1.png" alt="" />
						<div class="caption">
							<h4 class="pull-right">&#8377;150.99</h4>
							<h4>
								<a href="#">First Product</a>
							</h4>
							<p>
								See more snippets like this online store item at <a
									target="_blank" href="">Test - http://test.com</a>.
							</p>
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Of Custom content -->
		<hr>
	</div>

	<div id="Barrow" class="container-fliud text-right">
		<a class="btn btn-default up-arrow" href="#mypage"
			data-toggle="tooltip" title="TO TOP"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>
	</div>
	<!-- End Of Contain -->
	
		<%@include file="./shared/footer.jsp"%>

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
</body>
</html>
