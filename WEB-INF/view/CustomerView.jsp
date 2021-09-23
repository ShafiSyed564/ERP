<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">${customer.companyName }</div>

					</div>
					<form:form method="POST" action="customerUpdate"
						modelAttribute="customer" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="companyName" class="form-label">Company Name</form:label>
									<form:input path="companyName" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="companyCode" class="form-label">Company code</form:label>
									<form:input path="companyCode" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="email" class="form-label">Email</form:label>
									<form:input path="email" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="gstNumber" class="form-label">GST Number</form:label>
									<form:input path="gstNumber" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentMode" class="form-label">Payment Mode</form:label>
									<form:input path="paymentMode" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankName" class="form-label">Bank Name</form:label>
									<form:input path="bankName" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankAccountNumber" class="form-label">Account Number</form:label>
									<form:input path="bankAccountNumber" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="ifscCode" class="form-label">IFSC</form:label>
									<form:input path="ifscCode" class="form-control" placeholder="" />
								</div>
							</div>
						</div>


						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="pan" class="form-label">PAN</form:label>
									<form:input path="pan" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="contactPerson" class="form-label">Contact Person</form:label>
									<form:input path="contactPerson" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="designation" class="form-label">Designation</form:label>
									<form:input path="designation" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">


							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone" class="form-label">Phone</form:label>
									<form:input path="phone" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone_alternate" class="form-label">Alternative Phone</form:label>
									<form:input path="phone_alternate" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="billingAddress" class="form-label">Billing Address</form:label>
									<form:input path="billingAddress" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="h-divider"></div>
						<h5 class="mb-3  mt-3">
							Delivery Locations
							<button id="btnDeleteOrderLine"
								class="btn btn-mobi btn-alt float-end">Delete</button>
						</h5>
						<br>

						<div class="row g-3">
							<div class="table-responsive">
								<table class="table" id="table">
									<thead>
										<tr class="bcf4f4f4 c617075 fw500">
											<th></th>
											<th>Plant Name</th>
											<th>Plant Code</th>
											<th>Contact Person</th>
											<th>Phone</th>
											<th>LandMark</th>
											<th style="text-align: right">Actions</th>
										</tr>
									</thead>
									<tbody class="c3f3f3f fw500 tblOrderLineBody">

										<c:forEach var="loc" items="${customer.deliveryLocations}"
											varStatus="count">
											<c:url var="viewLink" value="">
												<c:param name="id" value="${loc.id}"></c:param>
											</c:url>


											<tr>
												<td><input class="checkbox" type="checkbox"></td>
												<td><form:input type="hidden" value="${loc.id}"
														name="deliveryLocations[${count.index}].id"
														path="deliveryLocations[${count.index}].id"></form:input>${loc.plantName}</td>

												<td>${loc.plantCode}</td>
												<td>${loc.contactPerson}</td>
												<td>${loc.phone}</td>
												<td>${loc.landMark}</td>

												<td style="text-align: right"><a
													href="OrderView?id=${loc.id}"
													class="btn btn-mobi btn-sm edit" data-id="${loc.id}"
													data-backdrop="false">View</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>




						<div class="h-divider"></div>

						<%-- 	<h5 class="mb-3  mt-3">Delivery Details</h5>

						<table>
							<tr>
								<th>S.No</th>
								<th>Plant Name</th>
								<th>Plant Code</th>
								<th>Contact Person</th>
								<th>Phone</th>
								<th>LandMark</th>

							</tr>
							<c:forEach items="${customer.deliveryLocations}" var="loc"
								varStatus="count">

								<tr>
									<td align="center">${count.index}</td>
									<td><input
										name="deliveryLocations[${count.index}].plantName"
										value="${loc.plantName}" /></td>
									<td><input
										name="deliveryLocations[${count.index}].plantCode"
										value="${loc.plantCode}" /></td>
									<td><input
										name="deliveryLocations[${count.index}].contactPerson"
										value="${loc.contactPerson}" /></td>
									<td><input name="deliveryLocations[${count.index}].phone"
										value="${loc.phone}" /></td>
									<td><input
										name="deliveryLocations[${count.index}].landMark"
										value="${loc.landMark}" /></td>
										<td>view</td>
								</tr>
							</c:forEach>

						</table>
						<br> --%>



						<!-- diff -->


						<%-- <c:forEach items="${customer.deliveryLocations}" var="loc" varStatus="count">
						<div class="row g-3">
							 <div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].plantName" class="form-label">Plant Name</form:label>
									<form:input path="loc[count].plantName" class="form-control" placeholder=""/>
								</div>
							</div> 

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].plantCode" class="form-label">Plant Code</form:label>
									<form:input path="loc[count].plantCode" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].deliveryAddress" class="form-label">Delivery Address</form:label>
									<form:input path="loc[count].deliveryAddress" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						Modal
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].contactPerson" class="form-label">Contact Person</form:label>
									<form:input path="loc[count].contactPerson" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].phone" class="form-label">Phone</form:label>
									<form:input path="loc[count].phone" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].phone_alternative" class="form-label">Alternative Phone</form:label>
									<form:input path="loc[count].phone_alternative" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].email" class="form-label">Email</form:label>
									<form:input path="loc[count].email" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="loc[count].landMark" class="form-label">LandMark</form:label>
									<form:input path="loc[count].landMark" class="form-control" placeholder=""/>
								</div>
							</div>
							<!-- <div class="col-sm-4  form-floating mb-3 change">
								<div class="mb-3">
									<label  class="form-label">&nbsp;</label>
									 <a class="btn btn-success add-more form-control">+ Add More</a>
								</div>
							</div> -->

						</div>
						</c:forEach> --%>



						<input type="submit" value="Update" />

					</form:form>

					<hr />
				</div>
			</div>
		</div>
	</main>

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
							$(document)
									.on('click','.edit',function(e) {
												e.preventDefault();
												var locId = $(this).attr('data-id');

												$('#editModal').modal('show');

												$.ajax({type : 'GET',
															url : "getCustomerDeliveryLocationByID?locationId=" + locId,
															success : function(data) {
																console.log(data)
																$('#locIdModal').val(data.id);
																$('#customerIdModal').val(data.customerId);
																$('#plantNameModal').val(data.plantName);
																$('#plantCodeModal').val(data.plantCode);
																$('#deliveryAddressModal').val(data.deliveryAddress);
																$('#contactPersonModal').val(data.contactPerson);
																$('#phoneModal').val(data.phone);
																$('#phone_alternativeModal').val(data.phone_alternative);
																$('#emailModal').val(data.email);
																$('#landMarkModal').val(data.landMark);
																$('#createdOnModal').val(data.createdOn);

															},
														});

											});
							
							$('.saveLocation').click(function(e) {
								e.preventDefault();
								$.post("saveLocationById",
												{
									id : $('#locIdModal').val(),
									plantName : $('#plantNameModal').val(),
									plantCode : $('#plantCodeModal').val(),
									deliveryAddress : $('#deliveryAddressModal').val(),
									contactPerson : $('#contactPersonModal').val(),
									
									phone : $('#phoneModal').val(),
									phone_alternative : $('#phone_alternativeModal').val(),
									email : $('#emailModal').val(),
									createdOn : $('#createdOnModal').val(),
									landMark : $('#landMarkModal').val(),	
									customerId: $('#customerIdModal').val()

												},

												function(data,
														status) {

													$('#editModal').modal(
																	{
																		backdrop : 'static',
																		keyboard : false
																	});
													$('#editModal').modal('hide');

												});
							});
							
						});
	</script>
	
	
	
	<!-- Modal -->
	<div class="modal fade" id="editModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable  modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Amend Delivery Address</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form:form action="">
						<div class="row g-3">
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Plant Name</label> <input
										id="plantNameModal" class="form-control" placeholder="Plant Name" />

								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Plant Code</label> <input id="plantCodeModal"
										class="form-control" placeholder="Plant Code" />

								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Delivery Address</label> <input
										id="deliveryAddressModal" class="form-control" placeholder="Delivery Address"
										 />

								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Contact Person</label> <input id="contactPersonModal"
										class="form-control" placeholder="Contact Person" />

								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Phone</label> <input id="phoneModal"
										class="form-control" placeholder="phone" />

								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Alternative Phone</label> <input id="phone_alternativeModal"
										class="form-control" placeholder="Alternative Phone" />

								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Email</label> <input id="emailModal"
										class="form-control" placeholder="Email" />

								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">LandMark</label> <input id="landMarkModal"
										class="form-control" placeholder="LandMark" />

								</div>
							</div>
							<div>
							<input type="hidden" id="locIdModal"/>
							<input type="hidden" id="createdOnModal"/>
							<input type="hidden" id="customerIdModal"/>
							</div>
						

						</div>

					</form:form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary saveLocation">Save
						changes</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
	