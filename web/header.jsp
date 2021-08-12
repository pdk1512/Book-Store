<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="our-link">
                    <ul>
                        <c:if test="${sessionScope.acc != null}">
                            <li><a href="logout"><i class="fas fa-lock"></i> Đăng xuất</a></li>
                            <li><a href="account.jsp"><i></i> Hello ${sessionScope.acc.name}</a></li>
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

<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Shop</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Shop</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->
