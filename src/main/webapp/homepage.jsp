<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>HOME</title>
<head>
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
<!-- Session -->
<%
if (session.getAttribute("userid") == null){
response.sendRedirect("loginPatient.jsp");
}%>
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

        <a href="AppointmentController?action=list">APPPOINTMENT</a>
        <a href="homepage.jsp">HOME</a>
    </div>



    <!-- NAVIGATION BAR END HERE -->
    
	<br>
	<br>
	<br>
	<br> 
	<br>
	<br>
	
	<div class= "box">
    <BR><BR>

    <h1> <b>WELCOME TO HEALTH CLINIC</b></h1><br>
	<P>	BY MINISTRY OF HEALTH</p> <br>
	
	</div>
	
	<div>
	<img class="pic1" src="IMG/pic1.png">
    
	</div>
	
	
	
	
	
	<br>
	<br>
	<br>
	<br> 
	<br>
	<br>
	

    <!-- FOOTER START HERE -->
    <footer>
        <div class="page-wrapper">
        <div class="row primary">
            <div class="column logo">
                <img class="logo2" src="IMG/kkmlogo1.png">
            </div>
            <div class="column about">
                <h3>MINISTRY OF HEALTH</h3>
                <p>MINISTRY OF HEALTH<br>
                    KOMPLEKS E, BLOK E1, E3,<br>
                    E6, E7 & E10<br>
                    PUSAT PENTADBIRAN<br>
                    KERAJAAN PERSATUAN<br>
                    62590,62000 PUTRAJAYA<br>
                    WILAYAH PERSEKUTUAN PUTRAJAYA</p>

            </div>
            <div class="column about">
                <h3>CONTACT US</h3>
                <p>EMAIL: KKM@MOH.GOV.MY<br>
                    PHONE NO: 03 8000 8000<br>
                    FAX: 03 8888 6187</p>
            </div>
            <div class="column about">
                <h3>KUALA LUMPUR HEALTH CLINIC</h3>
                <p>JALAN TEMERLOH, TITIWANGSA,<br>
                    53200 KUALA LUMPUR,<br>
                    WILAYAH PERSEKUTUAN KUALA LUMPUR<br>
                    03 2618 3200</p>
            </div>
        </div>
        </div>

    </footer>
    <!-- FOOTER START HERE -->

</body>

</html>