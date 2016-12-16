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
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<!--<link rel="stylesheet" href="$${css}/bootstrap-theme.min.css">-->
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

			<a href="#screenshot-carousel" class="left carousel-control"
				data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>

			<a href="#screenshot-carousel" class="right carousel-control"
				data-slide="next"><span
				class="glyphicon glyphicon-chevron-right"></span></a>

		</div>
	</div>
	<!-- End Of ImageSlider -->
	<!-- Contain -->
	<div class="container text-center">
		<div class="tab-content">
			<c:if test="">
				<div class="tab-pane fade in active" id="Home">
					<h2>Home</h2>
					<hr>
					<!-- Custom content -->
					<div class="container text-center">
						<div class="row">
							<div class="col-sm-6 col-md-3">
								<div class="thumbnail">
									<img src="${images}/1.png" alt="...">
									<div class="caption">
										<hr>
										<h3>Thumbnail label</h3>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. .</p>
										<hr>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="thumbnail">
									<img src="${images}/1.png" alt="...">
									<div class="caption">
										<hr>
										<h3>Thumbnail label</h3>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. .</p>
										<hr>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="thumbnail">
									<img src="${images}/1.png" alt="...">
									<div class="caption">
										<hr>
										<h3>Thumbnail label</h3>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. .</p>
										<hr>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="thumbnail">
									<img src="${images}/1.png" alt="...">
									<div class="caption">
										<hr>
										<h3>Thumbnail label</h3>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. .</p>
										<hr>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="thumbnail">
									<img src="${images}/1.png" alt="...">
									<div class="caption">
										<hr>
										<h3>Thumbnail label</h3>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. .</p>
										<hr>
										<!--<hr>
                  <p><a href="#" class="btn btn-primary" role="button">Button</a> 
                  <a href="#" class="btn btn-default" role="button">Button</a></p>-->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End Of Custom content -->
				</div>
			</c:if>

			<div class="tab-pane fade" id="About_Us">
				<h2>About Us</h2>
				<hr>
				<b>TEXT HERE</b>
			</div>

			<div class="tab-pane fade" id="Contact_Us">
				<h2>Contact Us</h2>
				<hr>
				<b>TEXT HERE</b>
			</div>
			<hr>
		</div>
	</div>
	<div id="Barrow" class="container-fliud text-right">
		<a class="btn btn-default up-arrow" href="#mypage"
			data-toggle="tooltip" title="TO TOP"> <span
			class="glyphicon glyphicon-chevron-up"></span>
		</a>
	</div>
	<!-- End Of Contain -->
	<!-- Footer -->
	<footer>
		<div class="container text-left">
			<!--<a class="up-arrow" href="#mypage" data-toggle="tooltip" title="TO TOP">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </a><br>-->
			<p>
				&copy;&nbsp;Pavan Poojary&nbsp;<a href="#pavanpoojary"
					data-toggle="tooltip" title="Visit Site">
					&nbsp;&nbsp;&nbsp;www.pavanpoojary.in</a>
			</p>
		</div>
	</footer>
	<!-- End Of Footer -->

	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.min.js"></script>
</body>
</html>
