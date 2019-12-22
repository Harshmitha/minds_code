<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"> </script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"> </script>
 <script type="text/javascript">
  
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<title>Insert title here</title>
</head>
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
      <li><a href="viewreports1.jsp"> Search Faculty </a>
     
      <li><a href="subjectmapping.jsp"> Subject Mapping </a>
        <li class="active"><a href="viewmapping.jsp"> Subject Mapping Details </a></li>
              <li><a href="viewreports2.jsp"> Search Faculty Subject </a></li>
        <li><a href="login.jsp">Logout</a></li>
                
      
      </ul>
     
    </div>

  </div>
</nav>
 <hr> 
 <div class="jumbotron"> 
 <div class="container-fluid text-center">
 
  <div class="row content">
    <div class="col-sm-2 ">
      <!-- <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p> -->
    </div>
    <div class="col-sm-8 text-left"> 
	<center><h2>Subject Details</h2><br></center>

<table id="example" class="display" style="width:100%">
      <thead>
        <tr>
        <th>ID</th>
		<th>Sem</th>
		<th>Course</th>
		<th>Department</th>
		<th>Subject</th>
		<th>Subject Code</th>
		<th>Assign</th>
		<th>Assign Faculty</th>
		<th>Update</th>
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
			String sql = "select * from subject_mapping";
			rs = st.executeQuery(sql);
			while (rs.next()) {
        %>
            <tr>
                <td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
                 <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                   <td ><%=rs.getString(4)%></td>
                    <td data-filter="<%=rs.getString(5)%>"><%=rs.getString(5)%></td>
                     <td data-search="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
                      <td data-search="<%=rs.getString(7)%>"><%=rs.getString(7)%></td>
                       <td data-search="<%=rs.getString(8)%>"><%=rs.getString(8)%></td>
                  <%--    <td data-order="<%=rs.getString(9)%>"><%=rs.getString(9)%></td> 
                    <td data-order="<%=rs.getString(10)%>"><%=rs.getString(10)%></td>  
                <td data-order="<%=rs.getString(11)%>"><%=rs.getString(11)%></td> --%>
           
                 <td><a href='subjectmappingedit.jsp?id=<%=rs.getInt(1)%>'>Update</a></td>
               
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
   </div>
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








