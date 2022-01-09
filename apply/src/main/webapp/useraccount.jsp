<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		
	</style>
	<link rel="stylesheet"  href="Style3.css" type="text/css">
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

 <div class="table-body">
        <div class="row">
            <div class="table-holder">
                <div class="table-content">
                    <div class="table-items">
                        <h3>Leave Data</h3>
	<table class="table table-borderless table-condensed table-hover"  style="color:white">
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="userid" value="${cus.userid}"/>
	<c:set var="leave" value="${cus.leave}"/>
	<c:set var="date" value="${cus.date}"/>
	<c:set var="days" value="${cus.days}"/>
	<c:set var="assign" value="${cus.assign}"/>
	
	<tr>
		<td> ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${cus.userName}</td>
	</tr>
	<tr>
		<td>User id</td>
		<td>${cus.userid}</td>
	</tr>
	<tr>
		<td>Leave Type</td>
		<td>${cus.leave}</td>
	</tr>
	<tr>
		<td>Date</td>
		<td>${cus.date}</td>
	</tr>

<tr>
		<td>Number of days</td>
		<td>${cus.days}</td>
	</tr>
<tr>
		<td>Assign a member</td>
		<td>${cus.assign}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="updateuser.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="userid" value="${userid}"/>
		<c:param name="leave" value="${leave}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="days" value="${days}"/>
		<c:param name="assign" value="${assign}"/>
	</c:url>
	<div class="table-button mt-3">
	<a href="${cusupdate}">
	
	<input type="button" class="btn2 btn2-primary" name="update" value="Update My Data">

	</a>
	</div>
	<br>
	
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="userid" value="${userid}"/>
		<c:param name="leave" value="${leave}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="days" value="${days}"/>
		<c:param name="assign" value="${assign}"/>
	</c:url>
	<div class="table-button mt-3">
	<a href="${cusdelete}">
	<input type="button" class="btn1 btn1-primary" name="delete" value="Delete My Account">
	</a>
	</div>
	
	
	
	
	</div>
                </div>
            </div>
        </div>
    </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
</body>
</html>