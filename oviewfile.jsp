<%-- 
    Document   : keygen
    Created on : Jun 27, 2017, 11:57:36 AM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>RDPC</title>

        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
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

    <body class="homepage">

        <header id="header">
            <div class="top-bar">
                <div class="container">
                    <center><p style="color: white;font-size: 28px;font-style: italic ">Data Dynamic Possession Checking in Cloud Storage</p></center>

                </div>
            </div>

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

        </header><!--/header-->

        <section id="main-slider" class="no-margin">
            <div class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                    <li data-target="#main-slider" data-slide-to="1"></li>
                    <li data-target="#main-slider" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">

                    <div class="item active" style="background-image: url(images/slider/slider8.png)">  
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Data Dynamic Possession Checking in Cloud Storage</h1>                                    

                                    </div>
                                </div>

                                <div class="col-sm-6 hidden-xs animation animated-item-4">
                                    <div class="slider-img">
                                        <!--  <img src="images/slider/img1.png" class="img-responsive"> -->
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div><!--/.item-->

                    <div class="item" style="background-image: url(images/slider/slider5.jpg)">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Data Dynamic Possession Checking in Cloud Storage</h1>

                                    </div>
                                </div>

                                <div class="col-sm-6 hidden-xs animation animated-item-4">
                                    <div class="slider-img">
                                        <!-- <img src="images/slider/img2.png" class="img-responsive"> -->
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div><!--/.item-->

                    <div class="item" style="background-image: url(images/slider/slider4.jpg)">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Data Dynamic Possession Checking in Cloud Storage</h1>

                                    </div>
                                </div>
                                <div class="col-sm-6 hidden-xs animation animated-item-4">
                                    <div class="slider-img">
                                        <!-- <img src="images/slider/img3.png" class="img-responsive"> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--/.item
                </div><!--/.carousel-inner-->
                </div><!--/.carousel-->
                <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
                    <i class="fa fa-chevron-left"></i>
                </a>
                <a class="next hidden-xs" href="#main-slider" data-slide="next">
                    <i class="fa fa-chevron-right"></i>
                </a>
        </section>
        <section   id="recent-works">
            <div  class="container">
                <!--           style="background-image: url(images/services/backs.jpg)"-->

                <ul class="portfolio-filter text-center">
                    <li><a class="btn btn-default active" href="ohome.jsp" data-filter="*">Home</a></li>               
                    <li><a class="btn btn-default active" href="uploadfile.jsp" >File Upload</a></li>
                    <li><a class="btn btn-default active" href="oviewfile.jsp">View Uploaded File</a></li>
                    <li><a class="btn btn-default active" href="checking.jsp">Data Possession Checking</a></li>
                    <li><a class="btn btn-default active" href="proofverify.jsp">Proof verification</a></li>
                    <li><a class="btn btn-default active" href="dynamic.jsp">Dynamic Operations</a></li>
                    <li><br><br><a class="btn btn-default active" href="downloadfile.jsp">Download Files</a></li>
                    <li><a class="btn btn-default active" href="olog.jsp" >Logout</a></li>
                </ul><br><br>
                <div class="center wow fadeInDown">
                    <h2>View Uploaded Files</h2>                
                </div>

                <div > <center><table style="width: 1000px" summary="Summary Here" cellpadding="0" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="color:  #c52d2f">Id</th>
                                <th style="color:  #c52d2f">Name</th>
                                <th style="color:  #c52d2f">Description</th>           
                                <th style="color:  #c52d2f">Hash Value 1</th>
                                <th style="color:  #c52d2f">Hash Value 2</th>
                                <th style="color:  #c52d2f">Hash Value 3</th>
                                <th style="color:  #c52d2f">Date & Time</th>
                                <th style="color:  #c52d2f">Private Key</th>
                                <th style="color:  #c52d2f">Homomorphic Key</th>            
                            </tr>
                        </thead>
                        <%
                            String oid = (String) session.getAttribute("oid");
                            Connection con = DbConnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = null;
                            try {
                                rs = st.executeQuery("select * from file_upload where oid='" + oid + "'");
                                while (rs.next()) {
                        %>

                        <tbody style="color: black">
                            <tr>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("title")%></td>
                                <td><%=rs.getString("des")%></td>
                                <td><%=rs.getString("hash1")%></td>
                                <td><%=rs.getString("hash2")%></td>
                                <td><%=rs.getString("hash3")%></td>
                                <td><%=rs.getString("dtime")%></td>
                                <td><%=rs.getString("pkey")%></td>
                                <td><%=rs.getString("hkey")%></td>           
                            </tr>

                        </tbody>
                        <%}
                            } catch (Exception e) {
                                e.printStackTrace();

                            }
                        %>
                       </table></center></div><br><br>



            </div><!--/.container-->
        </section>