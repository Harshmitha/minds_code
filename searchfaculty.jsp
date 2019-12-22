<!DOCTYPE html>
<%@page import="com.javatpoint.bean.Faculty"%>
<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<%@page import="com.javatpoint.dao.databasecon"%>   

     <jsp:useBean id="u" class="com.javatpoint.bean.Faculty"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%String dept=request.getParameter("dept");
String course=request.getParameter("course");%>  

<html>
<head>
   
<meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
  <link rel="stylesheet" type="text/css"  href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
  
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"> </script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"> </script>



 <script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<title>Student List of Due Fees</title>

<style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    
    .jumbotron {
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 30px;
    color: inherit;
    background-color: white;
}

    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
   
    .footer {
    margin-top: 100px;
    padding: 50px;
    text-align: center;
    background: #f8f8f8;
    color: black;
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
    <div class="collapse navbar-collapse navbar-responsive-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
             <li><a href="adminwelcome.jsp">Home</a></li>
                   
          <li><a href="facultydetails.jsp">Faculty Details</a></li>
      <li class="active"><a href="viewreports1.jsp"> Search Faculty </a>
     
      <li><a href="subjectmapping.jsp"> Subject Mapping </a>
        <li><a href="viewmapping.jsp"> Subject Mapping Details </a></li>
              <li><a href="viewreports2.jsp"> Search Faculty Subject </a></li>
        <li><a href="admin.jsp">Logout</a></li>
      </ul>
     
    </div>
 </div>
  </nav>
  


<div class="container-fluid text-center">

<div class="jumbotron">    
  <div class="row content">
  
    <div class="col-sm-2 ">
     <!--  <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
	<center><h2>Faculty Details</h2></center>

  

<table id="example" class="display" style="width:100%">
   
    <thead>
      <tr>
             <th>ID</th>
         	<th>Course</th>
			<th>Department</th>
		    <th>College Name</th>
			<th>College Place</th>
		    <th>Faculty Name</th>
		    <th>Faculty DOB</th>
		    <th>Email</th>
		    <th>Address</th>
		    <th>Mobile</th>
		    <th>Faculty DOJ</th>
		    <th>Faculty Experience</th>
		<!-- 	<th>Update</th> -->
			<th>Delete</th>
			
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
			String sql = "select * from faculty where dept='"+dept+"' and course='"+course+"'";
			rs = st.executeQuery(sql);
			while (rs.next()) {
        %>
             <tr>
             <td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
                 <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                   <td ><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                  <td><%=rs.getString(6)%></td>
                   <td ><%=rs.getString(7)%></td>
                   <td><%=rs.getString(11)%></td>
                  <td><%=rs.getString(13)%></td>
                   <td ><%=rs.getString(14)%></td>
                   <td><%=rs.getString(17)%></td>
                  <td><%=rs.getString(18)%></td>
                <%-- <td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
                 <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(4)%></td>
                   <td ><%=rs.getString(3)%></td>
                    <td data-filter="<%=rs.getString(5)%>"><%=rs.getString(5)%></td>
                    <td data-filter="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
                    <td data-filter="<%=rs.getString(17)%>"><%=rs.getString(17)%></td>
                  
                  
             <td data-filter="<%=rs.getString(13)%>"><%=rs.getString(13)%></td>
                   <td data-filter="<%=rs.getString(15)%>"><%=rs.getString(15)%></td>
           
              <td data-filter="<%=rs.getString(16)%>"><%=rs.getString(16)%></td>
                   --%>
               <%--   <td><a href="editfaculty.jsp?id=<%=rs.getInt(1)%>">update</a></td> --%>
                  <td><a href="deletefaculty.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                
            </tr>
            <% 
        }
    		con.close();
    	}catch(Exception ex){System.out.println(ex);}
        %>
        </tbody>
       
        <tfoot>
            
        </tfoot>
    </table> 
  <div> 
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
    $('#example').DataTable( {
        dom: 'Bfrtip',
        "order": [],
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
</script> 
</body>
</html>