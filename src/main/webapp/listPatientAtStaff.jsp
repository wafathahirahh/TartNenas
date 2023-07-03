
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
            width: 120px;
            height: 50px;
            margin: 15px;
            font-size: 15px;
            padding-bottom: 10px;
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
		   font- family:arial;
		   text-align:left;
		   position:relative;
		   left:150px;
		}

        .img{
		 width:1600px;
		 height:200px;
		 
		
		}



        footer {
            background-color: #e9ac20;
            color: #000000;
        }

        footer * {
            font-family: "Poppins", sans-serif;
            box-sizing: border-box;
            border: none;
            outline: none;
            font-size:x-small;
        }

        .row {
            padding: 1em 1em;
        }

        .row.primary {
            display: grid;
            grid-template-columns: 300px 1fr 1fr 1fr;
        }

        .column {
            width: 100%;
            display: flex;
            flex-direction: column;
            padding: 10px;
            padding-bottom: 0px;
        }

        h3 {
            width: 100%;
            text-align: left;
            color: #000000;
            white-space: nowrap;
        }

        .about p {
            text-align: justify;
            line-height: 2;
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
        color: black;
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
		
		.pic1{
		width :500px;
		height : 300px;
		position :absolute;
		left: 700px;
		top:200px;}

    </style>
</head>
<body>
     <!-- NAVIGATION BAR START HERE -->
    
     <div class="topnav">
        <img class="logo1" src="../IMG/kkmlogo2.png">
        <P class="name">HEALTH CLINIC<BR> BY MINISTRY OF HEALTH</P>

        <a href="#about"></a><div class="dropdown">
            <button class="dropbtn"> <img src="https://i.ibb.co/hmXKyPz/profile-removebg-preview.png" alt="profile-removebg-preview" border="0">
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="PatientController?action=list">PROFILE</a>
              <a href="index.html">LOGOUT</a>

            </div>
          </div></a>
        <a href="AppointmentController?action=list">APPPOINTMENT</a>
        <a href="medicineController?action=list">MEDICINE</a>
        <a href="PatientController?action=list">PATIENT LIST</a>
        <a href="homepageStaff.jsp">HOME</a>
    </div>



    <!-- NAVIGATION BAR END HERE -->

  <main>
    <h1>PATIENT PROFILE</h1>
    <table style="width:100%;text-align:left;border:3 ">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Age</th>
								<th>Email</th>
								<th>Race</th>
								<th>Gender</th>
								<th>Phone Number</th>
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${patients}" var="patient">
								<tr>
									<td><c:out value="${patient.patientid}" /></td>
									<td><c:out value="${patient.patientname}" /></td>
									<td><c:out value="${patient.patientage}" /></td>
									<td><c:out value="${patient.patientemail}" /></td>
									<td><c:out value="${patient.patientrace}" /></td>
									<td><c:out value="${patient.patientgender}" /></td>
									<td><c:out value="${patient.patientphonenum}" /></td>
									<td><a href="PatientController?action=view&patientid=<c:out value="${patient.patientid}"/>" class="button">View</a>
									<a href="PatientController?action=delete&patientid=<c:out value="${patient.patientid}" />" class="button">Delete</a>
									<a href="UpdatePatientController?action=update&patientid=<c:out value="${patient.patientid}"/>" class="button">Update</a>
									</td>
							</c:forEach>
		
  </main>
  <!-- FOOTER START HERE -->
  
</body>

</html>