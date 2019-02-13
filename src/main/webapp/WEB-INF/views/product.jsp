<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
	<head>
		<title><c:out value="${product.name}"/></title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
		      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
		      crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
		      integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
		      crossorigin="anonymous">
		<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
		<link rel="shortcut icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
		<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1><spring:message code="products.page.title"/></h1>
				</div>
			</div>
		</section>
		<section class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="card">
						<div class="card-body p-3">
							<h3 class="card-title text-center"><c:out value="${product.name}"/></h3>
							<p class="card-text"><c:out value="${product.description}"/></p>
							<p class="card-text">
								<strong><spring:message code="product.card.productId.label"/> :</strong>
								<span class="badge badge-warning text-white"> <!--
									--><c:out value="${product.productId}"/></span>
							</p>
							<p class="card-text">
								<strong>
									<spring:message code="product.card.brand.label"/> :
								</strong> <c:out value="${product.manufacturer}"/>
							</p>
							<p class="card-text">
								<strong>
									<spring:message code="product.card.category.label"/> :
								</strong> <c:out value="${product.category}"/>
							</p>
							<p class="card-text">
								<strong>
									<spring:message code="product.card.unitsInStock.label"/> :
								</strong> <c:out value="${product.unitsInStock}"/>
							</p>
							<h4 class="pb-3">
								<c:out value="${product.unitPrice}"/> <!--
								--><spring:message code="product.card.currencyCode"/>
							</h4>
							<div class="row justify-content-center">
								<a href="#" class="btn btn-warning btn-large mr-3">
									<span class="text-white">
										<i class="fas fa-shopping-cart fa-flip-horizontal"></i> <!--
										--><spring:message code="product.card.orderNow.button"/>
									</span>
								</a><!--
								--><a href="<spring:url value="/market/products"/>"
								      class="btn btn-light btn-large border text-secondary">
									<span>
										<i class="far fa-hand-pointer rotate-270-flip-horizontal"></i> <!--
										--><spring:message code="product.card.back.button"/>
									</span>
							</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>