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
        <title>Nhà sách Duy Khánh | Checkout</title>
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
        <jsp:include page="header.jsp"></jsp:include>

            <div class="contact-box-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-sm-12">
                            <div class="contact-info-left">
                                <h1>Thông tin đơn hàng</h1>
                                <ul>
                                    <li>
                                        <p style="font-size: 20px"><i class="fas fa-user-circle"></i>Họ và tên: ${sessionScope.acc.name}</p>
                                </li>
                                <li>
                                    <p style="font-size: 20px"><i class="fas fa-map-marker-alt"></i>Địa chỉ giao hàng: ${sessionScope.acc.address} </p>
                                </li>
                                <li>
                                    <p style="font-size: 20px"><i class="fas fa-phone-square"></i>Số điện thoại: ${sessionScope.acc.phone}</p>
                                </li>
                                <li>
                                    <p style="font-size: 20px"><i class="fas fa-truck"></i>Phí vận chuyển: Miễn phí</p>
                                </li>
                                <li>
                                    <p style="font-size: 20px">
                                        <i class="fas fa-money-bill"></i>
                                        Tổng thanh toán: 
                                        <fmt:formatNumber value="${total}"  type="number" pattern="###,### VND"/>
                                    </p>
                                </li>
                            </ul>
                            <div class="col-12 shopping-box">
                                <a href="checkout" class="ml-auto btn hvr-hover">Xác nhận đơn hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
