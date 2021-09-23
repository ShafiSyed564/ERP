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

<main class="container mt110">
	<div class="row">
		<div class="col-md-12 col-lg-12">
			<div class="bg-white p-5 rounded">
				<div class="row">
					<div class="col-md-6 col-lg-8 col-xs-12 c5d5d5d">Work Order</div>
					<div class="col-md-6 col-lg-4 col-xs-12 ">
						<div class="row">
						<form action="addWorkOrder" method="get">
						<div class="col-12"><input type="submit" class="btn btn-mobi btn-sm float-end"  value="Add WorkOrder" class="btn btn-primary"  ></div>
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
				<th>SalesOrder ID</th>
				<th>Client ID</th>
				<th>Client Name</th>
				<th>Value</th>
				<th>Delivery Date</th>
				<th>Status</th>
				<th>Action</th>
				</tr>
				</thead>
<tbody class="c3f3f3f fw500">
<c:forEach var="tempWorkOrder" items="${workOrders}">

<c:url var="viewLink" value = "view">
<c:param name="id" value="${tempWorkOrder.id}"></c:param>
 </c:url>

				<tr>
				<td><a href="${viewLink} ">${tempWorkOrder.id}</a></td>
				<td>${tempWorkOrder.salesOrder.id}</td>
				<td>${tempWorkOrder.salesOrder.customer.id}</td>
				<td>${tempWorkOrder.salesOrder.customer.name}</td>
				<td></td>
				<td>${tempWorkOrder.deliveryDate}</td>
				<td>${tempWorkOrder.status}</td>
				
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

     
  </body>
</html>

