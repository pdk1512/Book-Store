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
        <title>Nhà sách Duy Khánh | Doanh thu</title>
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

        <style>
            th, td{
                border: 1px solid;
                font-size: 20px;
            }
        </style>

    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <c:set var="t" value="0"/>
        <div class="contact-box-main">
            <div class="container">
                <div class="row">
                    <table style="width: 800px">
                        <tr>
                            <th style="text-align: center">Thời gian</th>
                            <th style="text-align: center">Tổng doanh thu</th>
                        </tr>
                        <c:forEach items="${listR}" var="r">
                            <tr>
                                <td style="text-align: center">${r.date}</td>
                                <td style="text-align: center">
                                    <fmt:formatNumber value="${r.revenue}"  type="number" pattern="###,###,### VND"/>
                                    <c:set var="t" value="${t+r.revenue}"/> 
                                </td>
                            </tr>
                        </c:forEach>
                        <tr style="border: none">
                            <td style="border: none; text-align: center"><b>Tổng doanh thu</b></td>
                            <td style="border: none; text-align: center">
                                <b>
                                    <fmt:formatNumber value="${t}"  type="number" pattern="###,###,### VND"/>
                                </b>
                            </td>
                        </tr>
                    </table>
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
