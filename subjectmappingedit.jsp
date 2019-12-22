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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

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
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Syllabus Information System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="adminwelcome.jsp">Home</a></li>

          
                   
          <li><a href="facultydetails.jsp">Faculty Details</a></li>
      <li><a href="viewreports1.jsp"> Search Faculty </a>
     
      <li class="active"><a href="subjectmapping.jsp"> Subject Mapping </a>
        <li><a href="viewmapping.jsp"> Subject Mapping Details </a></li>
              <li><a href="searchfacultysubject.jsp"> Search Faculty Subject </a></li>
        <li><a href="login.jsp">Logout</a></li>
                
  
      
      </ul> 
    </div>
  </div>
  
</nav>
  <hr>
  
<div class="header">
     <div class="w3-top">
  
  
<!-- <div class="container-fluid text-center">
<div class="jumbotron">   -->      
  <div class="row content">
    <div class="col-sm-2 ">
      <!-- <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
    <div class="col-sm-8 text-left"> 
      <h2 align="center">Update subject </h2> <br>


 <%@page import="com.javatpoint.dao.databasecon,com.javatpoint.bean.subject_mapping"%>

  

<%
String id=request.getParameter("id");
subject_mapping u=databasecon.getRecordById3(Integer.parseInt(id));
%>
<form class="form-horizontal" action="subjectmappinguseredit.jsp" method="post">

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
      <label class="control-label col-sm-4" for="course"> Course :</label>
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
      <label class="control-label col-sm-4" for="sem"> Sem:</label>
      <div class="col-sm-8">
       <select class="form-control" name="sem">
      	<option value="1st">1st</option>
        <option value="2nd">2nd</option>
		<option value="3rd">3rd</option>
        <option value="4th">4th</option>   	
         <option value="5th">5th</option>   	
          <option value="6th">6th</option>   	
         <option value="7th">7th</option>   	
          <option value="8th">8th</option>   	      		
	  </select>
      </div>
    </div>
    <div class="form-group">
	  <label class="control-label col-sm-4" for="subject">Subject:</label>
      <div class="col-sm-8">
	<select class="form-control" name="subject">
      	<option value="Image Processing">Image Processing</option>
      	<option value="Data Structure">Data Structure</option>
        <option value="Operating System">Operating System</option>
		<option value="Database Management System">Database Management System</option>
        <option value="Computer System Architecture">Computer System Architecture</option>
        <option value="Computer Networks">Computer Networks</option>
        <option value="Software Engineering">Software Engineering</option>
        <option value="Analog Electronics">Analog Electronics</option>
        <option value="Digital Electronics">Digital Electronics</option>
        <option value="Power Electronics">Power Electronics</option>
	  </select>	</div>
    </div>
        <div class="form-group">
	  <label class="control-label col-sm-4" for="subject_code">Subject Code:</label>
      <div class="col-sm-8">
	<select class="form-control" name="subject_code">
		<option value="17CS101">17CS101</option>
      	<option value="17EC102">17EC102</option>
        <option value="17EEE103">17EEE103</option>
		<option value="17IS104">17IS104</option>
      
        </select>
        </div>
        </div>
         <div class="form-group">
	  <label class="control-label col-sm-4" for="assign">Assign:</label>
      <div class="col-sm-8">
	<select class="form-control" name="assign">
		<option value="Modulator">Modulator</option>
      	<option value="Valuator">Valuator</option>
      	</select>
      	</div>
      	</div>
    
       <div class="form-group">
      <label class="control-label col-sm-4" for="assign_faculty">Assign faculty:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="assign_faculty" placeholder="Enter Assign_faculty " name="assign_faculty" value="<%= u.getAssign_faculty()%>"/>
      </div>
    </div>
	
	
  

	<div class="form-group">
		<div class="col-sm-offset">   
<center>
		<button type="submit" class="btn btn-primary">Update</button>
		 <button type="submit" class="btn btn-default">Cancel</button>
		</div></div></form></div></center>
		</div>
	</div>
	    

		</div>
		
		</body>
</html>

    
 
  
  
   










<%-- 



<!DOCTYPE html>
<%@page import="com.minds.dao.databasecon"%>
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
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Syllabus Information System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="adminwelcome.jsp">Home</a></li>

        
        <li><a href="addfaculty.jsp">Add Syllabus</a></li>
   
        <li><a href="syllabusdetails.jsp">Syllabus Details</a></li>
            <li><a href="admin.jsp">Logout</a></li>
      
    
      </ul> 
    </div>
  </div>
  
</nav>
  <hr>
  
<div class="header">
     <div class="w3-top">
  
  
<!-- <div class="container-fluid text-center">
<div class="jumbotron">   -->      
  <div class="row content">
    <div class="col-sm-2 ">
      <!-- <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
    <div class="col-sm-8 text-left"> 
      <h2 align="center">Update student </h2> <br>


 <%@page import="com.minds.dao.databasecon,com.minds.beans.subject_mapping"%>

  

<%
String id = request.getParameter("id");
subject_mapping u = databasecon.getRecordById3(Integer.parseInt(id));
%>
<form class="form-horizontal" action="subjectmappinguseredit.jsp" method="post">>

<input type="hidden" name="id" value="<%= u.getId() %>"/>

			<div class="form-group">
	  <label class="control-label col-sm-4" for="sem">Sem:</label>
      <div class="col-sm-8">
	<select class="form-control" name="sem">
      	<option value="1st sem">1</option>
        <option value="2nd sem">2</option>
		<option value="3rd sem">3 </option>
        <option value="4th sem">4</option>
        <option value="5th sem">5 </option>
        <option value="6th sem">6</option>
	  </select>	</div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-4" for="dept"> DEPTARTMENT:</label>
      <div class="col-sm-8">
		<select class="form-control" name="dept">
      	<option value="UG">UG </option>
        <option value="PG">PG</option>		
	  </select>
	  </div>
	  </div>

    <div class="form-group">
      <label class="control-label col-sm-4" for="course"> Course :</label>
      <div class="col-sm-8">
		
		 <select class="form-control" name="course">
		 <option value="CHEMISTRY CYCLE">CHEMISTRY CYCLE</option>
		 <option value="PHYSICS CYCLE">PHYSICS CYCLE</option>
        <option value="CSE">CSE </option>
        <option value="ECE">ECE </option>
        <option value="MECH">MECH</option>
        <option value="EEE">EEE</option>
        <option value="IT">IT</option>
        <option value="CE">CE </option>
	  </select>
      </div>
        </div>    
    			<div class="form-group">
	  <label class="control-label col-sm-4" for="subject">Subject:</label>
      <div class="col-sm-8">
	<select class="form-control" name="subject">
      	<option value="subject1">1</option>
        <option value="subject2">2</option>
		<option value="subject3">3 </option>
        <option value="subject4">4</option>
        <option value="subject5">5 </option>
        <option value="subject6">6</option>
	  </select>	</div>	
    </div>
       <div class="form-group">
      <label class="control-label col-sm-4" for="assign_faculty">Assign_Faculty:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="assign_faculty" placeholder="Enter  Assign_faculty" name="assign_faculty" value="<%= u.getAssign_faculty()%>"/>
 
        </div>
      </div>
  
	</form>	

	<div class="form-group">
		<div class="col-sm-offset">   
<center>
		<button type="submit" class="btn btn-primary">Update</button>
		 <button type="submit" class="btn btn-default">Cancel</button>
		</div></div></div></center>
		</div>
	</div>
	    

		
		</body>
</html> --%>

