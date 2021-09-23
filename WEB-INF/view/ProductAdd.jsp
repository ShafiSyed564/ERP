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
						<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Add Product</div>

					</div>
					<form:form method="POST" action="saveProduct"
						modelAttribute="product" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3 form-floating mb-3">
								<div class="mb-3">
									<form:label path="productCode" class="form-label">Product Code</form:label>
									<form:input path="productCode" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="unitOfMeasurement" class="form-label">Unit of Measurement</form:label>
									<form:input path="unitOfMeasurement" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="unitWeight" class="form-label">Unit Weight</form:label>
									<form:input path="unitWeight" class="form-control" placeholder="" />
								</div>
							</div>
						</div>

						

						<div class="h-divider"></div>

						<h5 class="mb-3  mt-3">Raw Materials</h5>
						<div id='TextBoxesGroup'></div>


						<button type="button" id="addButton"
							class="btn btn-primary mx-auto d-block mt-5">Add Raw Material</button>

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
							var OptionalRM = 0;
							var addOptionalBtnId = "";
							
							 $("#addButton").click(function () {
								 OptionalRM = 0;
								 
								 optionalAddBtnCount = counter;
								 while (optionalAddBtnCount >= 0) {
									$('#btnAddOptionalRM' + optionalAddBtnCount).hide()
									  optionalAddBtnCount--;
									}
								 
								    var newTextBoxDiv = $(document.createElement('div'))
								         .attr("id", 'TextBoxDiv' + counter);
								                
								    newTextBoxDiv.after().html('<div class="row g-3"><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								    		
								    		'<label class="form-label">Primary Raw Material #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
								    		'<select class="form-control" name="rawMaterials[' + counter + '].primaryRawMaterial.id' +
											'" id="primaryRawMaterial' + counter + '" path="rawMaterials[' + counter + '].primaryRawMaterial.id " >' +
											'<option value="0" selected="true">----Select----</option>' +
											'<c:forEach items="${rawMaterials}" var="rawMaterial">' +
												' <option value="${rawMaterial.id}">${rawMaterial.name}</option>' +
											'</c:forEach>' +
										'</select>' +
								          
								           '</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Conversion Ratio : </label>' +
								          '<input class="form-control" type="text" name="rawMaterials[' + counter + '].primaryRawMaterialConversionRatio' + 
								          '" id="primaryConversionRatio' + counter + '" path="rawMaterials[' + counter + '].primaryRawMaterialConversionRatio' + '" value="" ><br/>' + 
								          
								           '</div></div><div class="col-sm-2  form-floating mb-4"><div>' +
								          
								           '<label class="form-label col-12">&nbsp;</label>' + 
								           '<button id="btnAddOptionalRM' + counter + '" value="addOptionalRM" value="addOptionalRM" class="addOption">Add Optional</button>' +
								          
								          '</div></div></div> ' +
								          '<div id="optionalRawMaterialDiv' + counter + '"></div><hr/>'
								    
								    
								    );
								    addOptionalBtnId =  "#btnAddOptionalRM" + counter;        
								    newTextBoxDiv.appendTo("#TextBoxesGroup");
								    
								    
								                
								    counter++;
								     });
					
							 
							/*  For Dynamically added buttons, jquery on click should be called this way */
							
							 $(document).on('click', '.addOption', function(e) {
								 e.preventDefault();
							 	
						 		 var divToAppend = "#optionalRawMaterialDiv" + (parseInt(counter) - parseInt(1));
								    var newOptionalDiv = $(document.createElement('div'))
								         .attr("id", 'OptionalDiv' + (parseInt(counter) - parseInt(1)));
								                
								    newOptionalDiv.after().html('<div class="row g-3"><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
								    		
								    		'<label class="form-label">Optional : </label>' +
								    		'<select class="form-control" name="rawMaterials[' + (parseInt(counter) - parseInt(1)) + '].subRawMaterials[' + OptionalRM + '].subRawMaterial.id' +
											'" id="Optional' + (parseInt(counter) - parseInt(1)) + '_' + OptionalRM + '" path="rawMaterials[' + (parseInt(counter) - parseInt(1)) + '].subRawMaterials[' + OptionalRM + '].id" >' +
											'<option value="0" selected="true">----Select----</option>' +
											'<c:forEach items="${rawMaterials}" var="rawMaterial">' +
												' <option value="${rawMaterial.id}">${rawMaterial.name}</option>' +
											'</c:forEach>' +
										'</select>' +
								          
								           '</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">' +
								          
								          '<label class="form-label">Conversion Ratio : </label>' +
								          '<input class="form-control" type="text" name="rawMaterials[' + (parseInt(counter) - parseInt(1)) + '].subRawMaterials[' + OptionalRM + '].subRawMaterialConversionRatio' + 
								          '" id="OptionalConversionRatio' + (parseInt(counter) - parseInt(1)) + '_' + OptionalRM + '" path="rawMaterials[' +  (parseInt(counter) - parseInt(1)) + ']..subRawMaterials[' + OptionalRM + '].subRawMaterialConversionRatio' + '" value="" ><br/>' + 
								          
								          '</div></div></div> ' 
								         
								    
								    );
								              
								    newOptionalDiv.appendTo(divToAppend);
								                
								    OptionalRM++;
								  
								});
		
	 	 $('#btnAddOptionalRM0').click(function() {
	 		e.preventdefault(); 
	 		
	 		 var divToAppend = "#optionalRawMaterialDiv" + counter;
			    var newOptionalDiv = $(document.createElement('div'))
			         .attr("id", 'OptionalDiv' + counter);
			                
			    newOptionalDiv.after().html('<div class="row g-3"><div class="col-sm-3  form-floating mb-3"><div class="mb-3">' +
			    		
			    		'<label class="form-label">Primary Raw Material #'+ (parseInt(counter) + parseInt(1)) + ' : </label>' +
			    		'<select class="form-control" name="rawMaterials[' + counter + '].primaryRawMaterial.id' +
						'" id="primaryRawMaterial' + counter + '" path="rawMaterials[' + counter + '].primaryRawMaterial.id " >' +
						'<option value="0" selected="true">----Select----</option>' +
						'<c:forEach items="${rawMaterials}" var="rawMaterial">' +
							' <option value="${rawMaterial.id}">${rawMaterial.name}</option>' +
						'</c:forEach>' +
					'</select>' +
			          
			           '</div></div><div class="col-sm-2  form-floating mb-3"><div class="mb-3">' +
			          
			          '<label class="form-label">Conversion Ratio : </label>' +
			          '<input class="form-control" type="text" name="rawMaterials[' + counter + '].primaryRawMaterialConversionRatio' + 
			          '" id="primaryConversionRatio' + counter + '" path="rawMaterials[' + counter + '].primaryRawMaterialConversionRatio' + '" value="" ><br/>' + 
			          
			           '</div></div><div class="col-sm-2  form-floating mb-4"><div>' +
			          
			           '<label class="form-label col-12">&nbsp;</label>' + 
			           '<button id="btnAddOptionalRM' + counter + '" class="btn btn-mobi btn-alt float-end addOption">Add Optional</button>' +
			          
			          '</div></div></div> ' +
			          '<div id="optionalRawMaterialDiv"></div><hr/>'
			    
			    );
			              
			    newOptionalDiv.appendTo(divToAppend);
			                
			    OptionalRM++;
			     });
	});
								     	</script>
								     	</body>