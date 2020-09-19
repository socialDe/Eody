<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="UTF-8">
	<title>Eody</title>
	<meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Eody</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="view/manager/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="view/manager/css/style.css" type="text/css">
</head>
<style>
	.hp-room-items .hp-room-item{
		height: 500px;
	}
	.jumbotron{
		text-align: center;
	}
	.icon{
		width: 100px;
		height: 100px;
		margin: 0 auto;
		cursor: pointer;
		text-align: center;
	}
	.icon>.fas fa-plus{
		text-align: center;
		width: 100%;
		height: 100%;
	}
	.hp-room-section{
		padding-bottom: 20px;
	}
</style>
<body>
        <!-- Page Preloder -->
        <div id="preloder">
                <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <header class="header-section header-normal">
                <div class="top-nav">
                        <div class="container">
                                <div class="row">
                                        <div class="col-lg-6">
                                                <div class="logo">
                                                        <a href="admin.html"> <img src='img/logo/m_blacklogo.png' alt="">
                                                        </a>
                                                </div>
                                        </div>
                                        <div class="col-lg-6">
                                                <div class="tn-right">
                                                        <div class="top-social">
                                                                
                                                        </div>
                                                        <a href="admin.html" class="bk-btn">Logout</a>
                                                        <div class="language-option">
                                                                
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
                
        </header>
        <!-- Header End -->
    <!-- Home Room Section Begin -->
    <section class="hp-room-section">
    	<c:choose>
			<c:when test="${centerpage1 == null }">
			   <jsp:include page="center1.jsp"></jsp:include>
			</c:when>
			<c:otherwise>
		  		<jsp:include page="${centerpage1}.jsp"></jsp:include>
			</c:otherwise>
		</c:choose>
    </section>
    <div class="jumbotron">
    	<h3> 가게를 추가하시겠습니까?</h3>
    	<p> 가게를 추가하여 자신의 가게를 보여주세요.</p>
    	<div class="icon" onclick="move()">
			<i class="fas fa-plus fa-5x"></i>
    	</div>
	</div>
    <!-- Home Room Section End -->
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                   <img src='img/m_blacklogo.png' alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>info.colorlib@gmail.com</li>
                                <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->
     <!-- Js Plugins -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="view/manager/js/jquery-3.3.1.min.js"></script>
    <script src="view/manager/js/bootstrap.min.js"></script>
    <script src="view/manager/js/jquery.magnific-popup.min.js"></script>
    <script src="view/manager/js/jquery.nice-select.min.js"></script>
    <script src="view/manager/js/jquery-ui.min.js"></script>
    <script src="view/manager/js/jquery.slicknav.js"></script>
    <script src="view/manager/js/owl.carousel.min.js"></script>
    <script src="view/manager/js/main.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script>
		function move(){
			location.href='shopadd.mc';
		};
</script>  
</body>
</html>