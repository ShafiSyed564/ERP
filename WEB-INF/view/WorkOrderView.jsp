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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">
							<b>Work Order</b>
						</div>

					</div>


					<div class="row g-3">
						<div class="col-sm-3  form-floating mb-3">
							<div class="mb-3">
								<label class="form-label">WorkOrder ID : </label> <label
									class="form-label">${workOrder.id }</label>

							</div>
						</div>

						<div class="col-sm-3  form-floating mb-3">
							<div class="mb-3">
								<label class="form-label">SalesOrder ID : </label> <label
									class="form-label">${workOrder.salesOrder.id }</label>
							</div>
						</div>

						<div class="col-sm-3  form-floating mb-3">
							<div class="mb-3">
								<label class="form-label">Customer ID : </label> <label
									class="form-label">${workOrder.salesOrder.customer.id }</label>
							</div>
						</div>
					</div>

					<div class="row g-3">
						<div class="col-sm-3  form-floating mb-3">
							<div class="mb-3">
							<label class="form-label">Customer Name : </label> <label
									class="form-label">${workOrder.salesOrder.customer.name }</label>
								
							</div>
						</div>

					</div>

					<div class="h-divider"></div>

					<form:form method="POST" action="workOrderUpdate"
						modelAttribute="workOrder" accept-charset="utf-8">

						<form:input type="hidden" path="id" class="form-control"
							placeholder="" />
							<form:input type="hidden" path="salesOrder.id" class="form-control"
							placeholder="" />
							<%-- 
							<form:input type="hidden" path="salesOrder" name="salesOrder" value="${workOrder.salesOrder.id }" class="form-control"
							placeholder="" />
 --%>
						<h5 class="mb-3  mt-3">Product Details</h5>

						<table>
							<tr>
								<th>Product ID</th>
								<th>Product</th>
								<th>R.Qty</th>
								<th>Finished</th>
								<th>Rate</th>
								<th>Issue No</th>
								<th>Line Item No</th>

							</tr>
							<c:forEach items="${workOrder.workOrderQuantityDetails}"
								var="prod" varStatus="count">

								<tr>
									<td><input
										name="workOrderQuantityDetails[${count.index}].product.id"
										value="${prod.product.id}" readOnly="true" /></td>
									<td><input
										name="workOrderQuantityDetails[${count.index}].product.name"
										value="${prod.product.name}" readOnly="true" /></td>

									<td><input
										name="workOrderQuantityDetails[${count.index}].quantity"
										value="${prod.quantity}" /></td>
									<td><input
										name="workOrderQuantityDetails[${count.index}].quantityCompleted"
										value="${prod.quantityCompleted}" /></td>
									<%-- 	<td><input
										name="workOrderQuantityDetails[${count.index}].workOrder.salesOrder.productsAsList.rate"
										value="${workOrder.salesOrder.productsAsList.rate}" /></td>  
										<td><input
										name="workOrderQuantityDetails[${count.index}].workOrder.salesOrder.productsAsList.lineItemNumber"
										value="${workOrder.salesOrder.productsAsList.lineItemNumber}" /></td>  --%>
									<td></td>

								</tr>
							</c:forEach>

						</table>
						<br>

						<input type="submit" value="Update" />

					</form:form>

					<hr />
				</div>
			</div>
		</div>
	</main>