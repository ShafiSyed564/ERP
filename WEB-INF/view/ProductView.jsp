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
	
	<link href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css" rel="stylesheet">

<script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>

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
							<b>${product.name }</b>
						</div>

					</div>
					<form:form method="POST" action="productUpdate"
						modelAttribute="product" accept-charset="utf-8">

						<form:input type="hidden" path="id" class="form-control"
							placeholder="" id="productId"/>

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="productCode" class="form-label">Product Code</form:label>
									<form:input path="productCode" class="form-control"
										placeholder="" />
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="unitOfMeasurement" class="form-label">Measurement Unit</form:label>
									<form:input path="unitOfMeasurement" class="form-control"
										placeholder="" />
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="unitWeight" class="form-label">Unit Weight</form:label>
									<form:input path="unitWeight" class="form-control"
										placeholder="" />
								</div>
							</div>
						</div>

						<div class="h-divider"></div>

						<h5 class="mb-3  mt-3">Raw Material Details</h5>

						<table id="table" class="table">
							<tr>
								<th>S.No</th>
								<th>Primary Material</th>
								<th>Conversion Ratio</th>


							</tr>
							<c:forEach items="${product.rawMaterials}" var="raw"
								varStatus="count">

								<tr>
									<td align="center">${count.index}</td>
									<td><label>${raw.primaryRawMaterial.name}</label></td>
									<td><label>${raw.primaryRawMaterialConversionRatio}</label></td>
									<td style="text-align:right;"><a  class="btn btn-mobi btn-sm edit" data-id="${raw.primaryRawMaterial.id}">View</a></td>
									<td style="text-align:left;"><a  class="btn btn-mobi btn-sm delete" data-id="${raw.id}">Remove</a></td>
									<!--<td ><a  class="btn btn-mobi btn-sm delete" data-id="${raw.primaryRawMaterial.id}">Remove</a></td>
									   data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-backdrop="false" -->
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

	<script>
		$(document).ready(function() {
			
		
		/* 	$("#exampleModal").onComplete(function(){
			$('#exampleModal').modal('hide');
			$('body').removeClass('modal-open');
			$('.modal-backdrop').remove();
			}) */
			
			 $(document).on('click', '.edit', function(e) {
				 e.preventDefault(); 
				 var primaryRMId = $(this).attr('data-id');
				 var productId = $('#productId').val();
				 
					
				    $.ajax({
				        type: 'GET',
				        url: "getOptionalRM?primaryRMId=" + primaryRMId + "&productId=" + productId ,
				        success: function(data){
				        	console.log(data)
				        	  $("#modalTable").html("");
                            var tr = "<tr><th>Optional Material Id</th><th>Optional Material</th><th>Conversion Rate</th></tr>"
                           $("#modalTable").append(tr);
                            
                            for (var material of data) {
                                tr = "<tr><td>" + material.id + "</td><td>" +
                                    material.subRawMaterial.name + "</td><td><input type='text' value='" + material.subRawMaterialConversionRatio + "' >"
                                    "</td><td>"  + "</td></tr>"

                                $("#modalTable").append(tr);
                            }
				        	
				        	
				        	
				        	
				        	$('#exampleModal').modal('show');
				        
				        },
				    });
				});  
		
		
			 $(document).on('click', '.delete', function(e) {
				 e.preventDefault(); 
				 var primaryRMId = $(this).attr('data-id');
				 var productId = $('#productId').val();
				 
					
				    $.ajax({
				        type: 'GET',
				        url: "deletePrimaryRMOfProduct?primaryRMId=" + primaryRMId + "&productId=" + productId ,
				        success: function(data){
				        	console.log(data)
				        	location.reload();
				        	
				        },
				    });
				});  
		});
			
			

	</script>
	
	
	<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Optional Materials</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
     <table id="modalTable" class="table">
     
     </table>
     
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

</body>