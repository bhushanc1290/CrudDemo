<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<title>All User Details</title>
</head>
<body>

	<h1><label>List of All Users</label></h1>
	<table border="2">
		<thead>
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Email ID</td>
				<td>User Type</td>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="listValue" items="${lists}" varStatus="loop">
				<tr>
					<td><span id="firstName${loop.count}">${listValue.firstName}</span></td>
					<td><span id="lastName${loop.count}">${listValue.lastName}</span></td>
					<td><span id="email${loop.count}">${listValue.email}</span></td>
					<td><span id="userType${loop.count}">${listValue.userType}</span></td>
				</tr>
			</c:forEach>

		</tbody>

	</table>
</body>

</html>