<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	</style>
	<title>Login Page</title>
   
	<link rel="stylesheet"  href="Style.css" type="text/css">


<script type="text/javascript">
function validateForm(frm)
{
  if(frm.username.value=="")
  {
    alert("User Name can not be left blank");
    frm.username.focus();
    return false;
  }
  if(frm.userid.value=="")
  {
    alert("User Name can not be left blank");
    frm.username.focus();
    return false;
  }
}

</script>
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


	 <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>For view data log again</h3>
                        
	<form name="loginform" action="login" method="post" class="requires-validation" onSubmit="return validateForm(this);">
	
        <div class="col-md-12">
	<input type="text" class="form-control" name="username" placeholder="Enter your name" >
	   </div>
	<div class="col-md-12">
		 <input type="text" class="form-control" name="userid" placeholder="Enter your userid" >
		  </div>
		   <div class="form-button mt-3">
		<input type="submit" class="btn btn-primary" name="submit" value="Login" >
		</div>
	
	</form>
 </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>