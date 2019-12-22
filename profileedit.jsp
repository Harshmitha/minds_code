 <!DOCTYPE html>
<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
       body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #1f1a1a;   
}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
     
        }
     a {
    color: #f5f5f5;
    text-decoration: none;
}
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: black;
      color: white;
      padding: 15px;
    }
     /* Header/Blog Title */
.header {
    padding: 20px;
  
    background: pink;
}

.header h1 {
    font-size: 50px;
}  
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid" >
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"> Faculty Internal Record System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="adminwelcome.jsp">Home</a></li>
  
        <li><a href="addfaculty.jsp">Add Faculty</a></li>
   
        <li><a href="facultydetails.jsp">Faculty Details</a></li>
       
         <li><a href="viewreports1.jsp">View Faculty</a></li>
    
     
        <li><a href="adminlogin.jsp">Logout</a></li>
       <!--  <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li> -->
      </ul>
      <!-- <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul> -->
    </div>
  </div>
</nav>
  <hr>
   
<div class="header">
     <div class="w3-top">
  
<div class="container-fluid">
<!--   <div class="jumbotron" style="background-size:cover">    --> 
  <div class="row content">
    <div class="col-sm-2 ">
      <!-- <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
    <div class="col-sm-8 text-left"> 
      <h2 align="center">Update Faculty </h2> <br>


 <%@page import="com.javatpoint.dao.databasecon,com.javatpoint.bean.Faculty"%>

  

<%
String id=request.getParameter("id");
Faculty u=databasecon.getRecordById(Integer.parseInt(id));
%>
<form class="form-horizontal" action="editfacultyuser.jsp" method="post">

<input type="hidden" name="id" value="<%= u.getId() %>"/>

    <div class="form-group">
      <label class="control-label col-sm-4" for="course"> Course:</label>
      <div class="col-sm-8">
       <select class="form-control" name="course">
      	<option value="UG">UG </option>
        <option value="PG">PG</option>
		<option value="Ph.D">Ph.D</option>
        <option value="Other">Other</option>   		
	  </select>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="dept"> Department:</label>
      <div class="col-sm-8">
       <select class="form-control" name="dept">
      	<option value="Computer Science & Engg ">Computer Science & Engg </option>
        <option value="Information Science & Engg">Information Science & Engg</option>  	
        <option value="Electronics & Comm. Engg">Electronics & Comm. Engg</option> 
		<option value="Electrical & Electronics Engg">Electrical & Electronics Engg</option>
		<option value="Civil Engg">Civil Engg</option>  
		<option value="Digital Communication & Engg">Digital Communication & Engg</option> 
	    <option value="Other">Other</option> 
	  </select>
      </div>
    </div>
		<div class="form-group">
      <label class="control-label col-sm-4" for="college name">College Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="college name" placeholder="Enter College Name" name="college_name" required>
      </div>
	</div>
	
	<div class="form-group">
      <label class="control-label col-sm-4" for="college Place">College Place:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="college Place" placeholder="Enter College Place" name="college_place" required>
      </div>
	</div>

	<h3> Personal Information </h3> <br>
	<div class="form-group">
      <label class="control-label col-sm-4" for="faculty name">Faculty Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty name" placeholder="Enter Faculty Name" name="faculty_name" required>
      </div>
	</div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="faculty dob">Faculty DOB:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty dob" placeholder="DOB MM-DD-YYYY" name="faculty_dob" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="gender"> Gender :</label>
      <div class="col-sm-8">
        <select class="form-control" name="gender">
      <option value="MALE">MALE </option>
        <option value="FEMALE">FEMALE </option>
        </select></div>
        </div>
	 <div class="form-group">
      <label class="control-label col-sm-4" for="father name">Father Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="father name" placeholder="Enter Father Name" name="father_name" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="mother name">Mother Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="mother name" placeholder="Enter Mother Name" name="mother_name" required>
      </div>
    </div>
	   <div class="form-group">
      <label class="control-label col-sm-4" for="email">Email :</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="email" placeholder="Enter Email " name="email_id" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="password">Password :</label>
      <div class="col-sm-8">
        <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="address">Address :</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="address" placeholder="Enter address" name="address" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="mobile">Mobile No:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="mobile" placeholder="Enter Mobile" name="mobile" required>
      </div>
    </div>
  
	<h3> Professional Information </h3> <br>
	
	<div class="form-group">
      <label class="control-label col-sm-4" for="faculty_highest_qualification">Faculty's Highest Qualification:</label>
      <div class="col-sm-8">
       <select class="form-control" name="faculty_highest_qualification">
      	<option value="UG">UG </option>
        <option value="PG">PG</option>
		<option value="Ph.D">Ph.D</option>
        <option value="Other">Other</option>   		
	  </select>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="faculty_designation">Faculty Designation:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_designation" placeholder="Enter Faculty Designation" name="faculty_designation" required>
      </div>
	</div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="faculty_doj">Faculty DOJ(Date of Joining):</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_doj" placeholder="DOB MM-DD-YYYY" name="faculty_doj" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="faculty_experience">Faculty Experience in Years:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_experience =" placeholder="Faculty Experience " name="faculty_experenince" required>
      </div>
	</div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="previous_college_work">Previous College Work:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="previous_college_work" placeholder="Previous College Work" name="faculty_prev_college_work" required>
      </div>
	</div>
	<div class="form-group">
      <label class="control-label col-sm-4" for="present_status">Present Status:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="present_status" placeholder="present status" name="present_status" required>
      </div>
	</div>	
	
<center>
		<button type="submit" class="btn btn-primary">Update</button>
	 <button type="submit" class="btn btn-default">Cancel</button>
		</div></div></form></div></div></div></center>
</div>		
		</body>
</html>	
	