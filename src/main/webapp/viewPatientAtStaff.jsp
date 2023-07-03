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
	<!-- SECTION 1 -->
	<section>
		<div class="inner">
			<div class="form-content">
				<div class="form-header">
					<h3>View Patient</h3>
				</div>
				<div class="form-row">
						<div class="form-holder">
							<a href="PatientAtStaff?action=list" class="button">Patient List</a>
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