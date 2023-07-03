<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- Session -->
<%
if (session.getAttribute("userid") == null){
response.sendRedirect("loginStaff.jsp");
}%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PATIENT LIST</title>
    <link rel="stylesheet" href="../css/view_appointment.css">
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
        .btn {
            background-color: #e9ac20;
            border: none;
            color: white;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
			position :absolute;
	     	left: 70px;
	     	text-decoration: none;	
		}
		  .btnAction {
            background-color: #e9ac20;
            border: none;
            color: white;
            padding: 3px 6px;
            font-size: 16px;
            cursor: pointer;
	     	margin:10px;	
	     	border-radius: 4px;
	     	text-decoration: none;
		}
		table{
		width:96%;
		margin: 30px;
		border-collapse: collapse;
		}
		
		table,th,td {
		border:1px solid;
		padding: 5px;
		}
		th {
		text-align : center;}
		
		
    </style>
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
          </div></a>
        <a href="AppointmentController?action=listDOC">APPPOINTMENT</a>
        <a href="medicineController?action=listdoc">MEDICINE</a>
        <a href="PatientController?action=LISTALLATDOCTOR">PATIENT LIST</a>
        <a href="homepageDoctor.jsp">HOME</a>
    </div>
<br><Br>


    <!-- NAVIGATION BAR END HERE -->
</head>
<body>
    <main>
   <h3 style="text-align:center; margin-top:38px;">Patient List</h3>
        <table id="myTable">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Race</th>
                <th>Gender</th>
                <th>Phone Number</th>
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
                    
                </tr>
            </c:forEach>
        </table>
    </main>

    <script>
     //sini
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {    //search base on collumn, kalau macam ni 0 maksudnya collumn 1 id
                td = tr[i].getElementsByTagName("td")[0]; // Change index to match the column of the name
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                } // guna javascript sebab lagi better kalau dapat search real time
            }
        }
    </script>
</body>
</html>
