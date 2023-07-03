<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<form action="UpdateStaffController" method="post">
		Name: <br>
		<input type="text" id="staffname" name="staffname" value="<c:out value="${staff.staffname}"/>"/><br>
		<br>Department: <br>
		<input type="radio" id="staffdepart" name="staffdepart" value="Paediatrics" value="<c:out value="${staff.staffdepart}"/>"/>Paediatrics<br>
		<input type="radio" id="staffdepart" name="staffdepart" value="Gynaecologist" value="<c:out value="${staff.staffdepart}"/>"/>Gynaecologist<br>
		<input type="radio" id="staffdepart" name="staffdepart" value="General" value="<c:out value="${staff.staffdepart}"/>"/>General<br>
		<br>Time: <br>
		<input type="radio" id="stafftime" name="stafftime" value="8:00 am to 5:00 pm" value="<c:out value="${staff.stafftime}"/>"/>8:00 am to 5:00 pm<br>
		<input type="radio" id="stafftime" name="stafftime" value="5:00 pm to 12:00 am" value="<c:out value="${staff.stafftime}"/>"/>5:00 pm to 12:00 am<br>
		<br>Roles: <br>
		<input type="radio" id="staffroles" name="staffroles" value="Nurse" value="<c:out value="${staff.staffroles}"/>"/>Nurse<br>
		<input type="radio" id="staffroles" name="staffroles" value="Pharmacist" value="<c:out value="${staff.staffroles}"/>"/>Pharmacist<br>
		<br>Sis ID: <br>
		<input type="text" id="sisid" name="sisid" value="<c:out value="${staff.sisid}"/>"/><br>
		<br>Password: <br>
		<input type="text" id="staffpassword" name="staffpassword" value="<c:out value="${staff.staffpassword}"/>"/><br>
		
		<input type="hidden" id="staffid" name="staffid" value="<c:out value="${staff.staffid}"/>"/><br>
		
		<input type="submit" value=Update>
		<input type="reset" value="Reset">
	</form>
</body>
</html>
