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

<main class="container mt110">
	<div class="row">
		<div class="col-md-12 col-lg-12">
			<div class="bg-white p-5 rounded">
				<div class="row">
					<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d"><b>Add Supplier</b></div>
					
				</div>
					<form:form method="POST" action="saveSupplierData"
						modelAttribute="supplier" accept-charset="utf-8">

						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="name" class="form-label">Name</form:label>
									<form:input path="name" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="companyName" class="form-label">Company Name</form:label>
									<form:input path="companyName" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="supplierCode" class="form-label">Supplier code</form:label>
									<form:input path="supplierCode" class="form-control" placeholder=""/>
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="supplierType" class="form-label">Type</form:label>
									<form:input path="supplierType" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="contactPerson" class="form-label">Contact Person</form:label>
									<form:input path="contactPerson" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="designation" class="form-label">Designation</form:label>
									<form:input path="designation" class="form-control" placeholder=""/>
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="gstNumber" class="form-label">GST Number</form:label>
									<form:input path="gstNumber" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentMode" class="form-label">Payment Mode</form:label>
									<form:input path="paymentMode" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankName" class="form-label">Bank Name</form:label>
									<form:input path="bankName" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="bankAccountNumber" class="form-label">Account Number</form:label>
									<form:input path="bankAccountNumber" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="ifscCode" class="form-label">IFSC</form:label>
									<form:input path="ifscCode" class="form-control" placeholder=""/>
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="pan" class="form-label">PAN</form:label>
									<form:input path="pan" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
					
						
						<div class="row g-3">
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="email" class="form-label">Email</form:label>
									<form:input path="email" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone" class="form-label">Phone</form:label>
									<form:input path="phone" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="phone_alternate" class="form-label">Alternative Phone</form:label>
									<form:input path="phone_alternate" class="form-control" placeholder=""/>
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="paymentTerms" class="form-label">Payment Terms</form:label>
									<form:input path="paymentTerms" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>
						
						<div class="row g-3">
							

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="isTds" class="form-label">Is TDS</form:label>
									<form:input path="isTds" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="tds" class="form-label">TDS(%)</form:label>
									<form:input path="tds" class="form-control" placeholder=""/>
								</div>
							</div>
							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="billingAddress" class="form-label">Billing Address</form:label>
									<form:input path="billingAddress" class="form-control" placeholder=""/>
								</div>
							</div>

							<div class="col-sm-3  form-floating mb-3">
								<div class="mb-3">
									<form:label path="supplierShippingAddresses" class="form-label">Shipping Address</form:label>
									<form:input path="supplierShippingAddresses" class="form-control" placeholder=""/>
								</div>
							</div>
						</div>		
						
						
						
						<input type="submit" value="submit" />

</form:form>
						
				<hr/>
				</div>
				</div>
  </div>
</main>