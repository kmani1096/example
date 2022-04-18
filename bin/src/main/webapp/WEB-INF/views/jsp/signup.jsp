<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Join US</title>
</head>
<body>

	<form:form modelAttribute="customer" method="post">
		<form:label path="customerid">User Id:</form:label>
		<form:input path="customerid" />

		<form:label path="firstname">First Name:</form:label>
		<form:input path="firstname" />

		<form:label path="lastname">Last Name:</form:label>
		<form:input path="lastname" />

		<form:label path="emailid">Email:</form:label>
		<form:input path="emailid" />

		<form:label path="password">Password:</form:label>
		<form:input path="password" />

		<form:label path="phonenumber">PhoneNumber:</form:label>
		<form:input path="phonenumber" />

		<form:label path="country">Country:</form:label>
		<form:input path="country" />

		<button type="submit" value="submit">Submit</button>
	</form:form>
</body>
</html>