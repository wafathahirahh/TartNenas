<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Staff List</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
        		<!-- SECTION 1 -->
                <h2></h2>
	<section>
		<div class="inner">
			<div class="form-content">
				<div class="form-header">
					<h3>Staff List</h3>
				</div>
					<div class="form-row">
						<div class="form-holder">
							<a href="addStaff.jsp" class="button">New Staff</a>
						</div>
					</div>
						<table style="width:100%;text-align:left;">
							<tr>
								<th>Staff ID</th>
								<th>Name</th>
								<th>Department</th>
								<th>Time</th>
								<th>Roles</th>
								<th>Sis ID</th>
								<th>Password</th>
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${staffs}" var="staff">
								<tr>
									<td><c:out value="${staff.staffid}" /></td>
									<td><c:out value="${staff.staffname}" /></td>
									<td><c:out value="${staff.staffdepart}" /></td>
									<td><c:out value="${staff.stafftime}" /></td>
									<td><c:out value="${staff.staffroles}" /></td>
									<td><c:out value="${staff.sisid}" /></td>
									<td><c:out value="${staff.staffpassword}" /></td>
									<td><a href="StaffController?action=view&staffid=<c:out value="${staff.staffid}"/>" class="button">View</a>
									<a href="StaffController?action=delete&staffid=<c:out value="${staff.staffid}" />" class="button">Delete</a>
									<a href="UpdateStaffController?action=update&staffid=<c:out value="${staff.staffid}"/>" class="button">Update</a>
									</td>
							</c:forEach>
						</table>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>