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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d"><b>${rawMaterial.name }</b></div>

					</div>
					<form:form method="POST" action="rawMaterialUpdate"
						modelAttribute="rawMaterial" accept-charset="utf-8">

						<form:input type="hidden" path="id" class="form-control"
							placeholder="" />

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="materialCode" class="form-label">Material Code</form:label>
									<form:input path="materialCode" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="rawMaterialType" class="form-label">Material Type</form:label>
									<form:input path="rawMaterialType" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="hsnCode" class="form-label">HSN Code</form:label>
									<form:input path="hsnCode" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="specifications" class="form-label">Specifications</form:label>
									<form:input path="specifications" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="measurementUnits" class="form-label">Measurement Unit</form:label>
									<form:input path="measurementUnits" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="reOrderLevel" class="form-label">ReOrder Level</form:label>
									<form:input path="reOrderLevel" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="reOrderQuantity" class="form-label">ReOrder Quantity</form:label>
									<form:input path="reOrderQuantity" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>
						
						<div class="h-divider"></div>
						
						<h5 class="mb-3  mt-3">
							Supplier Details
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
											<th>Supplier</th>
											<th>Min Order</th>
											<th>Rate</th>
											<th>Lead Time</th>
											<th style="text-align: right">Actions</th>
										</tr>
									</thead>
									<tbody class="c3f3f3f fw500 tblOrderLineBody">

										<c:forEach var="sup" items="${rawMaterial.rawMaterialSupplier}"
											varStatus="count">
											<c:url var="viewLink" value="">
												<c:param name="id" value="${sup.id}"></c:param>
											</c:url>


											<tr>
												<td><input class="checkbox" type="checkbox"></td>
												<td><form:input type="hidden" value="${sup.id}"
														name="rawMaterialSupplier[${count.index}].id"
														path="rawMaterialSupplier[${count.index}].id"></form:input>${sup.supplier.name}</td>

												<td>${sup.minOrderQuantity}</td>
												<td>${sup.rate}</td>
												<td>${sup.leadTime}</td>
												
												<td style="text-align: right"><a
													href="OrderView?id=${sup.id}"
													class="btn btn-mobi btn-sm edit" data-id="${sup.id}"
													data-backdrop="false">Edit</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

						<%-- <h5 class="mb-3  mt-3">Supplier Details</h5>

						<table>
							<tr>
								<th>S.No</th>
								<th>Supplier</th>
								<th>Min Order</th>
								<th>Rate</th>
								<th>Lead Time</th>


							</tr>
							<c:forEach items="${rawMaterial.rawMaterialSupplier}" var="sup"
								varStatus="count">

								<tr>
									<td align="center">${count.index}</td>
									<td><input
										name="rawMaterialSupplier[${count.index}].supplier.name"
										value="${sup.supplier.name}" /></td>
									<td><input
										name="rawMaterialSupplier[${count.index}].minOrderQuantity"
										value="${sup.minOrderQuantity}" /></td>

									<td><input name="rawMaterialSupplier[${count.index}].rate"
										value="${sup.minOrderQuantity}" /></td>
									<td><input
										name="rawMaterialSupplier[${count.index}].leadTime"
										value="${sup.rate}" /></td>
									<td>view</td>
								</tr>
							</c:forEach>

						</table> --%>
						<br>

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
												var rawMaterialSupplierLineId = $(this).attr('data-id');

												$('#editModal').modal('show');

												$.ajax({type : 'GET',
															url : "getRawMaterialSupplierLineByID?rawMaterialSupplierLineId=" + rawMaterialSupplierLineId,
															success : function(data) {
																console.log(data)
																$('#rawMaterialSupplierLineIDModal').val(data.id);
																$('#rawMaterialIdModal').val(data.rawMaterialId);
																$('#createdOnModal').val(data.createdOn);
																
																$('#supplierModal').val(data.supplierId);
																$('#minOrderQuantityModal').val(data.minOrderQuantity);
																$('#rateModal').val(data.rate);
																$('#leadTimeModal').val(data.leadTime);
															},
														});

											});
							
							$('.saveSupplierData').click(function(e) {
								e.preventDefault();
								$.post("saveRawMaterialSupplierLineByID",
												{
									id : $('#rawMaterialSupplierLineIDModal').val(),
									rawMaterialId : $('#rawMaterialIdModal').val(),
									createdOn : $('#createdOnModal').val(),
									supplierId : $('#supplierModal').val(),
									minOrderQuantity : $('#minOrderQuantityModal').val(),
									rate : $('#rateModal').val(),
									leadTime : $('#leadTimeModal').val()
									

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
					<h5 class="modal-title" id="exampleModalLabel">Amend Supplier Details</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form:form action="">
						<div class="row g-3">
						

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Min Order Quantity</label> <input id="minOrderQuantityModal"
										class="form-control" placeholder="Min Order Quantity" />

								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Rate</label> <input
										id="rateModal" class="form-control" placeholder="Rate"
										 />

								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">

									<label class="form-label">Lead Time</label> <input id="leadTimeModal"
										class="form-control" placeholder="Lead Time" />

								</div>
							</div>
							<div>
							<input type="hidden" id="rawMaterialSupplierLineIDModal"/>
							<input type="hidden" id="rawMaterialIdModal"/>
							<input type="hidden" id="createdOnModal"/>
							<input type="hidden" id="supplierModal"/>
							</div>
						

						</div>

					</form:form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary saveSupplierData">Save
						changes</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
	