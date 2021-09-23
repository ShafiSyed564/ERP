<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>

<%@ page isELIgnored="false"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Products</title>


<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="${pageContext.request.contextPath}/resources/images/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="${pageContext.request.contextPath}/resources/images/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/resources/images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="${pageContext.request.contextPath}/resources/images/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/resources/images/favicon/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="${pageContext.request.contextPath}/resources/images/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#f1f5fa">


<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/fonts.css">
</head>
<body>





	<nav class="navbar navbar-expand-md navbar-dark b005baa">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img height="40"
				src="${pageContext.request.contextPath}/resources/images/mobi_logo.svg">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>


	<nav
		class="navbar navbar-expand-md navbar-dark ffixed-top bg-white shadow ">
		<div class="container">
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="${pageContext.request.contextPath}/Supplier/list">Supplier</a></li>
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="${pageContext.request.contextPath}/Customer/list">Customer</a></li>
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="${pageContext.request.contextPath}/Material/list">Raw Material</a></li>
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="${pageContext.request.contextPath}/Product/list">Product</a></li>
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="${pageContext.request.contextPath}/SalesOrder/list">Sale Order</a></li>
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="${pageContext.request.contextPath}/WorkOrder/list">Work Order</a></li>
					<li class="nav-item"><a class="nav-link c787f8c"
						aria-current="page" href="#">Approval</a></li>
				</ul>




			</div>
		</div>
	</nav>
</body>
</html>
