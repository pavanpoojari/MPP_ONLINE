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
				<li id="signup"><a href="${contextRoot}/signup"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li id="login"><a href="${contextRoot}/login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li id="cart"><a href="${contextRoot}/cart"
					class="fa fa-shopping-cart">&nbsp;&nbsp;Cart <span
						class="badge">2</span>
				</a></li>
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