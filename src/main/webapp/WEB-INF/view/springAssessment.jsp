<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Assessment</title>
</head>
<body>
	<h1>Spring Assessment</h1>
	<form action="/evaluate/spring/test"  method="post">
		<label>Question 1: What is spring?</label><br>
		<input id="Q1-Opt1"  type="radio" name="Question1" value="J2EE App Server" required> J2EE App Server<br>
		<input id="Q1-Opt2"  type="radio" name="Question1" value="J2EE App Development Framework"> J2EE App Development Framework<br>
		<input id="Q1-Opt3"  type="radio" name="Question1" value="Configuration Management Tool"> Configuration Management Tool<br>
		<input id="Q1-Opt4"  type="radio" name=Question1 value="Build Tool"> Build Tool<br><br>
		
		<label>Question 2: What is the full form of IOC?</label><br>
		<input id="Q2-Opt1"  type="radio" name="Question2" value="Inversion Of Control"required> Inversion Of Control<br>
		<input id="Q2-Opt2"  type="radio" name="Question2" value="Interjection of Control"> Interjection of Control<br>
		<input id="Q2-Opt3"  type="radio" name="Question2" value="Internal Object Control">Internal Object Control<br>
		<input id="Q2-Opt4"  type="radio" name="Question2" value="In-built Object Control"> In-built Object Control<br><br>
		
		<label>Question 3: What is the full form of AOP?</label><br>
		<input id="Q3-Opt1"  type="radio" name="Question3" value="Anticipation of Properties" required> Anticipation of Properties<br>
		<input id="Q3-Opt2"  type="radio" name="Question3" value="Aspect Oriented Programming"> Aspect Oriented Programming<br>
		<input id="Q3-Opt3"  type="radio" name="Question3" value="Associated Object Programming"> Associated Object Programming<br>
		<input id="Q3-Opt4"  type="radio" name="Question3" value="Anti Object Programming"> Anti Object Programming<br><br>
		
		<label>Question 4: Which of the below is a spring container?</label><br>
		<input id="Q4-Opt1"  type="radio" name="Question4" value="View Resolver" required> View Resolver<br>
		<input id="Q4-Opt2"  type="radio" name="Question4" value="Application Context"> Application Context<br>
		<input id="Q4-Opt3"  type="radio" name="Question4" value="Handler Mapping"> Handler Mapping<br>
		<input id="Q4-Opt4"  type="radio" name="Question4" value="Dispatcher Servlet"> Dispatcher Servlet<br><br>
		
		<label>Question 5: Which is Spring's front Controller Implementation?</label><br>
		<input id="Q5-Opt1"  type="radio" name="Question5" value="Bean Factory" required> Bean Factory<br>
		<input id="Q5-Opt2"  type="radio" name="Question5" value="Class Path Application Context"> Class Path Application Context<br>
		<input id="Q5-Opt3"  type="radio" name="Question5" value="Application Context"> Application Context<br>
		<input id="Q5-Opt4"  type="radio" name="Question5" value="Dispatcher Servlet"> Dispatcher Servlet<br><br>
		
		<input type="submit" value="Submit Test" id="submitspring">
	</form>
	
</body>
</html>
