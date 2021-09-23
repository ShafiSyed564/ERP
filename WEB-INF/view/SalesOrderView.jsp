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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Sales Order</div>

					</div>
					<form:form method="POST" action="saveSalesOrder"
						modelAttribute="salesOrder" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="customer.id" class="form-label">Client</form:label>
									<form:select class="form-control" name="customer.id"
										path="customer.id" id="client">
										<form:option value="0">----Select----</form:option>
										<c:forEach items="${customers}" var="customer">
											<form:option value="${customer.id}">${customer.name}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentTerms" class="form-label">Payment Terms</form:label>
									<form:input path="paymentTerms" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="remarks" class="form-label">Remarks</form:label>
									<form:input path="remarks" class="form-control" placeholder="" />
								</div>
							</div>


							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="salesOrderType" class="form-label">Order Type</form:label>
									<form:select class="form-control" name="salesOrderType"
										path="salesOrderType" id="salesOrderType">
										<form:option value="Regular">Regular</form:option>
										<form:option value="One">One-Time</form:option>
									</form:select>
								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3 deliveryDate" >
								<div class="mb-3">

									<form:label path="deliveryDate" class="form-label">Delivery Date</form:label>
									<div class="input-group mb-3">
										<form:input id="deliveryDate" path="deliveryDate" type="text" 
											class="form-control datepick" />
										<span class="input-group-text"><i
											class="fa fa-calendar"></i></span>
									</div>
								</div>
							</div>

						</div>
						
							<div class="h-divider"></div>

						<h5 class="mb-3  mt-3">Product Details</h5>

						<table>
							<tr>
								<th>S.No</th>
								<th>Product</th>
								<th>Quantity</th>
								<th>Rate</th>
								<th>Tax Code</th>
								<th>Issue Number</th>

							</tr>
							<c:forEach items="${salesOrder.productsAsList}" var="prod"
								varStatus="count">

								<tr>
									<td align="center">${count.index}</td>
									<td><input
										name="productsAsList[${count.index}].product.id"
										value="${prod.product.id}" /></td>
									<td><input
										name="productsAsList[${count.index}].quantity"
										value="${prod.quantity}" /></td>
									<td><input
										name="productsAsList[${count.index}].rate"
										value="${prod.rate}" /></td>
									<td><input name="productsAsList[${count.index}].taxCode"
										value="${prod.taxCode}" /></td>
									<td><input
										name="productsAsList[${count.index}].issueNumber"
										value="${prod.issueNumber}" /></td>
										<td>view</td>
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