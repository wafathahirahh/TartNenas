
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html>
<title>PROFILE</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/view_appointment.css">
<style>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
   

   <style>

        /**/

        * {
        margin: 0;
        padding: 0;
        }

        button {
        border: none;
        cursor: pointer;
        appearance: none;
        background-color: inherit;
        }

        button:hover {
        transform: rotate(360deg);
        }

        img {
        width: 40px;
        height: 40px;
        }

        /**/

        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            ;
        }
        
        ::-webkit-scrollbar {
    	display: none;
		}

        .topnav {
            overflow: hidden;
            background-color: #e9ac20;
        }

        .topnav a {
            float: right;
            color: #000000;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 15px;
        }

        .logo1 {
            display: inline-block;
            vertical-align: top;
            width: 120px;
            height: 50px;
            padding: 15px;
        }
        
        .name {
            display: inline-block;
            vertical-align: top;
            width: 200px;
            height: 50px;
            margin: 15px;
            font-size: 15px;
            text-align: center;
        }

        .logo2 {
            display: inline-block;
            vertical-align: top;
            width: 300px;
            height: 150px;
           margin-top: 15px;

        }

        .box{
		   margin-left:50px;
		   width:300px;
		   height:300px;
		   text-align:left;
		   position:relative;
		   left:150px;
		}
   
        /* Dropdown container - needed to position the dropdown content */
        .dropdown {
        float: right;
        overflow: hidden;
        }

        /* Style the dropdown button to fit inside the topnav */
        .dropdown .dropbtn {
        font-size: 15px;
        border: none;
        outline: none;
        color: rgb(0, 0, 0);
        padding: 14px 10px;
        background-color: inherit;
        font-family: inherit;
        margin: 0;
        }

        /* Style the dropdown content (hidden by default) */
        .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        }

        /* Style the links inside the dropdown */
        .dropdown-content a {
        float: none;
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
        }

        /* Add a dark background on topnav links and the dropdown button on hover */
        .topnav a:hover, .dropdown:hover .dropbtn {
        background-color: #555;
        color: white;
        }

        /* Add a grey background to dropdown links on hover */
        .dropdown-content a:hover {
        background-color: #ddd;
        color: black;
        }

        /* Show the dropdown menu when the user moves the mouse over the dropdown button */
        .dropdown:hover .dropdown-content {
        display: block;
        }
    </style>
</head>
<body>
     <input type="button" value="Back" onclick="history.back()">
     

</body>
</html>
  <!-- NAVIGATION BAR END HERE -->
  
  <main>
   <h3>Appointment List</h3>
				</div>
					<div class="form-row">
						<div class="form-holder">
							<a href="addAppointment.jsp" class="button">New Appointment</a><br><br>
						</div>
					</div>
						<table id="mytable" style="width:100%;text-align:left;">
							<tr>
								<th>ID</th>
								<th>Date</th>
								<th>Time</th>
								<th>Department</th>
								<th>Doctor incharge</th>
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${appointments}" var="app">
								<tr>
									<td><c:out value="${app.appid}" /></td>
									<td><c:out value="${app.appdate}" /></td>
									<td><c:out value="${app.apptime}" /></td>
									<td><c:out value="${app.appdepartment}" /></td>
									<td><c:out value="${app.docincharge}" /></td>
									<td><a href="AppointmentController?action=view&appid=<c:out value="${app.appid}"/>" class="button">View</a>
									<a href="AppointmentController?action=drop&appid=<c:out value="${app.appid}" />" class="button">Delete</a>
									<a href="UpdateAppController2?action=update&appid=<c:out value="${app.appid}"/>" class="button">Update</a>
									</td>
							</c:forEach>
          </table>
        </main>
  <!-- FOOTER START HERE -->
  
</body>

</html>