<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Account</title>
</head>
<body>
	<h1>Create Account</h1>
	<form:form commandName="userProfile">
		<table>
			<tr>
				<td>User name: </td>
				<td><form:input path="username"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><form:input path="password"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><form:input path="email"/></td>
			</tr>
			<tr>
				<td>Name: </td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Surname: </td>
				<td><form:input path="surname"/></td>
			</tr>
			<tr>
				<td>Sex: </td>
				<td><form:input path="sex"/></td>
			</tr>
			<tr>
				<td>Age: </td>
				<td><form:input path="age"/></td>
			</tr>
			<tr>
				<td>Height: </td>
				<td><form:input path="height"/></td>
			</tr>
			<tr>
				<td>Weight: </td>
				<td><form:input path="weight"/></td>
			</tr>
			<tr>
				<td>Somatotype: </td>
				<td><form:input path="somatotype"/></td>
			</tr>
			<tr>
				<td>Lifestyle: </td>
				<td><form:input path="lifestyle"/></td>
			</tr>
			<tr>
				<td>Goal: </td>
				<td><form:input path="goal"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>