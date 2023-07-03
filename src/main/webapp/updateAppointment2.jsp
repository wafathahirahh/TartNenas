<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Appointment</title>
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
  			margin-top:45px;}
        
	  input[type=text],[type=password],[type=date],[type=time],[type=number]{
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
	     	
	     	 .btnback{
  			background-color: #e9ac20;
            border: none;
            color: white;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
	     	margin:10px;	
	     	border-radius: 4px;
	     	text-decoration: none;
	     	text-align:center;}
    </style>
</head>
<body>
<!-- NAVIGATION BAR START HERE -->
    
     <div class="topnav">
        <img class="logo1" src="IMG/kkmlogo2.png">
        <P class="name">HEALTH CLINIC<BR> BY MINISTRY OF HEALTH</P>

        <a href="#about"></a><div class="dropdown">
            <button class="dropbtn"> <img src="https://i.ibb.co/hmXKyPz/profile-removebg-preview.png" alt="profile-removebg-preview" border="0">
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="<%=request.getContextPath()%>/LogOutController">LOGOUT</a>

            </div>
          </div>
    </div>
	  <input class="btnback" value="Back" onclick="history.back()">



	<form action="UpdateAppController2" method="post">
		Date: <br>
		<input type="date" id="appdate" name="appdate" value="<c:out value="${app.appdate}"/>"/><br>
		
		<br>Time: <br>
		<input type="radio" id="apptime" name="apptime" value="Morning session" value="<c:out value="${app.apptime}"/>"/> Morning session<br>
		<input type="radio" id="apptime" name="apptime" value="Evening session" value="<c:out value="${app.apptime}"/>"/> Evening session<br>

		<br>Department: <br>
		<input type="radio" id="appdepartment" name="appdepartment" value="Maternity Department" value="<c:out value="${app.appdepartment}"/>"/> Maternity Department<br>
		<input type="radio" id="appdepartment" name="appdepartment" value="Paediatrics Department" value="<c:out value="${app.appdepartment}"/>"/> Paediatrics Department<br>
		<input type="radio" id="appdepartment" name="appdepartment" value="General Treatment Department" value="<c:out value="${app.appdepartment}"/>"/> General Treatment Department<br>
		
		<input type="hidden" id="appid" name="appid" value="<c:out value="${app.appid}"/>"/><br>
		
		<input type="submit" value=Save class="btn">
		<input type="reset" value="Reset" class="btn">
	</form>
</body>
</html>
