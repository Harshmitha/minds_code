
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

   <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
</script><title>Insert title here</title>
</head>
<title>Insert title here</title>
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
                   
          <li class="active"><a href="facultydetails.jsp">Faculty Details</a></li>
      <li><a href="viewreports1.jsp"> Search Faculty </a>
     
      <li><a href="subjectmapping.jsp"> Subject Mapping </a>
        <li><a href="viewmapping.jsp"> Subject Mapping Details </a></li>
              <li><a href="viewreports2.jsp"> Search Faculty Subject </a></li>
        <li><a href="admin.jsp">Logout</a></li>
                
  
       <!--  <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li> -->
      </ul>
     
    </div>

  </div>
</nav>
<body>
 <div class="col-sm-12 text-left"> 
      <h3 align="center">Faculty Report </h3> <br>
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
			<!-- <th>Update</th> -->
			<th>Delete</th>
			
            </tr>
        </thead>
        <tbody>
        <% 
        try{
    		Connection con=databasecon.getConnection();
    		Statement ps=con.createStatement();
    		
    		
    		ResultSet rs=ps.executeQuery("select * from faculty");
    		while(rs.next()){
        
        %><tr>
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
                  
              <%--    <td><a href="editfaculty.jsp?id=<%=rs.getInt(1)%>">update</a></td> --%>
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
    </table></div></div>
    
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


