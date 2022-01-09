<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
		<link rel="stylesheet"  href="Style.css" type="text/css">
		<link rel = "stylesheet" type="text/css" href = "home.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<style>
.footer {
   position: fixed;
   left: 0px;
   margin-right:10px;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}
</style>
</head>
<body>
 <header>
		<nav>
		<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="userinsert.jsp">Apply for leave</a>
  <a href="#">Contact</a>
</div>


<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
			<h1>Staff Management System</h1>
			<ul id="navli">
				<li><a class="homegreen" href="Home.jsp">HOME</a></li>
				<li><a class="homeblack" href="#">LOG IN</a></li>
				<li><a class="homeblack" href="alogin.jsp">ADMIN LOG IN</a></li>
			</ul>
		</nav>
	</header>

   
<%
		String id = request.getParameter("id");
	String userName = request.getParameter("uname");
		String userid = request.getParameter("userid");
		String leave = request.getParameter("leave");
		String date = request.getParameter("date");
		String days = request.getParameter("days");
		String assign = request.getParameter("assign");
	%>
	 <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Staff Member Account Delete</h3>
	
	<form action="delete" method="post" class="requires-validation">
	<table>
		<tr>
			<td style="color:white">Member ID</td>
			<td><div class="col-md-12"><input type="text" class="form-control" name="cusid" value="<%= id %>" readonly></div></td>
		</tr>
		<tr>
		<td style="color:white">User name</td>
		<td><div class="col-md-12"><input type="text" class="form-control" name="uname" value="<%= userName %>"readonly></div></td>
	</tr>
		<tr>
		<td style="color:white">user id</td>
		<td><div class="col-md-12"><input type="text" class="form-control" name="userid" value="<%= userid %>"readonly></div></td>
	</tr>
	<tr>
		<td style="color:white">leave</td>
		<td><div class="col-md-12"><input type="text" class="form-control" name="leave" value="<%= leave %>"readonly></div></td>
	</tr>
	<tr>
		<td style="color:white">date</td>
		<td><div class="col-md-12"><input type="text" class="form-control" name="date" value="<%= date %>"readonly></div></td>
	</tr>
	<tr>
		<td style="color:white">days</td>
		<td><div class="col-md-12"><input type="text" class="form-control" name="days" value="<%= days %>"readonly></div></td>
	</tr>	
	<tr>
		<td style="color:white">assign</td>
		<td><div class="col-md-12"><input type="text" class="form-control" name="assign" value="<%= assign %>"readonly></div></td>
	</tr>	
	</table>
	<br>
	<div class="form-button mt-3">
	<input type="submit" class="btn btn-primary" name="submit" value="Delete My Account"></div>
	</form></div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>