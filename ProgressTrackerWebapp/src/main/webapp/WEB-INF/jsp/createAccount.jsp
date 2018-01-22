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
			<%@include file="/assets/css/bootstrap.min.css"%>
			<%@include file="/assets/css/createaccount.css"%>
			
		</style>
    
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
		<script src="<c:url value="/assets/js/createAccountCtrl.js"/>"></script>

		<title>Create Account</title>
	</head>
	
	<body>
		<div class="container" ng-app="Account">
			<div class="col-xs-2"></div>
			<div class="col-xs-8 main" ng-controller="createAccountCtrl">
			
			<h1>Create Account</h1>
				<form:form commandName="userProfile">
					<table>
						<tr>
							<td>User name: </td>
							<td><form:input path="username" ng-model="firstName" id="username"/></td>
							<td><form:errors path="username" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Password: </td>
							<td><form:input type="password"  path="password" id="password"/></td>
							<td><form:errors path="password" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Email: </td>
							<td><form:input type="email" path="email" id="email"/></td>
							<td><form:errors path="email" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Name: </td>
							<td><form:input path="name" id="name"/></td>
							<td><form:errors path="name" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Surname: </td>
							<td><form:input path="surname" ng-model="lastName" id="surname"/></td>
							<td><form:errors path="surname" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Sex: </td>
							<td>
								<form:select path="sex"  ng-model="sexDropDown" ng-options="x for x in sex" id="sex">
								</form:select>
							</td>
							<td><form:errors path="sex" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Age: </td>
							<td><form:select path="age" ng-model="ageDropDown" id="age" >
								<option ng-repeat="n in [] | range:1:121 ">{{n}}</option>
								</form:select>
							</td>
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
							<td><form:select path="somatotype" ng-model="somatotypeDropDown" ng-options="x for x in somatotype" id="somatotype">
								</form:select>							
							</td>
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