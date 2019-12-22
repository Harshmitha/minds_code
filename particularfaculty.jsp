<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String id = request.getParameter("id"); %>
<%String email_id = request.getParameter("email_id"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <title>Particular Faculty </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  	  <link rel="stylesheet" href="css/bootstrap.min.css">
  	<link rel="stylesheet" type="text/css" href="js/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="js/buttons.dataTables.min.css">
  
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
.header h2 {
    font-size: 10px;
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
      <a class="navbar-brand" href="#">Faculty Internal Record System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="adminwelcome.jsp">Home</a></li>

         <li class="active"><a href="particularfaculty.jsp">Profile</a></li>
  
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

    <div class="jumbotron" style="background-size:cover">    
<div class="container-fluid">
  

  <div class="row content">
       
  
	 <div class="col-sm-12 text-left"> 
      <h2 align="center">Faculty Profile </h2> <br>

  <table id="example" class="display" style="height:100% width:100%">
    <thead>
    	<tr>
    		<th class="labelName">Particular </th>
    		<th class="labelName">Information</th>
    	</tr>
    </thead>
    <tbody>
    		<%
				
			try {
				String user = (String)session.getAttribute("user");
				
				databasecon db = new databasecon();
		      	Connection con = db.getConnection();
				Statement st = con.createStatement();
				ResultSet rs;
				String sql = "select * from faculty where email_id ='"+user+"'";
				rs = st.executeQuery(sql);
				while (rs.next()) {
		%>
  
    	<tr>
    		<th class="labelName">Course:</th>
    		<th class="labelName"><%=rs.getString("course")%></th>
    	</tr>
    	<tr>
    			<th class="labelName">Department:</th>
    		<th class="labelName"><%=rs.getString("dept")%></th>
			
    	</tr>
    	<tr>
    		<th class="labelName">College Name:</th>
    		<th class="labelName"><%=rs.getString("college_name")%></th>
			
    	</tr>
    	<tr>
    		<th class="labelName">College Place:</th>
    		<th class="labelName"><%=rs.getString("college_place")%></th>
			
    	</tr>
    	<tr>
    		<th class="labelName">Faculty Name:</th>
    		<th class="labelName"><%=rs.getString("faculty_name")%></th>
			
    	</tr>
    		<tr>
    		<th class="labelName">Email:</th>
    		<th class="labelName"><%=rs.getString("email_id")%></th>
			
    	</tr>
    			
    	
    	<tr>
    		<th class="labelName">Mobile no:</th>
    		<th class="labelName"><%=rs.getString("mobile")%></th>
			
    	</tr>
    	
    	
    	<tr>
    		<th class="labelName">Address:</th>
    		<th class="labelName"><%=rs.getString("address")%></th>
			
    	</tr>
    	<tr>
    		<th class="labelName">Faculty DOJ:</th>
    		<th class="labelName"><%=rs.getString("faculty_doj")%></th>
			
    	</tr> 
    	<tr>
    		<th class="labelName">Faculty Experience:</th>
    		<th class="labelName"><%=rs.getString("faculty_experenince")%></th>
			
    	</tr> 
    	<tr>
    		<th class="labelName">update:</th>
    <th><a href="editfaculty.jsp?id=<%=rs.getInt(1)%>">Edit</a></th>
    		
    	</tr>
    	
    			
 
			<%
			}
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
    </tbody>
    	
	
	</table>	</div>
	</div>

</div>
    <div class="col-sm-2 ">
     <!--  <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
  </div>
</div>
    
<script type="text/javascript" language="javascript"  src="js/jquery-1.12.4.js"></script>
  <script src="js/bootstrap.min.js"></script>

	<script type="text/javascript" language="javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/buttons.flash.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/buttons.print.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	
	console.log("now setting table");
    $('#example').DataTable( {
        dom: 'Bfrtip',
        "order": [],
        lengthMenu:[[-1 ],['Show all']],
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
</script>
   </body>
</html>

  
 
