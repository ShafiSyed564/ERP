<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Raw Material</title>

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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Add WorkOrder</div>

					</div>
					<form:form method="POST" action="saveWorkOrder"
						modelAttribute="workOrder" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="salesOrder.id" class="form-label">Sales Order</form:label>
									<form:select class="form-control" name="salesOrder.id"
										path="salesOrder.id" id="salesOrder">
										<form:option value="0" selected="true">----Select----</form:option>
										<c:forEach items="${salesOrders}" var="salesOrder">
											<form:option value="${salesOrder.id}">SO${salesOrder.id}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3 deliveryDate" >
								<div class="mb-3">

									<form:label path="deliveryDate" class="form-label">Delivery Date</form:label>
									<div class="input-group mb-3">
										<form:input id="deliveryDate" path="deliveryDate" type="date" 
											class="form-control datepick" />
										<span class="input-group-text"><i
											class="fa fa-calendar"></i></span>
									</div>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="status" class="form-label">Status</form:label>
									<form:input path="status" class="form-control" placeholder="" />
								</div>
							</div>

						</div>
						
						<div class="h-divider"></div>

						<h5 class="mb-3  mt-1">Products</h5>
						<div id='divTable'>
						 <table id="table" class="table">
     
                       </table>
						
						</div>
						
						
						<hr />

						<input type="submit" value="submit" />

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
							
							
							$('#salesOrder').change(function(){
						        var salesOrderId = this.value;
						        var counter = 0;
							    $.ajax({
							        type: 'GET',
							        url: "getProductsOfSalesOrder?salesOrderId=" + salesOrderId,
							        success: function(data){
							        	console.log(data);
							        	 $("#table").html("");
							        	 var tr = "<tr><th>Product ID</th><th>Product Name</th><th>Total Quantity</th><th>Quantity For this Order</th></tr>";
				                        
							        	 $("#table").append(tr);
				                           
				                           for (var tempData of data) {
				                        	   tr = '<tr><td>' + '<input type="text" readOnly="true" name="workOrderQuantityDetails[' + counter + '].product.id' + '" id="product' + counter + '" path="workOrderQuantityDetails[' + counter + '].product.id' + '" value="' + tempData.product.id +'" >' + '</td><td>' + tempData.product.name 
				                        	   + '</td><td>' + tempData.quantity + '</td><td><input type="text" name="workOrderQuantityDetails[' + counter + '].quantity' + '" id="quantity' + counter + '" path="workOrderQuantityDetails[' + counter + '].quantity' + '" value="0" >' + '</td><td>'  + '</td></tr>'

				                                $("#table").append(tr);
				                                    counter++;
				                            }
							        },
							        error:function(){
							            alert("error");	
							        }

							    });
							});
						});
	</script>
</body>