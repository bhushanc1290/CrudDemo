<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<title>All Tests Details</title>
</head>
<body>

	<h1><label>List of All Users</label></h1>
	<table border="2">
		<thead>
			<tr>
				<td>Test Date</td>
				<td>Assessment</td>
				<td>Test Marks</td>
				<td>Email ID</td>
				<td>Total Marks</td>
				<td>Result</td>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="listValue" items="${lists}" varStatus="loop">
				<tr>
					<td><span id="testDate${loop.count}">${listValue.testDate}</span></td>
					<td><span id="assessment${loop.count}">${listValue.assessment}</span></td>
					<td><span id="marks${loop.count}">${listValue.marks}</span></td>
					<td><span id="email${loop.count}">${listValue.email}</span></td>
					<td><span id="totalMarks${loop.count}">${listValue.totalMarks}</span></td>
					<td><span id="result${loop.count}">${listValue.result }</span></td>
				</tr>
			</c:forEach>

		</tbody>

	</table>
</body>

</html>