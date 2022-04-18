<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="webjars/jquery/1.9.1/jquery.min.js" rel="stylesheet">
<link href="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"
	rel="stylesheet">
<link href="webjars/popper.js/1.12.9-1/umd/popper.min.js"
	rel="stylesheet">
<c:url value="/css/style.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<title>Welcome Back</title>
</head>
<body>
	<form:form modelAttribute="customer" method="post">
		<form:label path="customerid">User Id:</form:label>
		<form:input path="customerid" />

		<form:label path="password">Password:</form:label>
		<form:input path="password" />

		<button type="submit" value="submit">Submit</button>
	</form:form>
	
</body>
</html>