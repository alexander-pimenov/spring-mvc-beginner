<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
	<head>
		<title><spring:message code="products.page.title"/></title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
		      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
		      crossorigin="anonymous">
		<link rel="shortcut icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
		<link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1><spring:message code="products.page.title"/></h1>
					<p><spring:message code="addProduct.page.description"/></p>
				</div>
			</div>
		</section>
		<section class="container">
			<form:form method="post" modelAttribute="newProduct" class="form-horizontal">
				<fieldset>
					<legend class="col-lg-6 border-bottom pl-0 mb-4">
						<spring:message code="addProduct.form.legend"/>
					</legend>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="productId">
							<spring:message code="addProduct.form.productId.label"/>
						</label>
						<div class="col-lg-3">
							<form:input path="productId" id="productId" type="text" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="name">
							<spring:message code="addProduct.form.name.label"/>
						</label>
						<div class="col-lg-3">
							<form:input path="name" id="name" type="text" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="description">
							<spring:message code="addProduct.form.desc.label"/>
						</label>
						<div class="col-lg-3">
							<form:textarea path="description" id="description" rows="3" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="unitPrice">
							<spring:message code="addProduct.form.price.label"/>
						</label>
						<div class="col-lg-3">
							<form:input path="unitPrice" id="unitPrice" type="number" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="manufacturer">
							<spring:message code="addProduct.form.brand.label"/>
						</label>
						<div class="col-lg-3">
							<form:input path="manufacturer" id="manufacturer" type="text" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="category">
							<spring:message code="addProduct.form.category.label"/>
						</label>
						<div class="col-lg-3">
							<form:input path="category" id="category" type="text" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-lg-2 text-right" for="unitsInStock">
							<spring:message code="addProduct.form.unitsInStock.label"/>
						</label>
						<div class="col-lg-3">
							<form:input path="unitsInStock" id="unitsInStock" type="number" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-2 text-right">
							<spring:message code="addProduct.form.condition.label"/>
						</label>
						<div class="col-lg-3">
							<div class="form-check form-check-inline">
								<form:radiobutton path="condition" id="conditionNew" value="New"
								                  cssClass="form-check-input"/>
								<spring:message code="addProduct.form.condition.new.label"/>
							</div>
							<div class="form-check form-check-inline">
								<form:radiobutton path="condition" id="conditionOld" value="Old"
								                  cssClass="form-check-input"/>
								<spring:message code="addProduct.form.condition.old.label"/>
							</div>
							<div class="form-check form-check-inline">
								<form:radiobutton path="condition" id="conditionRef" value="Refurbished"
								                  cssClass="form-check-input"/>
								<spring:message code="addProduct.form.condition.ref.label"/>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<div class="offset-lg-2 col-lg-3">
							<input type="submit" id="btnAdd" class="btn btn-primary"
							       value="<spring:message code="addProduct.form.submit.button"/>"/>
						</div>
					</div>
				</fieldset>
			</form:form>
		</section>
	</body>
</html>