<!DOCTYPE html>
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
      <a class="navbar-brand" href="#">Faculty Internal Record System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
             
           <li class="active"><a href="welcome.jsp">Home</a></li>
               
        <li><a href="login.jsp">Login</a></li>   
             <li><a href="admin.jsp">Admin</a></li>
              
  		

      
      </ul>
    
    </div>
  </div>
</nav>
<hr>
<div class="header">
     <div class="w3-top">
  
<!--  <div class="jumbotron"> -->   
  <div class="row content">
  <!--   <div class="col-sm-2 ">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div> -->
    <div class="col-sm-8 text-left"> 
      
  <h2 align="center">Admin Form</h2>
  <form class="form-horizontal" action="admincheck.jsp">
    <div class="form-group">
      <label class="control-label col-sm-2" for="username">Username:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
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
