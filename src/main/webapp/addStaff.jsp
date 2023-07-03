<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Staff Sign Up</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
            <form action="StaffController" method="post" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="form-content" >
							<div class="form-header">
								<h3>Staff Sign Up</h3>
						</div>
					<p>Enter staff detail</p>
							<div class="form-row">
								<div class="form-holder">
									Staff ID : <br>
									<input type="text" name="staffid" placeholder=" Staff ID" class="form-control">
								</div>
								<div class="form-holder">
									<br>Name : <br>
									<input type="text" name="staffname" placeholder="Ali bin Ahmad" class="form-control">
								</div>
								<div class="form-holder">
									<br>Department : <br>
									<input type="radio" name="staffdepart" value="Paediatrics" class="form-control"/>Paediatrics 
									<input type="radio" name="staffdepart" value="Gynaecologist" class="form-control"/>Gynaecologist
									<input type="radio" name="staffdepart" value="General" class="form-control"/>General
								</div>
								<div class="form-holder">
									<br>Time : <br>
									<input type="radio" name="stafftime" value="8:00 am to 5:00 pm" class="form-control"/>8:00 am to 5:00 pm
									<input type="radio" name="stafftime" value="5:00 pm to 12:00 am" class="form-control"/>5:00 pm to 12:00 pm
								</div>
								<div class="form-holder">
									<br>Roles : <br>
									<input type="radio" name="staffroles" value="Nurse" class="form-control"/>Nurse
									<input type="radio" name="staffroles" value="Pharmacist" class="form-control"/>Pharmacist
								<div class="form-holder">
									<br>Sis ID : <br>
									<input type="text" name="sisid" placeholder="Sis ID" class="form-control">
								</div>
								<div class="form-holder">
									<br>Password : <br>
									<input type="text" name="staffpassword" placeholder="Password" class="form-control">
								</div>
							</div>
							<br>
							<div class="form-row">
								<div class="form-holder">
									<input type="submit" value="Submit" class="button">
									<input type="reset" value="Reset" class="button">	
								</div>
							</div>			
						</div>
					</div>
                </section>
 			</form>
		<!-- Template created and distributed by Colorlib -->
</body>
</html>