<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>View Patient</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="colorlib.com">

<!-- MATERIAL DESIGN ICONIC FONT -->
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

<!-- STYLE CSS -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- SECTION 1 -->
	<section>
		<div class="inner">
			<div class="form-content">
				<div class="form-header">
					<h3>View Patient</h3>
				</div>
				<div class="form-row">
						<div class="form-holder">
							<a href="PatientController?action=list" class="button">Patient List</a>
						</div>
					</div>
					<p>Patient Info</p>
					<div class="form-row">
						<div class="form-holder">
							ID: <c:out value="${patient.patientid}" />
						</div>
						<div class="form-holder">
							Name: <c:out value="${patient.patientname}" />
						</div>
						<div class="form-holder">
							Age: <c:out value="${patient.patientage}" />
						</div>
						<div class="form-holder">
							Email: <c:out value="${patient.patientemail}" />
						</div>
						<div class="form-holder">
							Race: <c:out value="${patient.patientrace}" />
						</div>
						<div class="form-holder">
							Gender: <c:out value="${patient.patientgender}" />
						</div>
						<div class="form-holder">
							Phone number: <c:out value="${patient.patientphonenum}" />
						</div>
					</div>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>