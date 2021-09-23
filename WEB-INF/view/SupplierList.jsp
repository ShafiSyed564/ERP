<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
    
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap5.min.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fonts.css" >
    
    <%@ page isELIgnored="false"%>
  </head>
  <body>
  
  <style>
body{background-color:#f1f5fa;}
.bcf4f4f4{background-color:#f4f4f4;}
.c3f3f3f{color:#3f3f3f;}
.c617075{color:#617075;}
.fw500{font-weight:500;}
.table{font-size:12px;}
.mt110{margin-top:110px;}
.btn-mobi{
color: #fff;
background-color: #005baa;
border-color: #005baa;


}


</style>
<%-- 
<nav class="navbar navbar-expand-md  fixed-top bg-white shadow">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/resources/images/"></a>
    <div class="collapse navbar-collapse" id="navbarCollapse">
     
      
    </div>
  </div>
</nav> --%>

<main class="container mt110">
	<div class="row">
		<div class="col-md-12 col-lg-12">
			<div class="bg-white p-5 rounded">
				<div class="row">
					<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Supplier</div>
					<div class="col-md-6 col-lg-4 col-xs-12 ">
						<div class="row">
						<form action="addSupplier" method="get">
						<div class="col-12"><input type="submit" class="btn btn-mobi btn-sm float-end"  value="Add Supplier" class="btn btn-primary"  ></div>
						<!--  data-bs-toggle="modal" data-bs-target="#supplierModal"  -->
						</form>
						</div>
					</div>
				</div>
				
				<hr/>
				
				<div class="table-responsive">
				<table id="table" class="table">
				<thead>
				<tr class="bcf4f4f4 c617075 fw500"> 
				<th>ID</th>
				<th>Name</th>
				<th>Company Name</th>
				<th>Type</th>
				<th>Code</th>
				<th>Contact</th>
				<th>Phone</th>
				<th>Action</th>
				</tr>
				</thead>
<tbody class="c3f3f3f fw500">
<c:forEach var="tempSupplier" items="${suppliers}">

<c:url var="viewLink" value = "view">
<c:param name="id" value="${tempSupplier.id}"></c:param>
 </c:url>

				<tr>
				<td>${tempSupplier.id}</td>
				<td>${tempSupplier.name}</td>
				<td><a href="${viewLink} ">${tempSupplier.companyName}</a></td>
				<td>${tempSupplier.supplierType}</td>
				<td>${tempSupplier.supplierCode}</td>
				<td>${tempSupplier.contactPerson}</td>
				<td>${tempSupplier.phone}</td>
				
				<td><a  href="${viewLink}" class="btn btn-mobi btn-sm">View</a></td>
				</tr>

</c:forEach>
</tbody>
				</table>
				</div>
			</div>
		</div>
  </div>
</main>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript"  src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap5.min.js"></script>


	
<script>
	$(document).ready(function() {
    $('#table').DataTable({
		 "dom" : "<'row'<'col-sm-12 col-md-6'f><'col-sm-12 col-md-6'l>>" + "<'row'<'col-sm-12'tr>>" + "<'row'<'col-sm-12 col-md-6 mt-2'i><'col-sm-12 col-md-6 mt-2'p>>",
	 }
	);
} );
</script>

<!-- Modal -->
<div class="modal fade" id="supplierModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Supplier</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
      	<form:form method="POST" action="list"
						modelAttribute="supplier" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="companyName" class="form-label">Company Name</form:label>
									<form:input path="companyName" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="supplierCode" class="form-label">Supplier code</form:label>
									<form:input path="supplierCode" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="supplierType" class="form-label">Type</form:label>
									<form:input path="supplierType" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="gstNumber" class="form-label">GST Number</form:label>
									<form:input path="gstNumber" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentMode" class="form-label">Payment Mode</form:label>
									<form:input path="paymentMode" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankName" class="form-label">Bank Name</form:label>
									<form:input path="bankName" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankAccountNumber" class="form-label">Account Number</form:label>
									<form:input path="bankAccountNumber" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="ifscCode" class="form-label">IFSC</form:label>
									<form:input path="ifscCode" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="pan" class="form-label">PAN</form:label>
									<form:input path="pan" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="contactPerson" class="form-label">Contact Person</form:label>
									<form:input path="contactPerson" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="designation" class="form-label">Designation</form:label>
									<form:input path="designation" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="email" class="form-label">Email</form:label>
									<form:input path="email" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone" class="form-label">Phone</form:label>
									<form:input path="phone" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone_alternate" class="form-label">Alternative Phone</form:label>
									<form:input path="phone_alternate" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentTerms" class="form-label">Payment Terms</form:label>
									<form:input path="paymentTerms" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="isTds" class="form-label">Is TDS</form:label>
									<form:input path="isTds" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="tds" class="form-label">TDS(%)</form:label>
									<form:input path="tds" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>		
						
						<div class="row g-3">
							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="billingAddress" class="form-label">Billing Address</form:label>
									<form:input path="billingAddress" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-4  form-floating mb-3">
								<div class="mb-3">
									<form:label path="supplierShippingAddresses" class="form-label">Shipping Address</form:label>
									<form:input path="supplierShippingAddresses" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>						
						
						
						<input type="submit" value="submit" />

</form:form>
      </div>
      <div class="modal-footer">
       
       
      </div>
    </div>
  </div>
</div>

     
  </body>
</html>

