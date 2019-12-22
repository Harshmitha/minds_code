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
    
     
        <li><a href="login.jsp">Logout</a></li>
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
  
<!-- 
       <div class="jumbotron">  -->
 <div class="container-fluid text-center">
 
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
      <label class="control-label col-sm-4" for="courseid"> Course :</label>
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
      <label class="control-label col-sm-4" for="collegename">College name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="college_name" placeholder="Enter College Name" name="college_name"  value="<%= u.getCollege_name()%>"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="college_place">College Place:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="college_place" placeholder="Enter College Place" name="college_place"  value="<%= u.getCollege_place()%>"/>
      </div>
    </div>
		<div class="form-group">
      <label class="control-label col-sm-4" for="faculty_name">Faculty Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_name" placeholder="Enter Faculty Name" name="faculty_name" value="<%= u.getFaculty_name()%>"/>
      </div>
    
		    </div>  
	    
     <div class="form-group">
      <label class="control-label col-sm-4" for="faculty_dob">Faculty DOB:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_dob" placeholder="Enter DOB DD-MM-YYYY " name="faculty_dob" value="<%= u.getFaculty_dob()%>"/>
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
      <label class="control-label col-sm-4" for="father_name">Father Name :</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="father_name" placeholder="Enter Father Name Code" name="father_name" value="<%= u.getFather_name()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="mother_name">Mother Name :</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="mother_name" placeholder="Enter Mother Name" name="mother_name" value="<%= u.getMother_name()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="email_id"> Email_id:</label>
      <div class="col-sm-8">
			  <input type="text" class="form-control" id="email_id" placeholder="Enter Email" name="email_id"  value="<%= u.getEmail_id()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="password">Password:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="password" placeholder="Enter password " name="password" value="<%= u.getPassword()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="address">Address:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="address" placeholder="Enter address" name="address" value="<%= u.getAddress()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="contact">Mobile:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="contact" placeholder="Enter Contact" name="mobile" value="<%=u.getMobile()%>"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="faculty_highest_qualification">Faculty Highest Qualif</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_highest_qualification" placeholder="Enter High Qual" name="faculty_highest_qualification" value="<%= u.getFaculty_highest_qualification()%>"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="faculty_designation">Faculty Designation</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_designation" placeholder="Enter faculty_designation" name="faculty_designation" value="<%= u.getFaculty_designation()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="faculty_doj">Faculty DOJ</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_doj" placeholder="Enter DOJ DD-MM-YYYY" name="faculty_doj" value="<%= u.getFaculty_doj()%>"/>
      </div>
    </div>

     <div class="form-group">
      <label class="control-label col-sm-4" for="faculty_experenince">Faculty Experenince:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_experenince" placeholder="Enter Faculty Experenince" name="faculty_experenince" value="<%= u.getFaculty_experenince()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="faculty_prev_college_work">Faculty prev college work:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="faculty_prev_college_work" placeholder="Enter faculty previous college work" name="faculty_prev_college_work" value="<%= u.getFaculty_prev_college_work()%>"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-4" for="present_status">present_status:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="present_status" placeholder="Enter present status" name="present_status" value="<%= u.getPresent_status()%>"/>
      </div>
    </div>
    
	<div class="form-group">
	
		<div class="col-sm-offset">   

<center>
		<button type="submit" class="btn btn-primary">Update</button>
	 <button type="submit" class="btn btn-default">Cancel</button>
		</div></div></form></div></div></div></center>
</div>		
		</body>
</html>	
	
