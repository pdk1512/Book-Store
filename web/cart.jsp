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
        <title>Nhà sách Duy Khánh | Giỏ hàng</title>
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

            <!-- Start Cart  -->
            <div class="cart-box-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-main table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center">Images</th>
                                            <th style="text-align: center">Product Name</th>
                                            <th style="text-align: center">Price</th>
                                            <th style="text-align: center">Quantity</th>
                                            <th style="text-align: center">Total</th>
                                            <th style="text-align: center">Remove</th>
                                        </tr>
                                    </thead>
                                <c:set var="t" value="0"/>
                                <c:set var="tid" value="0"/>
                                <c:set var="c" value="${sessionScope.cart}"/>
                                <c:forEach items="${c.items}" var="i"> 
                                    <tbody>
                                        <tr>
                                            <td class="thumbnail-img">
                                                <a href="#">
                                                    <img class="img-fluid" src="${i.product.picture}" alt="" />
                                                </a>
                                            </td>
                                            <td class="name-pr" style="text-align: center">
                                                <a href="#">
                                                    ${i.product.name}
                                                </a>
                                            </td>
                                            <td class="price-pr" style="text-align: center">
                                                <p><fmt:formatNumber value="${i.price}"  type="price" pattern="###,###"/></p>
                                            </td>
                                            <td class="quantity-box">
                                                <c:set var="tid" value="${tid+1}"/>
                                                <input type="number" value="${i.quantity}" min="1" max="${i.product.amount}" class="c-input-text qty text" id="${tid}">
                                                <script>
                                                    document.getElementById('${tid}').addEventListener("change", function () {
                                                        let quan = document.getElementById("${tid}").value;
                                                        location.href = 'process?&quantity=' + quan + '&pid=${i.product.id}';
                                                    });
                                                </script>
                                            </td>
                                            <td class="total-pr" style="text-align: center">
                                                <p><fmt:formatNumber value="${i.quantity*i.price}"  type="price" pattern="###,###"/></p>
                                                <c:set var="t" value="${t+i.quantity*i.price}"/> 
                                            </td>
                                            <td class="remove-pr">
                                                <a href="remove?pid=${i.product.id}">
                                                    <i class="fas fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </c:forEach>    
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row my-5">
                    <div class="col-lg-8 col-sm-12"></div>
                    <div class="col-lg-4 col-sm-12">
                        <div class="order-box">

                            <hr>
                            <div class="d-flex gr-total">
                                <h5>Grand Total</h5>
                                <div class="ml-auto h5"> 
                                    <fmt:formatNumber value="${t}"  type="total" pattern="###,### VND"/>
                                </div>
                            </div>
                            <hr> </div>
                    </div>
                    <c:if test="${t != 0}">
                        <div class="col-12 d-flex shopping-box">
                            <a href="bill?total=${t}" class="ml-auto btn hvr-hover">Checkout</a> 
                        </div>
                    </c:if>
                </div>

            </div>
        </div>
        <!-- End Cart -->

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
