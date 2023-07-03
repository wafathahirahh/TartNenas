<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Patient</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
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
        
        form{
	     	margin-left: 350px;
	     		margin-top:45px; }
	     	
	  input[type=text],[type=password]{
         width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;}
  
  .btn{
  background-color: #e9ac20;
            border: none;
            color: white;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
	     	margin:10px;	
	     	border-radius: 4px;
	     	text-decoration: none;}
    </style>
</head>

<body>
   
    </div>
  <!-- NAVIGATION BAR START HERE -->
    
     <div class="topnav">
        <img class="logo1" src="IMG/kkmlogo2.png">
        <P class="name">HEALTH CLINIC<BR> BY MINISTRY OF HEALTH</P>

        <a href="#about"></a><div class="dropdown">
            <button class="dropbtn"> <img src="https://i.ibb.co/hmXKyPz/profile-removebg-preview.png" alt="profile-removebg-preview" border="0">
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="PatientController?action=list">PROFILE</a>
              <a href="<%=request.getContextPath()%>/LogOutController">LOGOUT</a>

            </div>
          </div></a>

        <a href="AppointmentController?action=list">APPOINTMENT</a>
        <a href="homepage.jsp">HOME</a>
    </div>
<br><br>

  <!-- NAVIGATION BAR END HERE -->
    <h3 style="text-align:center;">PATIENT PROFILE</h3>

	<form action="UpdatePatientController" method="post">
		Name: <br>
		<input type="text" id="patientname" name="patientname" value="<c:out value="${patient.patientname}"/>"/><br>
		<br>Age: <br>
		<input type="text" id="patientage" name="patientage" value="<c:out value="${patient.patientage}"/>"/><br>
		<br>Email: <br>
		<input type="text" id="patientemail" name="patientemail" value="<c:out value="${patient.patientemail}"/>"/><br>
		<br>Race: <br>
		<input type="radio" id="patientrace" name="patientrace" value="Malay" value="<c:out value="${patient.patientrace}"/>"/>Malay<br>
		<input type="radio" id="patientrace" name="patientrace" value="Chinese" value="<c:out value="${patient.patientrace}"/>"/>Chinese<br>
		<input type="radio" id="patientrace" name="patientrace" value="India" value="<c:out value="${patient.patientrace}"/>"/>India<br>
		<input type="radio" id="patientrace" name="patientrace" value="Others" value="<c:out value="${patient.patientrace}"/>"/>Others<br>
		<br>Gender: <br>
		<input type="radio" id="patientgender" name="patientgender" value="Male" value="<c:out value="${patient.patientgender}"/>"/>Male<br>
		<input type="radio" id="patientgender" name="patientgender" value="Female" value="<c:out value="${patient.patientgender}"/>"/>Female<br>
		<br>Phone number: <br>
		<input type="text" id="patientphonenum" name="patientphonenum" value="<c:out value="${patient.patientphonenum}"/>"/><br>
		<br>Password: <br>
		<input type="password" id="patientemail" name="patientpassword" value="<c:out value="${patient.patientpassword}"/>"/><br>
		
		<input type="hidden" id="patientid" name="patientid" value="<c:out value="${patient.patientid}"/>"/><br>
		
		<input type="submit" value=Update class=btn>
		<input type="reset" value="Reset" class=btn>
	</form>
</body>
</html>
