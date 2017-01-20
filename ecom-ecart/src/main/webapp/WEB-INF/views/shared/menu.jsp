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
			<a href="${contextRoot}/index" class="navbar-brand"># WEBTEMP #</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav ">
				<li id="index"><a href="${contextRoot}/index">Home</a>
				<li id="about"><a href="${contextRoot}/about">About Us</a>
				<li id="contact"><a href="${contextRoot}/contact">Contact
						Us</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="isAnonymous()">
					<li id="signup"><a href="${contextRoot}/signup"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>

					<li id="login"><a href="${contextRoot}/login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</sec:authorize>

				<sec:authorize access="hasAuthority('Role_User')">
					<li id="cart"><a href="${contextRoot}/cart"
						class="fa fa-shopping-cart">&nbsp;&nbsp;Cart <span
							class="badge">2</span>
					</a></li>
				</sec:authorize>

				<sec:authorize access="hasAuthority('Role_Admin')">
					<li id="admin"><a href="${contextRoot}/admin/panels"><span
							class="fa fa-id-badge"></span> Admin </a></li>
				</sec:authorize>

				<sec:authorize access="hasAuthority('Role_User')">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="${contextRoot}/user"><span
							class="fa fa-id-badge"></span>&nbsp;&nbsp;User <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#"><span class=""></span>&nbsp;&nbsp;User
									Profile</a></li>
							<li><a href="#"><span class=""></span>&nbsp;&nbsp;Purchased
									Histroy</a></li>
							<li><a href="#"><span class=""></span>&nbsp;&nbsp;Billing
									Histroy</a></li>
							<li><a href="#"><span class=""></span>&nbsp;&nbsp;My
									Wishlist</a></li>
						</ul></li>
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