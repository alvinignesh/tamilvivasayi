<%-- 
    Document   : loaddetail
    Created on : Feb 28, 2019, 1:12:36 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>மோட்டார் விபரம்   -தமிழ் விவசாயி </title>
	<meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--Start Header-->
<header id="header">
<div id="header-top">
    <div class="container">
        <div class="row">
            <div class="hidden-xs col-lg-7 col-sm-5 top-info">
                <span><i class="fa fa-phone"></i>Phone: (91)9585734330</span>
                <span class="hidden-sm"><i class="fa fa-envelope"></i>Email: alvinignesh@gmail.com</span>
            </div>
            <div class="col-lg-5">
                <ul class="dropdown-items clearfix">
                    <li>
                        <div class="site-language">
                            <div class="dropdown">
                                <ul class="dropdown-menu pull-right" role="menu">
                                    <li class="cart-products">
                                        <ul style="overflow: hidden;" tabindex="5000">
                                            <li>
                                                <div class="cart-product clearfix">
                                                    <div class="left-data">
                                                        <img alt="" src="images/cart-product.png">
                                                    </div>
                                                    <div class="right-data">
                                                        <strong>
                                                            <a href="#">Flying Ninja </a>
                                                        </strong>
                                                        <p>$45.00 x 1</p>
                                                        <a class="remove-item" href="#">
                                                            <i class="fa fa-trash-o"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="cart-product clearfix">
                                                    <div class="left-data">
                                                        <img alt="" src="images/cart-product2.png">
                                                    </div>
                                                    <div class="right-data">
                                                        <strong>
                                                            <a href="#">Flying Ninja </a>
                                                        </strong>
                                                        <p>$45.00 x 2</p>
                                                        <a class="remove-item" href="#">
                                                            <i class="fa fa-trash-o"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="cart-subtotal">Subtotal: $135.00</li>
                                    <li class="cart-buttons clearfix">
                                        <a class="btn btn-default grey" href="#" role="button">View Cart</a>
                                        <a class="btn btn-default" href="#" role="button">Checkout</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="menu-bar">
    <div class="container">
        <div class="row">
            <!-- Logo / Mobile Menu -->
                    <h1>தமிழ் விவசாயி</h1>
                </div>
            </div>
            <!-- Navigation
================================================== -->
            <div class="col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container" role="navigation">
                <!--  <div class="container">-->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                       <li><a href="workersdetail.jsp"><span class="data-hover" data-hover="தொழிலாளர்கள் விபரம்">  தொழிலாளர்கள் விபரம்</span></a>
                          <li><a href="loaddetail.jsp"><span class="data-hover" data-hover="பொருட்கள் விவரம்">பொருட்கள் விவரம்</span></a>
                    <li><a href="farmersdetail.jsp"><span class="data-hover" data-hover="விவசாயிகள் விபரம்">விவசாயிகள் விபரம் </span></a>
                         <li><a href="index.html"><span class="data-hover" data-hover="வெளியேறு">வெளியேறு</span></a>
                  
                            </ul>
                        </div>
                    </div>
                </div>
<section class="page_head">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <nav id="breadcrumbs">
                    <ul>
                    </ul>
                </nav>

                <div class="page_title">
                    <h2>மோட்டார் விபரம் </h2>
                </div>
            </div>
        </div>
    </div>
</section>
</header>
</body>
<body bgcolor="sky blue">
    <center>

                <form action="insloaddb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <table border="2" table-color="black ">
                <thead>
      <section class="page_head">
    
</section>
</header>
 <center>
        <table width="500" border="2">
         <h1>தேர்ந்தெடுக்கவும்  </h1>
         <tr>
             <td>பொருட்களை சேர்  </td> <td> <a href="insload.jsp">பதிவை சேர்   </a></td>
         </tr>
         <tr>
             <td>பொருட்கள் விபரம்  </td> <td>  <a href="displayload.jsp">பதிவை காண்பி</a></td>
         </tr>
   
    </center>
        </table>

     <br> 
	<!--start footer-->
 
	<!--end footer-->
        
	
	
            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social">
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
		</div>
	</section>

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/retina-1.1.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script type="text/javascript" src="js/jquery.smartmenus.min.js"></script>
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/jflickrfeed.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/swipe.js"></script>

    <script type="text/javascript" src="js/jquery.sticky.js"></script>

    <script src="js/main.js"></script>

    <!-- Start Style Switcher -->
    <!-- End Style Switcher -->


</body>
</html>
