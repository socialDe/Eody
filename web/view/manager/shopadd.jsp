<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eody</title>
<meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

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

<script>

    function oneCheckbox1(a){
        var obj = document.getElementsByName("shop_park");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != a){
                obj[i].checked = false;
            }
        }
    };
    function oneCheckbox2(a){
        var obj = document.getElementsByName("shop_booking");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != a){
                obj[i].checked = false;
            }
        }
    };
</script>
<style>
	.container{
		margin: 0 auto;
		text-align: center;
	}
	.table1{
		text-align: center;
		margin: 0 auto;
	}

</style>
</head>



<body>
 <!-- Page Preloder -->
        <div id="preloder">
                <div class="loader"></div>
        </div>
		<!-- Offcanvas Menu Section Begin -->
	    <div class="offcanvas-menu-wrapper">
	        <div class="header-configure-area">
	            <a href="alogin.mc" class="bk-btn">Login</a>
	            <a href="aregister.mc" class="bk-btn">Register Now</a>
	        </div>
	        <div id="mobile-menu-wrap"></div>
	        <div class="top-social">
	            <a href="#"><i class="fa fa-facebook"></i></a>
	            <a href="#"><i class="fa fa-twitter"></i></a>
	            <a href="#"><i class="fa fa-tripadvisor"></i></a>
	            <a href="#"><i class="fa fa-instagram"></i></a>
	        </div>
	        <ul class="top-widget">
	            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
	            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
	        </ul>
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
                                                        <a href="alogin.mc" class="bk-btn">login</a>
                            <a href="manageradd.mc" class="bk-btn">Sign Up</a>
                                                        <div class="language-option">
                                                                
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
                
        </header>
        <!-- Header End -->
<div class="jumbotron jumbotron-fluid">
	<div class="container">
		<form action="shopaddimpl.mc" enctype="multipart/form-data" method="post">
			<p> 가게 등록 </p>
			<table class="table1">
				<tr>
					<td><span>가게명:</span></td>
					<td><input type="text" name="shop_name" value = "${singleshop.shop_name}"></td>
				</tr>
				<tr>
					<td><span>사업자 번호:</span></td>
					<td><input type="text" name="shop_number" value = "${singleshop.shop_number}"></td>
				</tr>
				<tr>
					<td><span>주소:</span></td>
					<td><input type="text" name="shop_address" value = "${singleshop.shop_address}"></td>
				</tr>
				<tr>
					<td><span>운영시간:</span></td>
					<td><input type="text" name="shop_time" value = "${singleshop.shop_time}"></td>
				</tr>
				<tr>
					<td><span>전화번호:</span></td>
					<td><input type="text" name="shop_phone" value = "${singleshop.shop_phone}"></td>
				</tr>
				<tr>
					<td><span>헤당지역:</span></td>
					<td><input type="text" name="h_name" value = "${singleshop.h_name}"></td>
				</tr>
				<tr>
					<td><span>장소유형:</span></td>
					<td><input type="text" name="shop_type" value = "${singleshop.shop_type}"></td>
				</tr>
				<tr>
					<td><span>주차장:</span></td>
					<td>
						<p align="center" class="checkbox1">
						<input type='checkbox' name='shop_park' id='checkpark_1' value='1' onclick='oneCheckbox1(this);'>예
						<input type='checkbox' name='shop_park' id='checkpark_0' value='0' onclick='oneCheckbox1(this);'>아니오</p>
					</td>
				</tr>
				<tr>
					<td><span>예약여부:</span></td>
					<td>
					<p align="center" class="checkbox2">
						<input type='checkbox' name='shop_booking' id='checkbooking_1' value='1' onclick='oneCheckbox2(this);'>예
						<input type='checkbox' name='shop_booking' id='checkbooking_0' value='0' onclick='oneCheckbox2(this);'>아니오</p>
					</td>
				</tr>
				<tr>
					<td><span>가게 이미지:</span></td>
					<td><input id = "filebtn" multiple="multiple" type="file" name="files"></td>
				</tr>
				<tr>
					<td><span>장소소개:</span></td>
					<td><input type="text" id="introduce" name="shop_info" value="${singleshop.shop_info }" ></td>
				</tr>
			</table>
			<input type="hidden" name="manager_id" value="${aloginuser.manager_id}">
			<p></p>
			<button type="submit" class="btn btn-light">등록하기</button>
		</form>	  
	</div>
</div>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="view/manager/js/jquery-3.3.1.min.js"></script>
    <script src="view/manager/js/bootstrap.min.js"></script>
    <script src="view/manager/js/jquery.magnific-popup.min.js"></script>
    <script src="view/manager/js/jquery.nice-select.min.js"></script>
    <script src="view/manager/js/jquery-ui.min.js"></script>
    <script src="view/manager/js/jquery.slicknav.js"></script>
    <script src="view/manager/js/owl.carousel.min.js"></script>
    <script src="view/manager/js/main.js"></script>
    <script src="view/manager/js/chart.js"></script>
</body>
</html>