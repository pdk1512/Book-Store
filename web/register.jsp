<%-- 
    Document   : login
    Created on : Mar 8, 2021, 1:37:11 PM
    Author     : 84964
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>Nhà sách Duy Khánh | Đăng ký</title>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="css/loginStyle.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Bootstrap 4 Login/Register Form</title>
    </head>

    <body>
        <div class="main-top">
            <div class="container-fluid">
                <div class="row">
                    
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
                            <li class="nav-item"><a class="nav-link" href="index.html">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="shop">Sách</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.html">Liên hệ</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                  
                </div>
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        
        <div id="logreg-forms">

            <!-- <form action="/reset/password/" class="form-reset">
                <input type="email" id="resetEmail" class="form-control" placeholder="Email address" required=""
                    autofocus="">
                <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
                <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
            </form> -->

            <form action="signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> SIGN UP</h1>

                <input name="name" type="text" class="form-control" placeholder="Full name" required="" autofocus="" >
                <p class="text-danger"></p>
                <input name="user" type="text" class="form-control" placeholder="Username" required autofocus="">
                <p class="text-danger">${alertUser}</p>
                <input name="pass" type="password" class="form-control" placeholder="Password" required autofocus="">
                <p class="text-danger"></p>
                <input name="repass" type="password" class="form-control" placeholder="Repeat Password" required
                       autofocus="">
                <p class="text-danger">${alertPass}</p>
                <input name="phone" type="tel" class="form-control" placeholder="Phone Number" required autofocus="">
                <p class="text-danger"></p>
                <input name="address" type="text" class="form-control" placeholder="Address" required autofocus="">
                <p class="text-danger"></p>
                <div class="form-group">
                    <label class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" value="Male">
                        <span class="form-check-label"> Male </span>
                    </label>
                    <label class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" value="Female">
                        <span class="form-check-label"> Female</span>
                    </label>
                </div>

                <button class="btn login-btn btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="login.jsp" style="color: #b0b435"><i class="fas fa-angle-left"></i> Back to login</a>
            </form>
            <br>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src="js/action.js"></script>
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
