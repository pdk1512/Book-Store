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
        <title>Nhà sách Duy Khánh | Chi tiết</title>
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

            <!-- Start Shop Detail  -->
            <div class="shop-detail-box-main">
                <div class="container">
                    <form name="f" action="" method="post" class="row">
                        <div class="col-xl-5 col-lg-5 col-md-6">
                            <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active"> <img class="d-block w-100" src="${detail.picture}" alt="First slide"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-6">
                        <div class="single-product-details">
                            <h2>${detail.name}</h2>
                            <c:if test="${detail.status == 'new'}">
                                <h5><fmt:formatNumber value="${detail.price}"  type="number" pattern="###,### VND"/></h5>
                            </c:if>
                            <c:if test="${detail.status == 'sale'}">
                                <h5><del><fmt:formatNumber value="${detail.price}"  type="number" pattern="###,### VND"/></del></h5>
                                <h5><fmt:formatNumber value="${(detail.price*90)/100}"  type="number" pattern="###,### VND"/></h5>
                            </c:if>
                            <p class="available-stock"><span><h5>${detail.amount} available </h5></span><p>
                            <h4>Short Description:</h4>
                            <p>${detail.description}</p>
                            <ul>
                                <li>
                                    <div class="form-group quantity-box">
                                        <label class="control-label">Quantity</label>
                                        <input class="form-control" value="1" min="1" max="${detail.amount}" type="number" name="num">
                                    </div>
                                </li>
                            </ul>

                            <div class="price-box-bar">
                                <div class="cart-and-bay-btn">
                                    <c:if test="${detail.amount != 0}">
                                        <input type="submit" onclick="buy('${detail.id}')" value="Thêm vào giỏ hàng" class="btn hvr-hover" style="color: white"/>
                                    </c:if>
                                    <c:if test="${detail.amount == 0}">
                                        <h2>Rất tiếc sản phẩm này đã hết hàng!</h2>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

                <div class="row my-5">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Sách đang khuyến mãi</h1>
                            <p>Những sách dưới đây được khuyến mãi 10%</p>
                        </div>
                        <div class="featured-products-box owl-carousel owl-theme">
                            <!-- Sale product block -->
                            <c:forEach items="${listS}" var="s">
                                <div class="item">
                                    <div class="products-single fix">
                                        <div class="box-img-hover">
                                            <img src="${s.picture}" class="img-fluid" alt="Image">
                                            <div class="mask-icon">
                                                <ul>
                                                    <li><a href="detail?pid=${s.id}" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                </ul>
                                                <a class="cart" href="detail?pid=${s.id}">Add to Cart</a>
                                            </div>
                                        </div>
                                        <div class="why-text">
                                            <h4>${s.name}</h4>
                                            <h5><fmt:formatNumber value="${s.price}"  type="number" pattern="###,### VND"/></h5>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <!-- End of sale product block -->
                        </div>
                    </div>
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
<script type="text/javascript">
                                            function buy(id) {
                                                document.f.action = "buy?pid=" + id;
                                                document.f.submit();
                                            }
</script>    
