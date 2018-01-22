<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login to ProgressTracker.com</title>
		<style>
			<%@include file="/assets/css/bootstrap.min.css"%>
			<%@include file="/assets/css/login.css"%>
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
		<script src="<c:url value="/assets/js/createAccountCtrl.js"/>"></script>
		<script src="<c:url value="/assets/js/loginCtrl.js"/>"></script>
		
</head>
<body ng-app="Account">
	<div class="container" ng-controller="loginCtrl">
		<div class="col-xs-2">
		</div>
		<div class="col-xs-8">
		
	<h1>Welcome to ProgressTrackerWebapp.com</h1>
	<br/>
	<h3>Login</h3>

	
	<form action="login" name="f" method="POST">
		<table>
			<tr >
				<div ng-show="isError" class="alert alert-warning">
					<p>			Your login was unsuccessful. <br/>
			Caused by: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
				</div>
			</tr>
			<tr class="row">
				<td>User:</td>
				<td><input type="text" ng-model="login" name="username" value=""></td>
			</tr>
			<tr class="row">
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr class="row">
				<td ><input class="btn btn-info" type="reset" name="reset"></td>
				<td ><input class="btn btn-success" type="submit" name="Submit" value="Submit"></td>
			</tr>	
		
		</table>
	</form>
	<div class="create_account row">
	No account yet? <br/>
	<a href="/ProgressTrackerWebapp/createAccount.html">Create a new one!</a> <br/>
		
	</div>
	
		</div>
		<div class="col-xs-2">
		</div>
			<div>
			<input id="jstlErrorValue" value="${error}" type="hidden"/>
			<input id="jstlErrorMessageValue" value="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message} " type="hidden"/>
			</div>
	</div>
	

</body>
</html>