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
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css">

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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Add Sales Order</div>

					</div>
					<form:form method="POST" action="saveSalesOrder"
						modelAttribute="salesOrder" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="customer.id" class="form-label">Client</form:label>
									<form:select class="form-control" name="customer.id"
										path="customer.id" id="client">
										<form:option value="0" selected="true">----Select----</form:option>
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
										<form:option value="One-Time">One-Time</form:option>
									</form:select>
								</div>
							</div>
							
							<div class="col-sm-3  form-floating mb-3 deliveryDate" >
								<div class="mb-3">

									<form:label path="deliveryDate" class="form-label">Delivery Date</form:label>
									<div class="input-group mb-3">
										<form:input id="deliveryDate" path="deliveryDate" type="date" 
											class="form-control" />
										<span class="input-group-text"><i
											class="fa fa-calendar"></i></span>
									</div>
								</div>
							</div>

						</div>
						
						<div class="h-divider"></div>

						<h5 class="mb-3  mt-1">Products</h5>
						<div id='TextBoxesGroup'>
						
						</div>
						<button type="button" id="addButton" class="btn btn-primary mx-auto d-block mt-5">
							Add Product</button>
						
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
	$(function() {
		
		$(".datepick").datepicker();
	});
	
		$(document)
				.ready(
						function() {
							
							updateInputs();
							$('#salesOrderType').on('change', updateInputs);   
							
							function updateInputs() {
						        var salesOrderType = $("#salesOrderType" ).val();
						        
						        if(salesOrderType == "Regular"){
									$('.deliveryDate').hide();
								}
								else{
									$('.deliveryDate').show();
								}
							}
							
							
							var counter = 0;
							
							/* $('#salesOrderType').change(function(){
								
								
							  
							}); */
							
							$('#client').change(function(){
						        var customerId = this.value;
							    $.ajax({
							        type: 'GET',
							        url: "getDeliveryLocationsOfCustomer?customerId=" + customerId,
							        success: function(data){
							        	console.log(data);
							            var deliveryLocation=$('.deliveryLocation'), option="";
							            deliveryLocation.empty();

							            for(var i=0; i<data.length; i++){
							                option = option + "<option value='"+data[i].id + "'>"+data[i].plantName + "</option>";
							            }
							            
							            deliveryLocation.append(option);
							        },
							        error:function(){
							            alert("error");
							        }

							    });
							});

							$("#addButton")
									.click(
											function() {

												if (counter > 10) {
													alert("Only 10 textboxes allow");
													return false;
												}

												var newTextBoxDiv = $(
														document
																.createElement('div'))
														.attr(
																"id",
																'TextBoxDiv'
																		+ counter);

												newTextBoxDiv
														.after()
														.html(
																'<div class="row g-3"><div class="col-sm-3  form-floating mb-3"><div class="mb-3">'
																		+

																		'<label class="form-label">Product #'
																		+ (parseInt(counter) + parseInt(1))
																		+ ' : </label>'
																		+ '<select class="form-control product" name="productsAsList[' + counter + '].product.id' +
											'" id="product' + counter + '" path="productsAsList[' + counter + '].product.id " >'
																		+ '<option value="0" selected="true">----Select----</option>'
																		+ '<c:forEach items="${productList}" var="product">'
																		+ ' <option value="${product.id}">${product.name}</option>'
																		+ '</c:forEach>'
																		+ '</select><br/>'
																		+

																		'</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">'
																		+

																		'<label class="form-label">Quantity : </label>'
																		+ '<input class="form-control" type="text" name="productsAsList[' + counter + '].quantity' + 
								          '" id="quantity' + counter + '" path="productsAsList[' + counter + '].quantity' + '" value="" ><br/>'
																		+

																		'</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">'
																		+

																		'<label class="form-label">Rate : </label>'
																		+ '<input class="form-control" type="text" name="productsAsList[' + counter + '].rate' + 
								          '" id="rate' + counter + '" path="productsAsList[' + counter + '].rate' + '" value="" ><br/>'
																		+

																		'</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">'
																		+

																		'<label class="form-label">Issue Number : </label>'
																		+ '<input class="form-control" type="text" name="productsAsList[' + counter + '].issueNumber' + 
								          '" id="issueNumber' + counter + '" path="productsAsList[' + counter + '].issueNumber' + '" value="" ><br/>'
																		+
																		
																		'</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">'
																		+

																		'<label class="form-label">Tax Code : </label>'
																		+ '<input class="form-control" type="text" name="productsAsList[' + counter + '].taxCode' + 
								          '" id="taxCode' + counter + '" path="productsAsList[' + counter + '].taxCode' + '" value="" ><br/>'
																		+
																		
																		'</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">'
																		+

																		'<label class="form-label">Line Item No : </label>'
																		+ '<input class="form-control" type="text" name="productsAsList[' + counter + '].lineItemNumber' + 
								          '" id="lineItemNumber' + counter + '" path="productsAsList[' + counter + '].lineItemNumber' + '" value="" ><br/>'
																		+
																		'</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">'
																		+
																		
																		'<label class="form-label">Delivery Location'
																		+ ' : </label>'
																		+ '<select class="form-control deliveryLocation" name="productsAsList[' + counter + '].deliveryLocation.id' +
											'" id="deliveryLocation' + counter + '" path="productsAsList[' + counter + '].deliveryLocation.id " >'
																		+ '<option value="0" selected="true">----Select----</option>'
																		
																		+ '</select><br/><hr/>'
																		+

																		'</div></div></div> '

														);

												newTextBoxDiv
														.appendTo("#TextBoxesGroup");

												counter++;
											});
						});
	</script>
</body>