<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Patient Sign Up</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">
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
		form{
	     	margin-left: 350px;
	     		margin-top:45px; }
	     	
	  input[type=text],[type=password],[type=number]{
         width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;}
  
  input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;}
  
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
	<!-- NAVIGATION BAR START HERE -->
    
     <div class="topnav">
        <img class="logo1" src="IMG/kkmlogo2.png">
        <P class="name">HEALTH CLINIC<BR> BY MINISTRY OF HEALTH</P>

        <a href="index.html">HOME</a>
    </div>

<br><Br>

    <!-- NAVIGATION BAR END HERE -->
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div class="form-content" >
							<div class="form-header">
								<h3 style="text-align:center;">Patient Sign Up</h3>
						</div>
				 <form action="PatientController" method="post" id="wizard">
						
							<div class="form-row">
								<div class="form-holder">
									ID : <br>
									<input type="text" name="patientid" placeholder="012302445" class="form-control">
								</div>
								<div class="form-holder">
									<br>Name : <br>
									<input type="text" name="patientname" placeholder="Ali bin Ahmad" class="form-control">
								</div>
								<div class="form-holder">
									<br>Age : <br>
									<input type="number"  name="patientage" placeholder="1-100" class="form-control">
								</div>
								<div class="form-holder">
									<br>Email : <br>
									<input type="text" name="patientemail" placeholder="ali123@gmail.com" class="form-control">
								</div>
								<div class="form-holder">
									<br>Race : <br>
									<input type="radio" name="patientrace" value="Malay" class="form-control"/>Malay 
									<input type="radio" name="patientrace" value="Chinese" class="form-control"/>Chinese
									<input type="radio" name="patientrace" value="India" class="form-control"/>India
									<input type="radio" name="patientrace" value="Others" class="form-control"/>Others 
								</div>
								<div class="form-holder">
									<br>Gender : <br>
									<input type="radio" name="patientgender" value="Male" class="form-control"/>Male 
									<input type="radio" name="patientgender" value="Female" class="form-control"/>Female 
								</div>
								<div class="form-holder">
									<br>Phone number : <br>
									<input type="text" name="patientphonenum" placeholder="010-1233456" class="form-control">
								</div>
								<div class="form-holder">
									<br>Password : <br>
									<input type="password" name="patientpassword" placeholder="Password" class="form-control">
								</div>
							</div>
							<br>
							<div class="form-row">
								<div class="form-holder">
									<input type="submit" value="Submit" class="btn">
									<input type="reset" value="Reset" class="btn">	
								</div>
							</div>
							 			</form>
										
						</div>
					</div>
                </section>
		<!-- Template created and distributed by Colorlib -->
</body>
</html>