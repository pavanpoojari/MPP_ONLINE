<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- NavBar -->
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="${contextRoot}/" class="navbar-brand"># WEBTEMP #</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav ">
				<li id="index"><a href="${contextRoot}/">Home</a>
				<li id="about"><a href="${contextRoot}/about">About Us</a>
				<li id="contact"><a href="${contextRoot}/contact">Contact
						Us</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<li id="allProduct"><a href="${contextRoot}/product/all"><span
						class=""></span>All Products</a></li>

				<sec:authorize access="isAnonymous()">

					<li id="signup"><a href="register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>

					<li id="login"><a href="${contextRoot}/login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>

				</sec:authorize>

				<sec:authorize access="hasAuthority('USER')">
					<li id="cart"><a href="${contextRoot}/cart"
						class="fa fa-shopping-cart">&nbsp;&nbsp;Cart <span
							class="badge">2</span>
					</a></li>
				</sec:authorize>

				<sec:authorize access="hasAuthority('ADMIN')">
					<li id="admin"><a href="${contextRoot}/admin/AddProduct"><span
							class="fa fa-id-badge"></span> Admin </a></li>
				</sec:authorize>

				<sec:authorize access="hasAuthority('USER')">
					<li id=""><a href="${contextRoot}/user/userprofile"><span
							class="fa fa-id-badge"></span> User </a></li>
				</sec:authorize>

				<sec:authorize access="isAuthenticated()">
					<li><a href="${contextRoot}/logout" class=""><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</sec:authorize>

			</ul>

			<form class="navbar-form navbar-left">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-primary" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</form>

		</div>
	</div>
</nav>
<!-- End Of NavBar -->