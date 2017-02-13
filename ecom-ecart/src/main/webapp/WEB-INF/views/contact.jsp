<!-- Contain -->
<div class="container">
	<h1 class="text-center">
		Contact Us<small>&nbsp;Feel free to contact us</small>
	</h1>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="well well-sm">
					<form>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Name</label> <input type="text"
										class="form-control" id="name" placeholder="Enter Full Name"
										required="required" />
								</div>
								<div class="form-group">
									<label for="email"> Email Address</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="email" class="form-control" id="email"
											placeholder="Enter email" required="required" />
									</div>
								</div>
								<div class="form-group">
									<label for="subject"> Subject</label> <select id="subject"
										name="subject" class="form-control" required="required">
										<option value="na" selected="">Choose One:</option>
										<option value="service">General Customer Service</option>
										<option value="suggestions">Suggestions</option>
										<option value="product">Product Support</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Message</label>
									<textarea name="message" id="message" class="form-control"
										rows="9" cols="25" required="required" placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12 text-center">
								<button type="submit"
									class="col-md-12 col-sm-12 col-xs-12 btn btn-primary"
									id="btnContactUs">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4">
				<div>
					<form class="well">
						<legend>
							<span class="glyphicon glyphicon-globe"></span>&nbsp;&nbsp;Address
						</legend>
						<address>
							<hr class="smalls">
							<strong>WebTemp, Inc.</strong><br> xyz, xyz<br> xyz,
							xyz<br> xyz, xyz<br> <abbr title="Phone"> P:</abbr>
							(123) 456-7890
						</address>
						<address>
							<hr class="smalls">
							<strong>Pavan Poojary</strong><br> <a href="mailto:#">pavan.poojary@webtemp.com</a>
						</address>
					</form>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="well" style="padding: 0px">
							<div id="map" style="width: 100%; height: 420px;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
	// code for google map api
	function initialize() {
		var mapCanvas = document.getElementById('map');
		var myLatLng = new google.maps.LatLng(19.165028, 72.994819);
		var mapOptions = {
			center : myLatLng,
			zoom : 17,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(mapCanvas, mapOptions)

		var marker = new google.maps.Marker({
			position : myLatLng,
			title : "Web Temp"
		});
		marker.setMap(map);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
<!-- End Of Contain -->