<%-- 
    Document   : shop
    Created on : Mar 4, 2021, 10:58:08 AM
    Author     : 84964
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>Nhà sách Duy Khánh | Trang chủ</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/logo_book.png" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/logo_book.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <!-- Start Main Top -->
        <div class="main-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="our-link">
                            <ul>
                                <c:if test="${sessionScope.acc != null}">
                                    <li><a href="logout"><i class="fas fa-lock"></i> Đăng xuất</a></li>
                                    <li><a href="#"><i></i> Hello ${sessionScope.acc.name}</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.acc == null}">
                                    <li><a href="login.jsp"><i class="fas fa-lock"></i> Đăng nhập</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="text-slid-box">
                            <div id="offer-box" class="carouselTicker">
                                <ul class="offer-box">
                                    <li>
                                        <i class="fab fa-opencart"></i> Khuyến mãi 10%
                                    </li>
                                    <li>
                                        <i class="fab fa-opencart"></i> Mua đi mua đi mọi người
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Top -->

        <!-- Start Main Top -->
        <header class="main-header">
            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="shop"><img src="images/logo_book.png" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item"><a class="nav-link" href="home.jsp">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="shop">Sách</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.html">Liên hệ</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="side-menu">
                                <c:if test="${sessionScope.acc.isadmin == 0 || sessionScope.acc == null}">
                                    <a href="cart.jsp">
                                        <i class="fa fa-shopping-bag"></i>
                                        <span class="badge">${sessionScope.size}</span>
                                        <p>My Cart</p>
                                    </a>
                                </c:if>
                                <c:if test="${sessionScope.acc.isadmin == 1}">
                                    <a href="revenue">
                                        <i class="fas fa-chart-bar"></i>
                                        <p>Doanh thu</p>
                                    </a>
                                </c:if>
                            </li>
                        </ul>
                    </div>
                    <!-- End Atribute Navigation -->
                </div>
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        <!-- Start Slider -->
        <div id="slides-shop" class="cover-slides">
            <ul class="slides-container">
                <li class="text-center">
                    <img src="images/banner1.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> Nhà sách Duy Khánh</strong></h1>
                                <p class="m-b-40">Cung cấp cho bạn thế giới sách chính hãng, <br> chất lượng, phong phú.</p>
                                <p><a class="btn hvr-hover" href="shop">Shop Now</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-center">
                    <img src="images/banner2.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> Nhà sách Duy Khánh</strong></h1>
                                <p class="m-b-40">Cung cấp cho bạn thế giới sách chính hãng, <br> chất lượng, phong phú.</p>
                                <p><a class="btn hvr-hover" href="shop">Shop Now</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-center">
                    <img src="images/banner3.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Welcome To <br> Nhà sách Duy Khánh</strong></h1>
                                <p class="m-b-40">Cung cấp cho bạn thế giới sách chính hãng, <br> chất lượng, phong phú.</p>
                                <p><a class="btn hvr-hover" href="shop">Shop Now</a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="slides-navigation">
                <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </div>
        </div>
        <!-- End Slider -->


        <jsp:include page="footer.jsp"></jsp:include>

        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery.nicescroll.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>
