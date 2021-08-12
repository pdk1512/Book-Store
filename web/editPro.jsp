<%-- 
    Document   : edit
    Created on : Mar 10, 2021, 11:38:38 AM
    Author     : 84964
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>Nhà sách Duy Khánh | Chỉnh sửa</title>
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
            <!-- Start Contact Us  -->
            <div class="contact-box-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-sm-12">
                            <div class="contact-form-right">
                                <h2>CHỈNH SỬA SẢN PHẨM</h2>
                                <form action="editPro" method="post">
                                    <div class="row" >
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="id" style="font-size: 18px">ID:</label>
                                                <input type="text" class="form-control" name="id" value="${detail.id}" readonly>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="name" value="${detail.name}" required data-error="Hãy nhập đủ tên sản phẩm">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="cate" style="font-size: 18px">Loại sản phẩm:</label>
                                                <select name="cate" style="font-size: 18px">
                                                    <c:forEach items="${listC}" var="c">
                                                        <option value="${c.id}" ${c.id == detail.cate? "selected":""}>${c.category}</option>
                                                    </c:forEach>
                                                </select>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="price" value="${detail.price}" required data-error="Hãy nhập đủ giá sản phẩm">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="amount" value="${detail.amount}" required data-error="Hãy nhập số lượng sản phẩm">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="status" value="new" ${detail.status == "new"? "checked":""}>
                                                    <span class="form-check-label" style="font-size: 20px"> New </span>
                                                </label>
                                                <label class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="status" value="sale" ${detail.status == "sale"? "checked":""}>
                                                    <span class="form-check-label" style="font-size: 20px"> Sale</span>
                                                </label>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="pic" value="${detail.picture}" required data-error="Hãy nhập đường dẫn ảnh sản phẩm">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <textarea class="form-control" name="des" rows="5" data-error="Mô tả sản phẩm ở đây" required>${detail.description}</textarea>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            <div class="submit-button text-center">
                                                <button class="btn hvr-hover" type="submit">Lưu</button>
                                                <div id="msgSubmit" class="h3 text-center hidden"></div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
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
