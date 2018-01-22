<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<style>
			<%@include file="/assets/css/createaccount.css"%>
			<%@include file="/assets/css/bootstrap.min.css"%>
		</style>
		
		<title>Create Account</title>
	</head>
	
	<body>
		<div class="container">
			<div class="col-xs-2"></div>
			<div class="col-xs-8 main">
			
			<h1>Create Account</h1>
				<form:form commandName="userProfile">
					<table>
						<tr>
							<td>User name: </td>
							<td><form:input path="username" id="username"/></td>
							<td><form:errors path="username" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Password: </td>
							<td><form:input path="password" id="password" /></td>
							<td><form:errors path="password" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Email: </td>
							<td><form:input path="email" id="email"/></td>
							<td><form:errors path="email" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Name: </td>
							<td><form:input path="name" id="name"/></td>
							<td><form:errors path="name" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Surname: </td>
							<td><form:input path="surname" id="surname"/></td>
							<td><form:errors path="surname" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Sex: </td>
							<td><form:input path="sex" id="sex" /></td>
							<td><form:errors path="sex" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Age: </td>
							<td><form:input path="age" id="age"/></td>
							<td><form:errors path="age" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Height: </td>
							<td><form:input path="height" id="height"/></td>
							<td><form:errors path="height" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Weight: </td>
							<td><form:input path="weight" id="weight"/></td>
							<td><form:errors path="weight" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Somatotype: </td>
							<td><form:input path="somatotype" id="somatotype"/></td>
							<td><form:errors path="somatotype" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Lifestyle: </td>
							<td><form:input path="lifestyle" id="lifestyle"/></td>
							<td><form:errors path="lifestyle" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Goal: </td>
							<td><form:input path="goal" id="goal"/></td>
							<td><form:errors path="goal" cssClass="error" /></td>
						</tr>
						<tr class="btnSubmit row ">
							<td>
								<input class="btn btn-primary" type="submit" value="Submit"/>
							</td>
						</tr>
					</table>
				</form:form>
			</div>
			<div class="col-xs-2"></div>
		</div>
	</body>
</html>