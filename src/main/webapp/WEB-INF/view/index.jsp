<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Assessment - Home Page</title>
</head>
<body>
<h1>Welcome to Online Assessment</h1>
<h2>Login</h2>
<form action="/login" method="post">
			<table style="with: 50%">
				<tr>
					<td><label>Email ID:</label></td>
					<td><input type="text" name="email" id="email" required /></td>
				</tr>
				<tr>
					<td><label>Password:</label></td>
					<td><input type="password" name="password" id="password" required/></td>
				</tr>
				</table>
			<input type="submit" value="LOGIN" id="login" /></form>
			<label>New User?</label>
			<a href="register">register here</a>
</body>
</html>