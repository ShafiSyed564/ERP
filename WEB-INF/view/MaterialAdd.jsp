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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Add
							Material</div>

					</div>
					<form:form method="POST" action="saveRawMaterial"
						modelAttribute="rawMaterial" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="materialCode" class="form-label">Material Code</form:label>
									<form:input path="materialCode" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="rawMaterialType" class="form-label">Material Type</form:label>
									<form:input path="rawMaterialType" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="hsnCode" class="form-label">HSN Code(Optional)</form:label>
									<form:input path="hsnCode" class="form-control" placeholder="" />
								</div>
							</div>
						</div>

						<div class="row g-3">
							

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="specifications" class="form-label">Specifications</form:label>
									<form:input path="specifications" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="measurementUnits" class="form-label">Measurement Units</form:label>
									<form:input path="measurementUnits" class="form-control"
										placeholder="" />
								</div>
							</div>
								<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="reOrderLevel" class="form-label">ReOrder Level</form:label>
									<form:input path="reOrderLevel" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="reOrderQuantity" class="form-label">ReOrder Quantity</form:label>
									<form:input path="reOrderQuantity" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						
						<div class="h-divider"></div>

						<h5 class="mb-3  mt-3">Supplier Details</h5>
						<div id='TextBoxesGroup'></div>


						<button type="button" id="addButton"
							class="btn btn-primary mx-auto d-block mt-5">Add Supplier</button>

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
							var counter = 0;	
							
							 $("#addButton").click(function () {
					                
								    if(counter>10){
								            alert("Only 10 textboxes allow");
								            return false;
								    }   
								        
								    var newTextBoxDiv = $(document.createElement('div'))
								         .attr("id", 'TextBoxDiv' + counter);
								                
								    newTextBoxDiv.after().html('<div class="row g-3"><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								    		
								    		'<label class="form-label">Supplier #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								    		'<select class="form-control" name="rawMaterialSupplier[' + counter + '].supplier.id' +
											'" id="supplier' + counter + '" path="rawMaterialSupplier[' + counter + '].supplier.id " >' +
											'<option value="0" selected="true">----Select----</option>' +
											'<c:forEach items="${suppliers}" var="suppliers">' +
												' <option value="${suppliers.id}">${suppliers.name}</option>' +
											'</c:forEach>' +
										'</select><br/>' +
								          
								           '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Min Order Quantity : </label>' +
								          '<input class="form-control" type="text" name="rawMaterialSupplier[' + counter + '].minOrderQuantity' + 
								          '" id="minOrderQuantity' + counter + '" path="rawMaterialSupplier[' + counter + '].minOrderQuantity' + '" value="" ><br/>' + 
								          
								           '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Rate : </label>' +
								          '<input class="form-control" type="text" name="rawMaterialSupplier[' + counter + '].rate' + 
								          '" id="rate' + counter + '" path="rawMaterialSupplier[' + counter + '].rate' + '" value="" ><br/>' + 
								          
								          '</div></div><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Lead Time : </label>' +
								          '<input class="form-control" type="text" name="rawMaterialSupplier[' + counter + '].leadTime' + 
								          '" id="leadTime' + counter + '" path="rawMaterialSupplier[' + counter + '].leadTime' + '" value="" ><br/><hr/>' + 
								        
								          
								          '</div></div></div> '
								    
								    
								    );
								              
								    newTextBoxDiv.appendTo("#TextBoxesGroup");
								    
								    
								                
								    counter++;
								     });
						});
								     	</script>
								     	</body>