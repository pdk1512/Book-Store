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
        <title>Nhà sách Duy Khánh | Sản phẩm</title>
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
        <jsp:useBean id="i" class="dal.ProductDAO"></jsp:useBean>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Start Shop Page  -->
            <div class="shop-box-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                            <div class="right-product-box">
                                <div class="product-item-filter row">
                                    <form action="search" method="post" class="col-12 col-sm-8 text-center text-sm-left">
                                        <div class="toolbar-sorter-right">
                                            <div class="container">
                                                <div class="input-group">
                                                    <button type="submit" class="input-group-addon " style="background-color: #b0b435"><i class="fa fa-search" style="color: white"></i></button>
                                                    <input value="${txtS}" name="txt" type="text" class="form-control" placeholder="Search">
                                                <select name="searchby">
                                                    <option value="name" ${'name' == sby ? 'selected' : ''}>Tìm theo tên</option>
                                                    <option value="price" ${'price' == sby ? 'selected' : ''}>Tìm theo giá</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="col-12 col-sm-4 text-center text-sm-right">
                                    <ul class="nav nav-tabs ml-auto">
                                        <li>
                                            <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                                        </li>
                                        <li>
                                            <a class="nav-link" href="#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i> </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <h1>Không tìm thấy sản phẩm</h1>
                        </div>
                    </div>
                    <jsp:include page="mainRight.jsp"></jsp:include>
                    </div>
                </div>
            </div>
            <!-- End Shop Page -->
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
