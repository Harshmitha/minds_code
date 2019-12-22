<!DOCTYPE html>
<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<jsp:useBean id="u" class="com.javatpoint.bean.Faculty"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
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
a {
    color: blue;
    text-decoration: none;
}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
     
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
       <a class="navbar-brand" href="#">Faculty Internal Record System</a>
    </div>
    <div class="collapse navbar-collapse navbar-responsive-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
             <li><a href="adminwelcome.jsp">Home</a></li>
                   
          <li><a href="facultydetails.jsp">Faculty Details</a></li>
      <li><a href="viewreports1.jsp"> Search Faculty </a>
     
      <li><a href="subjectmapping.jsp"> Subject Mapping </a>
        <li><a href="viewmapping.jsp"> Subject Mapping Details </a></li>
              <li class="active"><a href="viewreports2.jsp"> Search Faculty Subject </a></li>
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
  
 <div class="container-fluid text-center">
<!--  <div class="jumbotron">  -->      
  <div class="row content">
    <div class="col-sm-2 ">
      <!-- <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
    <div class="col-sm-8 text-left"> 
      <h2 align="center">Faculty Report </h2> <br>
  <form class="form-horizontal" action="searchfacultysubject.jsp">
 <div class="form-group">
      <label class="control-label col-sm-4" for="dept"> Department:</label>
      <div class="col-sm-8">
       <select class="form-control" name="dept">
      	 <option value="Computer Science & Engg">Computer Science & Engg</option>
		 <option value="Information Science & Engg"> Information Science & Engg</option>
        <option value="Electronics & Comm.Engg">Electronics & Comm.Engg </option>
        <option value="Electrical & Electronics Engg">Electrical & Electronics Engg</option>
        <option value="Civil Engg<">Civil Engg</option>
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
      <div class="col-sm-offset-4 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
         <button type="submit" class="btn btn-default">Cancel</button>
      </div>
     </div>
  </form>
    </div>
    <div class="col-sm-2 ">
      <!-- <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
  </div>
</div>
</div>
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>