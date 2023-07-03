<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Medicine</title>
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
              <a href="index.html">LOGOUT</a>

            </div>
          </div></a>
        <a href="AppointmentController?action=listdoc">APPPOINTMENT</a>
        <a href="medicineController?action=listdoc">MEDICINE</a>
        <a href="PatientController?action=listall">PATIENT LIST</a>
        <a href="homepageDoctor.jsp">HOME</a>
    </div>



    <!-- NAVIGATION BAR END HERE -->
       <h3 style="text-align:center; margin-top:38px;">Medicine List</h3>
	<!-- Add Medicine link -->
<br>
<br>

<!-- Search input -->
<input style="margin-left:30px;" type="text" id="myInput" class="search-input" onkeyup="myFunction()" placeholder="Search for Medicine Name..">

<!-- Medicine list table -->
<table>
    <tr>
        <th>Medicine ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Expired Date</th>
        <th>Registration Time</th>
        <th>Registration Date</th>
        <th>Type</th>
        <th>Medicine Weight</th>
        <th>Medicine Volume</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${medicines}" var="m" varStatus="medicines">
        <tr>
            <td><c:out value="${m.medid}" /></td>
            <td><c:out value="${m.medname}" /></td>
            <td><c:out value="${m.meddesc}" /></td>
            <td><c:out value="${m.expireddate}" /></td>
            <td><c:out value="${m.medtime}" /></td>
            <td><c:out value="${m.meddate}" /></td>
            <td><c:out value="${m.medtype}" /></td>
            <td><c:out value="${m.medweight}" /></td>
            <td><c:out value="${m.medvolume}" /></td>

            <td><a class="btnAction" href="viewMedicine?medid=<c:out value="${m.medid}"/>">View</a></td>
            </tr>
    </c:forEach>
</table>

<script>
 //sini function search
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementsByTagName("table")[0];
        tr = table.getElementsByTagName("tr");
        for (i = 1; i < tr.length; i++) { // Start from index 1 to skip the header row
            td = tr[i].getElementsByTagName("td")[1]; // Change index to match the column of the medicine name
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    function confirmation(id) {
        console.log(id);
        var r = confirm("Are you sure you want to delete?");
        if (r == true) {
            location.href = 'deleteMedicine?medid=' + id;
            alert("Medicine successfully deleted");
        } else {
            return false;
        }
    }
</script>
</body>
</html>