<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Eody</title>

<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap">

<!-- Css Styles -->
<link rel="stylesheet" type="text/css" href="view/manager/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/elegant-icons.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/flaticon.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/owl.carousel.min.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/nice-select.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/slicknav.min.css">
<link rel="stylesheet" type="text/css" href="view/manager/css/style.css">

<style type="text/css">
.container{
	margin: 0 auto;
	text-align: center;
}
table tbody tr td{
        margin: 0 auto;
        padding-left:10px;
        padding-right:10px;
}

table tbody tr{
        margin: 0 auto;
}
.aa{
        width: 200px;
}
.move{
        margin-left: 200px;
}
.logo> a{
	margin-top: 10px;
	width: 125px !important;
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
                            <a href="admin.html"><img src="img/logo/m_blacklogo.png" alt="">
                            </a>
                    	</div>
           			</div>
            		<div class="col-lg-6">
                   		<div class="tn-right">
                        	<div class="top-social"></div>
                           	<a href="alogin.mc" class="bk-btn">login</a>
						 	<a href="manageradd.mc" class="bk-btn">Register Now</a>
						 	<div class="language-option">
   								<img src="view/manager/img/pointer.png" alt="">
    						</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="hero-text">
                        <h1>'Eody'</h1>
                        <a href="alogin.mc" class="primary-btn">Register Now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
    <!-- 
                    <div class="booking-form">
                        <h3>Booking Your Hotel</h3>
                        <form action="#">
                            <div class="check-date">
                                <label for="date-in">Check In:</label>
                                <input type="text" class="date-input" id="date-in">
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="check-date">
                                <label for="date-out">Check Out:</label>
                                <input type="text" class="date-input" id="date-out">
                                <i class="icon_calendar"></i>
                            </div>
                            <div class="select-option">
                                <label for="guest">Guests:</label>
                                <select id="guest">
                                    <option value="">2 Adults</option>
                                    <option value="">3 Adults</option>
                                </select>
                            </div>
                            <div class="select-option">
                                <label for="room">Room:</label>
                                <select id="room">
                                    <option value="">1 Room</option>
                                    <option value="">2 Room</option>
                                </select>
                            </div>
                            <button type="submit">Check Availability</button>
                        </form>
                    </div>
     -->
                </div>
            </div>
        </div>
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="view/manager/img/hero/hero-1.jpg"></div>
            <div class="hs-item set-bg" data-setbg="view/manager/img/hero/hero-2.jpg"></div>
            <div class="hs-item set-bg" data-setbg="view/manager/img/hero/hero-3.jpg"></div>
        </div>
    </section>
    <!-- Hero Section End -->

       <!-- About Us Section Begin -->
    <section class="aboutus-section spad">
        <div class="container">
                <div class="textcenter">
                    <div class="about-text">
                        <div class="section-title">
                            <span>About Us</span>
                            <h2> What is 'Eody'? </h2>
                        </div>
                        <p class="f-para">'Eody'는 약속 장소를 찾는 사람들에 최적의 모임장소를 연결해주는 플랫폼 서비스입니다.</p>
                        <p class="s-para">당신의 공간을 등록해보세요. Eody가 고객에게 당신의 공간을 연결해줍니다. </p>
                        <!--Read more 버튼 필요시 사용 
                        <a href="#" class="primary-btn about-btn">Read More</a>
                         -->
                    </div>
                </div>
            </div>
    </section>

    <!-- Services Section End -->
    <section class="services-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>What We Do</span>
                        <h2>Discover Our Services</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-036-parking"></i>
                        <h4>예약 중개 수수로 0%</h4>
                        <p>대한민국 동행세일 특별 프로모션, 모임 공간이 있는 Shop의 사업자 누구나!</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-033-dinner"></i>
                        <h4>빠른 매칭 서비스</h4>
                        <p>모임의 유형에 따라 고객을 매칭, 간편한 예약방식으로 쉽게 연결해 드립니다!</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-026-bed"></i>
                        <h4>간편한 Shop 정보 등록, 수정 관리</h4>
                        <p>운영 시간, 이용 요금, 예약일 필수 요건을 설정, 'Eody'가 전반에 걸쳐 도움을 드립니다!</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-024-towel"></i>
                        <h4>Shop 광고 제공</h4>
                        <p>마침 공간을 찾고 있는 고객에게 당신의 Shop을 광고, 선택될 기회를 높여드립니다!</p>
                    </div>
                </div>
                <!-- 
                서비스 소개영역 개체 필요할 경우 사용
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-044-clock-1"></i>
                        <h4>Community for Managers</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="service-item">
                        <i class="flaticon-012-cocktail"></i>
                        <h4>Advertisment Coupons</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna.</p>
                    </div>
                </div>
                -->
            </div>
        </div>
    </section>
    <!-- Services Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="view/manager/img/m_blacklogo.png">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br> across 90 local websites</p>
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
                                <li>https://github.com/socialDe</li>
                                <li>https://github.com/hunman89</li>
                                <li>https://github.com/cijbest</li>
                                <li>https://github.com/oshsage</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                  		<!-- Footer 오른쪽 파트 채우는 곳  -->
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
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
    <script src="view/manager/js/jquery-3.3.1.min.js"></script>
    <script src="view/manager/js/bootstrap.min.js"></script>
    <script src="view/manager/js/jquery.magnific-popup.min.js"></script>
    <script src="view/manager/js/jquery.nice-select.min.js"></script>
    <script src="view/manager/js/jquery-ui.min.js"></script>
    <script src="view/manager/js/jquery.slicknav.js"></script>
    <script src="view/manager/js/owl.carousel.min.js"></script>
    <script src="view/manager/js/main.js"></script>
</body>

</html>