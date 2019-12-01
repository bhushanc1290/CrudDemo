<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<h1>Registration</h1>
	<form action="registration/do" method="post">
		<table style="with: 50%">
			<tr>
				<td><label>First Name</label></td>
				<td><input type="text" name="firstName" id="firstname"
					pattern="[a-zA-Z]{1,15}" required="required" /></td>
			</tr>
			<tr>
				<td><label>Last Name</label></td>
				<td><input type="text" name="lastName" id="lastname"
					required="required" pattern="[a-zA-Z]{1,15}" /></td>
			</tr>
			<tr>
				<td><label>Email ID</label></td>
				<td><input type="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><input type="password" name="password" id="password" min="8" /></td>
			</tr>
		</table>
		<input type="submit" value="REGISTER" id="register" />
	</form>
</body>
</html>
