<%-- 
    Document   : olog
    Created on : Jun 23, 2017, 5:00:21 PM
    Author     : java3
--%>

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
                                    <h1 class="animation animated-item-1">Data Dynamic Possession Checking in Cloud Storagein Cloud Storage</h1>
                                    
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
    <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Data Owner Login</h2>                
            </div>

            <div class="row">
                 <!-- <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="olog1.jsp" role="form"> -->
                     <form method="post" action="olog1.jsp" >
                     <img style="float: right;margin-right: 100px" class="img-responsive" src="images/services/login.jpg">           
                     <div class="row">
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label>Username *</label>
                                            <input type="text" name="name" style="border-color: #5eccff" class="form-control" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label>Password *</label>
                                            <input type="password" name="pass" style="border-color: #5eccff" class="form-control" required="required">
                                        </div>
                                        <div class="form-group">
                                            <label>Secret Key *</label>
                                            <input type="text" name="skey" style="border-color: #5eccff" class="form-control">
                                        </div>                    
                                    
                                                        
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-lg" required="required">Submit </button>
                                            &nbsp;&nbsp;&nbsp;
                                            <button type="reset" class="btn btn-primary btn-lg" required="required">Reset</button>
                                        </div>
                                    </div>
                                </div>
                            </form>     
                </div><!--/.row-->
        </div><!--/.container-->
    </section>
    <section id="bottom"></section>


            <footer  id="footer" class="midnight-blue">
        <div class="container">

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