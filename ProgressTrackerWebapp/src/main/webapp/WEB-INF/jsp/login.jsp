<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login to ProgressTracker.com</title>
	<style type="text/css">
		.errorblock {
			color: #ff0000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
	</style>
</head>
<body>
	<h1>Welcome to ProgressTrackerWebapp.com</h1>
	<br/>
	<h3>Login</h3>
	<c:if test="${not empty error}">
		<div class="errorblock">
			Your login was unsuccessful. <br/>
			Caused by: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
	<c:if test="${not empty accCreated}">
		<div class="errorblock">
			Your account was created successfully. You can now log in. <br/>
		</div>
	</c:if>
	<c:if test="${not empty accNotCreated}">
		<div class="errorblock">
			Something went wrong during account creation. Try again. <br/>
		</div>
	</c:if>
	
	<form action="login" name="f" method="POST">
		<table>
			<tr>
				<td>User:</td>
				<td><input type="text" name="username" value=""></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="reset" name="reset"></td>
			</tr>
		</table>
	</form>
	
	No account yet? <br/>
	<a href="/ProgressTrackerWebapp/createAccount.html">Create a new one!</a> <br/>

</body>
</html>