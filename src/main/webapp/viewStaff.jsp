<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Order</title>
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
					<h3>View Staff</h3>
				</div>
				<div class="form-row">
						<div class="form-holder">
							<a href="StaffController?action=list" class="button">Staff List</a>
						</div>
					</div>
					<p>Staff Info</p>
					<div class="form-row">
						<div class="form-holder">
							Staff ID: <c:out value="${staff.staffid}" />
						</div>
						<div class="form-holder">
							Name: <c:out value="${staff.staffname}" />
						</div>
						<div class="form-holder">
							Department: <c:out value="${staff.staffdepart}" />
						</div>
						<div class="form-holder">
							Time: <c:out value="${staff.stafftime}" />
						</div>
						<div class="form-holder">
							Roles: <c:out value="${staff.staffroles}" />
						</div>
						<div class="form-holder">
							Sis ID: <c:out value="${staff.sisid}" />
						</div>
						<div class="form-holder">
							Password: <c:out value="${staff.staffpassword}" />
						</div>
					</div>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>