$(document)
		.ready(
				function() {

					$('#loginForm').validate(
							{
								rules : {
									username : {
										required : true
									},
									password : {
										required : true
									}
								},
								messages : {
									username : {
										required : "Please, Provide User Name"
									},
									password : {
										required : "Please, Provide Password"
									}
								},
								showErrors : function(errorMap, errorList) {

									$.each(this.successList, function(index,
											value) {
										$('#' + value.id + '').popover(
												'destroy');
									});

									$.each(errorList, function(index, value) {
										$('#' + value.element.id + '').attr(
												'data-content', value.message)
												.popover({
													placement : 'left',
													trigger : 'manual',
													delay : {
														show : 500,
														hide : 5000
													}
												}).popover('show');

									});

								}
							});

					$('#signForm')
							.validate(
									{
										rules : {
											uname : {
												minlength : 3,
												maxlength : 15,
												required : true
											},
											password : {
												minlength : 3,
												maxlength : 15,
												required : true
											},
											confirmPassword : {
												minlength : 3,
												maxlength : 15,
												equalTo : '#password',
												required : true
											},
											emailid : {
												required : true
											},
											gender : {
												required : true
											},
											phonenumber : {
												required : true,
												minlength : 9,
												maxlength : 10,
												tel : true
											},
											terms : {
												required : true
											}
										},
										messages : {
											uname : {
												required : "Please, Provide User Name"
											},
											password : {
												required : "Please, Provide Password",
												minlength : "Password Must Contain above 9 Digit",
													minlength : "Password Must Contain Atleast 10 Digit"
											},
											confirmPassword : {
												required : "Please, Enter Password Same as Above",
												minlength : "Password Must Contain Atleast 3 Charachters",
												equalTo : "Password Doesn't Match"
											},
											email : {
												required : "Please, Provide Email ID",
												email : "Please, Provide a Valid Email ID"
											},
											gender : {
												required : "Please, Select Gender"
											},
											phonenumber : {
												required : "Please, Provide Mobile Number",
												tel : "Please, Provide a valid Mobile Number"
											},
											terms : {
												required : 'Please, Accept the terms and conditions'
											}
										},

										showErrors : function(errorMap,
												errorList) {

											$.each(this.successList, function(
													index, value) {
												$('#' + value.id + '').popover(
														'destroy');
											});

											$.each(errorList, function(index,
													value) {

												$('#' + value.element.id + '')
														.attr('data-content',
																value.message)
														.popover({
															placement : 'left',
															trigger : 'manual',
															delay : {
																show : 500,
																hide : 5000
															}
														}).popover('show');

											});

										}
									});

					$('#usereditFrom')
							.validate(
									{
										rules : {
											firstName : {
												required : true
											},
											lastName : {
												required : true
											},
											email : {
												required : true
											},
											address : {
												required : true
											},
											city : {
												required : true
											},
											country : {
												required : true
											},
											zip : {
												required : true
											},
											contact : {
												required : true,
												maxlength : 10,
												tel : true
											},
											terms : {
												required : true
											}
										},
										messages : {
											firstName : {
												required : "Please, Provide First Name"
											},
											lastName : {
												required : "Please, Provide Last Name"
											},
											email : {
												required : "Please, Provide Email ID",
												email : "Please, Provide a Valid Email ID"
											},
											address : {
												required : "Please, Provide your proper Address"
											},
											city : {
												required : "Please, Provide your City"
											},
											country : {
												required : "Please, Provide your Country"
											},
											zip : {
												required : "Please, Provide your Zip Code"
											},
											contact : {
												required : "Please, Provide Billing Mobile Number",
												tel : "Please, Provide a valid Billing Mobile Number"
											},
											terms : {
												required : 'Please, Accept the terms and conditions'
											}
										},
										showErrors : function(errorMap,
												errorList) {

											$.each(this.successList, function(
													index, value) {
												$('#' + value.id + '').popover(
														'destroy');
											});

											$
													.each(
															errorList,
															function(index,
																	value) {

																$(
																		'#'
																				+ value.element.id
																				+ '')
																		.attr(
																				'data-content',
																				value.message)
																		.popover(
																				{
																					placement : 'bottom',
																					trigger : 'manual',
																					delay : {
																						show : 500,
																						hide : 5000
																					}
																				})
																		.popover(
																				'show');

															});

										}
									});

					$('#categoryForm')
							.validate(
									{
										rules : {
											name : {
												required : true
											},
											description : {
												minlength : 5,
												maxlength : 300,
												required : true
											}
										},
										messages : {
											name : {
												required : "Please, Provide Category Name"
											},
											description : {
												required : "Please, Provide Description",
												maxlength : "Description Must Contain Atleast 300 Charachters",
												minlength : "Description Must Contain Atleast 5 Charachters"
											}
										},
										showErrors : function(errorMap,
												errorList) {

											$.each(this.successList, function(
													index, value) {
												$('#' + value.id + '').popover(
														'destroy');
											});

											$
													.each(
															errorList,
															function(index,
																	value) {

																$(
																		'#'
																				+ value.element.id
																				+ '')
																		.attr(
																				'data-content',
																				value.message)
																		.popover(
																				{
																					placement : 'bottom',
																					trigger : 'manual',
																					delay : {
																						show : 500,
																						hide : 5000
																					}
																				})
																		.popover(
																				'show');

															});

										}
									});

					$('#developerForm')
							.validate(
									{
										rules : {
											name : {
												required : true
											},
											phonenumber : {
												required : true,
												maxlength : 10,
												tel : true
											},
											email : {
												required : true
											}
										},
										messages : {
											name : {
												required : "Please, Provide Developer Name"
											},
											phonenumber : {
												required : "Please, Provide Mobile Number",
												tel : "Please, Provide a valid Mobile Number"
											},
											email : {
												required : "Please, Provide Email ID",
												email : "Please, Provide a Valid Email ID"
											}
										},
										showErrors : function(errorMap,
												errorList) {

											$.each(this.successList, function(
													index, value) {
												$('#' + value.id + '').popover(
														'destroy');
											});

											$
													.each(
															errorList,
															function(index,
																	value) {

																$(
																		'#'
																				+ value.element.id
																				+ '')
																		.attr(
																				'data-content',
																				value.message)
																		.popover(
																				{
																					placement : 'bottom',
																					trigger : 'manual',
																					delay : {
																						show : 500,
																						hide : 5000
																					}
																				})
																		.popover(
																				'show');

															});

										}
									});

					$('#productForm')
							.validate(
									{
										rules : {
											name : {
												required : true
											},
											category : {
												required : true
											},
											developer : {
												required : true
											},
											price : {
												required : true,
												number : true
											},
											description : {
												minlength : 5,
												maxlength : 300,
												required : true
											},
											image : {
												required : true
											}
										},
										messages : {
											name : {
												required : "Please, Provide Product Name"
											},
											category : {
												required : "Please, Select Category Name"
											},
											developer : {
												required : "Please, Select Developer Name"
											},
											price : {
												required : "Please, Provide Price",
												number : "Please, Provide a valid Price"
											},
											description : {
												required : "Please, Provide Description",
												maxlength : "Description Must Contain Atleast 300 Charachters",
												minlength : "Description Must Contain Atleast 5 Charachters"
											},
											image : {
												required : "Please, Provide Cover Photo"
											}
										},
										showErrors : function(errorMap,
												errorList) {

											$.each(this.successList, function(
													index, value) {
												$('#' + value.id + '').popover(
														'destroy');
											});

											$
													.each(
															errorList,
															function(index,
																	value) {

																$(
																		'#'
																				+ value.element.id
																				+ '')
																		.attr(
																				'data-content',
																				value.message)
																		.popover(
																				{
																					placement : 'bottom',
																					trigger : 'manual',
																					delay : {
																						show : 500,
																						hide : 5000
																					}
																				})
																		.popover(
																				'show');

															});

										}
									});

				});