<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hibernate Assessment</title>
</head>
<body>
	<h1>Hibernate Assessment</h1>
	<form action="/evaluate/hibernate/test" method="post">
		<label>Question 1: What is the full form of ORM?</label><br>
		<input id="Q1-Opt1"  type="radio" name="Question1" value="Object Random Memory" required> Object Random Memory<br>
		<input id="Q1-Opt2"  type="radio" name="Question1" value="Object Relational Mismatch"> Object Relational Mismatch<br>
		<input id="Q1-Opt3"  type="radio" name="Question1" value="Object Relational Mapping"> Object Relational Mapping<br>
		<input id="Q1-Opt4"  type="radio" name=Question1 value="Object Random Mapping"> Object Random Mapping<br><br>
		
		<label>Question 2: In Hibernate, based on directionality, what could be the mappings?</label><br>
		<input id="Q2-Opt1"  type="radio" name="Question2" value="uni-directional & bi-directional" required> uni-directional & bi-directional<br>
		<input id="Q2-Opt2"  type="radio" name="Question2" value="one-to-many & many-to-one">one-to-many & many-to-one<br>
		<input id="Q2-Opt3"  type="radio" name="Question2" value="inheritance mapping">inheritance mapping<br>
		<input id="Q2-Opt4"  type="radio" name="Question2" value="north & south mapping"> north & south mapping<br><br>
		
		<label>Question 3: In an Hibernate application, which file would have datasource details?</label><br>
		<input id="Q3-Opt1"  type="radio" name="Question3" value="hibernate mapping file" required> hibernate mapping file<br>
		<input id="Q3-Opt2"  type="radio" name="Question3" value="configuration file"> configuration file<br>
		<input id="Q3-Opt3"  type="radio" name="Question3" value="Model/Entity class"> Model/Entity class<br>
		<input id="Q3-Opt4"  type="radio" name="Question3" value="HibernateUtil class"> HibernateUtil class<br><br>
		
		<label>Question 4: What is the full form of HQL?</label><br>
		<input id="Q4-Opt1"  type="radio" name="Question4" value="High-level Query Language" required> High-level Query Language<br>
		<input id="Q4-Opt2"  type="radio" name="Question4" value="Hidden Query Language"> Hidden Query Language<br>
		<input id="Q4-Opt3"  type="radio" name="Question4" value="Hibernate Query Language"> Hibernate Query Language<br>
		<input id="Q4-Opt4"  type="radio" name="Question4" value="Hibernate Quadratic Language"> Hibernate Quadratic Language<br><br>
		
		<label>Question 5: In an Hibernate application, concurrency can be controlled by setting?</label><br>
		<input id="Q5-Opt1"  type="radio" name="Question5" value="concurrency level" required> concurrency level<br>
		<input id="Q5-Opt2"  type="radio" name="Question5" value="one-to-one mapping"> one-to-one mapping<br>
		<input id="Q5-Opt3"  type="radio" name="Question5" value="many-to-one bi-directional mapping"> many-to-one bi-directional mapping<br>
		<input id="Q5-Opt4"  type="radio" name="Question5" value="isolation levels"> isolation levels<br><br>
		
		<input type="submit" value="Submit Test" id="submithibernate">
	</form>
	

</body>
</html>
