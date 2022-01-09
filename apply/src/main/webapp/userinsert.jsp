<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="Style2.css" type="text/css">
<script type="text/javascript" src="S2.js"></script>
<link rel = "stylesheet" type="text/css" href = "home.css">

<script type="text/javascript">
function validateForm(frm)
{
  if(frm.uid.value=="")
  {
    alert("User Name can not be left blank");
    frm.username.focus();
    return false;
  }
  if(frm.userid.value=="")
  {
    alert("User id can not be left blank");
    frm.userid.focus();
    return false;
  }
  if(frm.leave.value=="")
  {
    alert("Leave can not be left blank");
    frm.leave.focus();
    return false;
  }
  if(frm.date.value=="/^(0?[1-9]|1[0-2])[\/](0?[1-9]|[1-2][0-9]|3[01])")
  {
    alert("Date can not be left blank");
    frm.date.focus();
    return false;
  }
  if(frm.days.value>10)
  {
    alert("cannot get this much leave dates");
    frm.days.focus();
    return false;
  }
  if(frm.assign.value=="")
  {
    alert("Assign a member can not be left blank");
    frm.assign.focus();
    return false;
  }
}

</script>
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
                        <h3>Apply for  Leave</h3>
                        <p>Fill in the data below.</p>
	<form name="loginform" action="insert" method="post" class="requires-validation" onSubmit="return validateForm(this);">
	 <div class="col-md-12">
		 <input type="text" class="form-control"  name="uid" placeholder="User Name" required>
		 
                              
                            </div>

                            <div class="col-md-12">
		 <input type="text" class="form-control"  name="userid"  placeholder="User ID" required>
		   
                               
                            </div>
           <div class="col-md-12">                  
		 
		 <select id="inputState" class="form-control" name="leave" required>
                                    <option selected disabled>Choose an Reason</option>
                                    <option value="Medical">Medical</option>
                                    <option value="Wedding">Wedding</option>
                                    <option value="Funeral">Funeral</option>
                                    <option value="Vacation">Vacation</option>
                                    <option value="Study Leave">Study Leave</option>
                                    <option value="other">other</option>
                                </select>
                            </div>
            <div class="col-md-12">                 
		<input type="text" class="form-control" name="date" placeholder="M/DD/YYYY" required>
		
                            </div>
                <div class="col-md-12">              
		 <input type="text" class="form-control" name="days" placeholder="Number of days" required>
		 
                            </div>
                             <div class="col-md-12">
		 <input type="text" class="form-control" name="assign" placeholder="Assign a member" required>
		 
                            </div>
                             <div class="form-button mt-3">
		<input type="submit" class="btn btn-primary" name="submit" value="submit">
	 </div>
	</form>
   </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>