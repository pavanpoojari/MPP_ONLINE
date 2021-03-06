
<div class="col-md-9">
	<div class="well">
		<div class="row">
			<form id="usereditFrom">
				<div class="col-md-12">
					<p style="font-size: 25px;">Edit Billing Info</p>
					<hr class="small">
				</div>

				<div class="col-md-12">
					<div class="col-md-12">
						<p class="well" style="font-size: 22px; padding: 5px">
							&nbsp; <span class="fa fa-minus"></span>&nbsp; Change your
							Profile Picture
						</p>
					</div>
					<div class="col-md-1"></div>

					<div class="col-md-10">
						<div class="form-group">
							<label for="profile"> Profile Picture</label>
							<div class="input-group">
								<span class="input-group-addon"><span
									class="fa fa-user-circle-o"></span> </span> <input type="file"
									id="profile" name="profile" class="form-control">
							</div>
						</div>
					</div>

				</div>

				<div class="col-md-12">
					<div class="col-md-12">
						<p class="well" style="font-size: 22px; padding: 5px">
							&nbsp; <span class="fa fa-minus"></span>&nbsp; Name and Email
							Address
						</p>
					</div>
					<div class="col-md-1"></div>

					<div class="col-md-10">

						<div class="form-group">
							<label for="fullName"> Full Name ( First & Last Name)</label>
							<div class="input-group form-control">
								<div class="col-md-6 pad4">
									<input type="text" class="form-control" id="firstName"
										name="firstName" placeholder="Enter First Name" />
								</div>

								<div class="col-md-6 pad4">
									<input type="text" class="form-control" id="lastName"
										name="lastName" placeholder="Enter Last Name" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email"> Email Address </label>
							<div class="input-group">
								<span class="input-group-addon"><span
									class="fa fa-envelope"></span> </span> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Enter Email Address" required="required" />
							</div>
						</div>

					</div>

				</div>


				<div class="col-md-12">
					<div class="col-md-12">
						<p class="well" style="font-size: 22px; padding: 5px">
							&nbsp; <span class="fa fa-minus"></span>&nbsp; Billing Address
						</p>
					</div>
					<div class="col-md-1"></div>

					<div class="col-md-10">

						<div class="form-group">
							<label for="address"> Address</label>
							<div class="input-group">
								<span class="input-group-addon"><span
									class="fa fa-address-book-o"></span> </span> <input type="text"
									class="form-control" id="address" name="address"
									placeholder="Enter Address" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="city"> City </label>
							<div class="input-group">
								<span class="input-group-addon"><span
									class="fa fa-map-marker"></span> </span> <input type="text"
									class="form-control" id="city" name="city"
									placeholder="Enter City" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="country"> Country </label>
							<div class="input-group">
								<span class="input-group-addon"><span class="fa fa-map-o"></span>
								</span> <select id="country" name="country" class="form-control"
									required="required">
									<option value="" selected="">Choose One:</option>
									<option value=""></option>
									<option value=""></option>
									<option value=""></option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="zip"> Zip / Pincode </label>
							<div class="input-group">
								<span class="input-group-addon"><span
									class="fa fa-file-zip-o"></span> </span> <input type="text"
									class="form-control" id="zip" name="zip"
									placeholder="Enter Zip / Pincode" required="required" />
							</div>
						</div>

					</div>

				</div>

				<div class="col-md-12">
					<div class="col-md-12">
						<p class="well" style="font-size: 22px; padding: 5px">
							&nbsp; <span class="fa fa-minus"></span>&nbsp; Phone Number
						</p>
					</div>
					<div class="col-md-1"></div>

					<div class="col-md-10">

						<div class="form-group">
							<label for="contact"> Billing Phone Number</label>
							<div class="input-group">
								<span class="input-group-addon"><span class="fa fa-phone"></span>
								</span> <input type="text" class="form-control" id="contact"
									name="contact" placeholder="Enter Phone Number"
									required="required" />
							</div>
						</div>

						<div class="">
							<div class="well-sm">
								<p class="" aria-label="...">
									<input type="checkbox" id="terms" name="terms" aria-label="...">&nbsp;
									I , agree with the Terms & Condition
								</p>
							</div>
						</div>

					</div>

					<div class="col-md-12 text-center">
						<button id="B3size" type="submit" class="btn btn-primary"
							id="btnSignup">Save</button>
						&nbsp;
						<button id="B3size" type="reset" class="btn btn-primary"
							id="btnReset">Reset</button>
					</div>

				</div>

			</form>
		</div>
	</div>
</div>