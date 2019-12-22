<%-- 
    Document   : proofverify2
    Created on : Jul 3, 2017, 2:46:03 PM
    Author     : java3
--%>

<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>RDPC</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>

    <header id="header">
       
            <div class="top-bar">
                <div class="container">
                    <center><p style="color: white;font-size: 28px;font-style: italic ">Data Dynamic Possession Checking in Cloud Storage</p></center>

                </div>
            </div><!--/.container-->
        <!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Data Owner <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="olog.jsp">Login</a></li>
                                    <li><a href="oreg.jsp">Registration</a></li>                              
                                </ul>
                            </li>
                            <li><a href="clog.jsp">Cloud</a></li>
                        </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><br><br><br><!--/header-->
    <section   id="recent-works">
            <div class="container">
 
                       
                <section id="error" class="container text-center">
        <%
                String fid=(String)session.getAttribute("filesid");
Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    Connection conn = DbConnection.getConnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    st1 = conn.createStatement();
   try{
    rs=st.executeQuery("select * from file_upload where id='"+fid+"'");
    if(rs.next()){
       String fileid=rs.getString("id");
              String filename=rs.getString("title");
        %>
         <h1 style="color: #c52d2f;font-size: 22px">Data Possession Proof Verification</h1><br><br>
         <div style="float: left"><img width="400" height="400" class="img-responsive" src="images/services/owner.png"></div>
        <br><br> <div style="float: right;margin-right: 100px">
        <p style="font-size: 18px"> Integrity Of The File<font style="color: #c52d2f"><%=fileid%>.<%=filename%> </font> Proof is Verified..</p>
        <h2>Data Possession is Confirmed</h2>
         <a class="btn btn-primary" href="ohome.jsp">GO BACK TO THE HOMEPAGE</a>
       </div>
    </section><!--/#error-->
<%}
    }catch(Exception e){
    e.printStackTrace();
    }
%>
   <!--/#bottom-->
            </div></section>
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                  
                </div>
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>