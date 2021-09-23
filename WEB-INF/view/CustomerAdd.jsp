<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Supplier</title>

<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">

<meta name="theme-color" content="#f1f5fa">

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/fonts.css">
<link rel="stylesheet"
	href="https://www.markuptag.com/bootstrap/5/css/bootstrap.min.css" />
<!-- Bootstrap JS -->
 <link rel="stylesheet" href=
"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity=
"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
  
  <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
  </script>
  <script src=
"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
  </script>
  <script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
  </script>
<script
	src="https://www.markuptag.com/bootstrap/5/js/bootstrap.bundle.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<%@ page isELIgnored="false"%>
</head>
<body>

	<style>
body {
	background-color: #f1f5fa;
}

.bcf4f4f4 {
	background-color: #f4f4f4;
}

.c3f3f3f {
	color: #3f3f3f;
}

.c617075 {
	color: #617075;
}

.fw500 {
	font-weight: 500;
}

.table {
	font-size: 12px;
}

.mt110 {
	margin-top: 110px;
}

.btn-mobi {
	color: #fff;
	background-color: #005baa;
	border-color: #005baa;
}
</style>


	<main class="container mt110">
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="bg-white p-5 rounded">
					<div class="row">
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">
							<b>Add Customer</b>
						</div>

					</div>
					<form:form method="POST" action="customerSave"
						modelAttribute="customer" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="companyName" class="form-label">Company Name</form:label>
									<form:input path="companyName" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="companyCode" class="form-label">Company code</form:label>
									<form:input path="companyCode" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="gstNumber" class="form-label">GST Number</form:label>
									<form:input path="gstNumber" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
						<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="contactPerson" class="form-label">Contact Person</form:label>
									<form:input path="contactPerson" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="designation" class="form-label">Designation</form:label>
									<form:input path="designation" class="form-control"
										placeholder="" />
								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="email" class="form-label">Email</form:label>
									<form:input path="email" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentMode" class="form-label">Payment Mode</form:label>
									<form:input path="paymentMode" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankName" class="form-label">Bank Name</form:label>
									<form:input path="bankName" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankAccountNumber" class="form-label">Account Number</form:label>
									<form:input path="bankAccountNumber" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="ifscCode" class="form-label">IFSC</form:label>
									<form:input path="ifscCode" class="form-control" placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="pan" class="form-label">PAN</form:label>
									<form:input path="pan" class="form-control" placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone" class="form-label">Phone</form:label>
									<form:input path="phone" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone_alternate" class="form-label">Alternative Phone</form:label>
									<form:input path="phone_alternate" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="billingAddress" class="form-label">Billing Address</form:label>
									<form:input path="billingAddress" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>



						<div class="h-divider"></div>

						<h5 class="mb-3  mt-3">Delivery Details</h5>
						<div id='TextBoxesGroup'>
						
						</div>
						<!-- Click on Modal Button -->
						<!--  <button type="button" class="btn btn-primary mx-auto d-block mt-5" data-bs-toggle="modal" data-bs-target="#modalForm"></button> -->
						<button type="button" id="addButton" class="btn btn-primary mx-auto d-block mt-5">
							Add Delivery Details</button>
						
						<hr />
						<input type="submit" value="Submit" />

					</form:form>

					<hr />
				</div>
			</div>
		</div>
	</main>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var counter = 0;	
							
							 $("#addButton").click(function () {
					                
								    if(counter>10){
								            alert("Only 10 textboxes allow");
								            return false;
								    }   
								        
								    var newTextBoxDiv = $(document.createElement('div'))
								         .attr("id", 'TextBoxDiv' + counter);
								                
								    newTextBoxDiv.after().html('<div class="row g-3"><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								    		
								    		'<label class="form-label">Plant Name #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].plantName' + 
								          '" id="plantName' + counter + '" path="deliveryLocations[' + counter + '].plantName' + '" value="" ><br/>' +
								          
								           '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Plant Code #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].plantCode' + 
								          '" id="plantCode' + counter + '" path="deliveryLocations[' + counter + '].plantCode' + '" value="" ><br/>' + 
								          
								           '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Delivery Address #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].deliveryAddress' + 
								          '" id="deliveryAddress' + counter + '" path="deliveryLocations[' + counter + '].deliveryAddress' + '" value="" ><br/>' + 
								          
								          '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Contact Person #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].contactPerson' + 
								          '" id="contactPerson' + counter + '" path="deliveryLocations[' + counter + '].contactPerson' + '" value="" ><br/>' + 
								          
								          '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Phone #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].phone' + 
								          '" id="phone' + counter + '" path="deliveryLocations[' + counter + '].phone' + '" value="" ><br/>' + 
								          
								          '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Alternative Phone #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].phone_alternative' + 
								          '" id="phone_alternative' + counter + '" path="deliveryLocations[' + counter + '].phone_alternative' + '" value="" ><br/>' +
								          
								          '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Email #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name=""deliveryLocations[' + counter + '].email' + 
								          '" id="email' + counter + '" path="deliveryLocations[' + counter + '].email' + '" value="" ><br/>' + 
								          
								          '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">LandMark #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								          '<input class="form-control" type="text" name="deliveryLocations[' + counter + '].landMark' + 
								          '" id="landMark' + counter + '" path="deliveryLocations[' + counter + '].landMark' + '" value="" ><br/><hr/>' +
								          
								          '</div></div></div> '
								    
								    
								    );
								              
								    newTextBoxDiv.appendTo("#TextBoxesGroup");
								    
								    
								                
								    counter++;
								     });


							$("#add")
									.click(
											function(e) {
												/*  e.preventDefault(); */
												var plantName = $('#plantName')
														.val();
												console.log(plantName);

												var productType = this.value;
												$
														.ajax({
															type : 'POST',
															url : "saveCustomerDeliveryAddress?plantName="
																	+ plantName
																	+ "&productType="
																	+ productType,
															success : function(
																	data) {
																$('#modalForm')
																		.modal(
																				'hide');

															},
															error : function() {
																alert("error");
															}

														});
											});

							$("body")
									.on(
											"click",
											".add-more",
											function() {
												var html = $(".after-add-more")
														.first().clone();

												//  $(html).find(".change").prepend("<label for=''>&nbsp;</label><br/><a class='btn btn-danger remove'>- Remove</a>");

												$(html)
														.find(".change")
														.html(
																"<label for=''>&nbsp;</label><br/><a class='btn btn-danger remove'>- Remove</a>");

												$(".after-add-more").last()
														.after(html);

											});

							$("body").on("click", ".remove", function() {
								$(this).parents(".after-add-more").remove();
							});
						});
	</script>


	<!-- Modal -->
	<div class="modal fade" id="modalForm" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Delivery
						Details</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form:form method="post" action="saveCustomerDeliveryAddress"
						modelAttribute="CustomerDeliveryLocation">
						<div class="mb-3">
							<label class="form-label">Plant Name</label> <input type="text"
								class="form-control" id="plantName" name="plantName"
								placeholder="Plant Name" />
						</div>
						<div class="mb-3">
							<label class="form-label">Plant Code</label> <input type="text"
								class="form-control" id="plantCode" name="plantCode"
								placeholder="Plant Code" />
						</div>
						<div class="mb-3">
							<label class="form-label">Delivery Address</label> <input
								type="text" class="form-control" id="deliveryAddress"
								name="deliveryAddress" placeholder="Delivery Address" />
						</div>
						<div class="mb-3">
							<label class="form-label">Contact Person</label> <input
								type="text" class="form-control" id="contactPerson"
								name="contactPerson" placeholder="Contact Person" />
						</div>
						<div class="mb-3">
							<label class="form-label">Phone</label> <input type="text"
								class="form-control" id="phone" name="phone" placeholder="Phone" />
						</div>
						<div class="mb-3">
							<label class="form-label">Alternative Phone</label> <input
								type="text" class="form-control" id="phone_alternative"
								name="phone_alternative" placeholder="Alternative Phone" />
						</div>
						<div class="mb-3">
							<label class="form-label">Email</label> <input type="text"
								class="form-control" id="email" name="email" placeholder="Email" />
						</div>
						<div class="mb-3">
							<label class="form-label">LandMark</label> <input type="text"
								class="form-control" id="landmark" name="landmark"
								placeholder="LandMark" />
						</div>
						<div class="modal-footer d-block">
							<button id="add" value="add" name="add"
								class="btn btn-warning float-end">Submit</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>