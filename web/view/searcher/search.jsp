<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Eody_Search</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="view/searcher/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/searcher/css/owl.carousel.min.css">
    <link rel="stylesheet" href="view/searcher/css/magnific-popup.css">
    <link rel="stylesheet" href="view/searcher/css/font-awesome.min.css">
    <link rel="stylesheet" href="view/searcher/css/themify-icons.css">
    <link rel="stylesheet" href="view/searcher/css/nice-select.css">
    <link rel="stylesheet" href="view/searcher/css/flaticon.css">
    <link rel="stylesheet" href="view/searcher/css/gijgo.css">
    <link rel="stylesheet" href="view/searcher/css/animate.css">
    <link rel="stylesheet" href="view/searcher/css/slick.css">
    <link rel="stylesheet" href="view/searcher/css/slicknav.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

    <link rel="stylesheet" href="view/searcher/css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<style>
 /*.center{
  margin-top: 50px;
  padding-top: 50px;]
 }*/
 
.mg {
	text-align: center;
}

.select1 {
	padding-left: 150px;
}

.subwayblank, .subwayblank1 {
	margin-top: 15px;
	margin-bottom: 15px;
	height: 50px;
}

.subwayblank input {
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom: 5px;
}

.nice-select {
	margin-left: 200px;
}

.addlist {
	display: inline;
	width: 120px;
}

.btn2 {
	background-color: #ffce44;
	opacity: 0.5;
	border-radius: 10px;
	margin-left: 10px;
	margin-right: 10px;
	colot: black;	
}

.slider_text {
	background-color: white;
}
.mr-20{
	margin-right: 20px;
}
.chooseShop{
	display:table;
	margin: auto;
}
.selectShop{
	display:table-cell;
	vertical-align: middle;	
}
.nice-select{
	margin: 10px
}
</style>
 

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid ">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-3 col-lg-2">
                                <div class="logo">
                                    <a href="index.html">
                                        <img src="img/logo/s_whitelogo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-7">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                                <div class="Appointment">
                                    <c:choose>
										<c:when test="${loginuser == null}">
		 									<div class="book_btn d-none d-lg-block">
		 										<a href="login.mc">Login</a>
												<a href="searcheradd.mc">Sign Up</a>
											</div>
										</c:when>
										<c:otherwise>
											<div class="book_btn d-none d-lg-block">
												<a href="myroom.mc">My room</a>
												<a href="logout.mc">Logout</a>
									        </div>
											
										</c:otherwise>
									</c:choose>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->

    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-xl-10">
                        <div class="slider_text text-center justify-content-center">
                        	<div class="jumbotron">
	                            <ul class="nav justify-content-center">
		                            <li class="nav-item">
		                            	<a class="nav-link active genric-btn info radius mr-20" href="centerposition.mc"> 중간 지점으로 찾기</a>
		                            </li>
		                            <!-- 추후 https 환경 구축하여 Geolocation API 활용 -->
		                            <!--        
		                            <li class="nav-item">
		                            	<a class="nav-link" href="myposition.mc">내 위치에서 찾기</a>
		                            </li> 
		                            -->
		                            <li class="nav-item">
		                            	<a class="nav-link genric-btn info radius mb-20" href="areaposition.mc">지역으로 검색하기</a>
		                            </li>
	                            </ul>
	                            <c:choose>
		                            <c:when test="${centerpage == null }">
		                            	<jsp:include page="centerposition.jsp"></jsp:include>
		                            </c:when>
		                            <c:otherwise>
		                            	<jsp:include page="${centerpage}.jsp"></jsp:include>
		                            </c:otherwise>
	                            </c:choose>
                        	</div>
                    	</div>
                	</div>
            	</div>
       		</div>
    	</div>
    </div>
    <!-- slider_area_end -->
    
    
        <!-- link that opens popup -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"> </script>
    <!-- JS here -->
    <script src="view/searcher/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="view/searcher/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="view/searcher/js/popper.min.js"></script>
    <script src="view/searcher/js/bootstrap.min.js"></script>
    <script src="view/searcher/js/owl.carousel.min.js"></script>
    <script src="view/searcher/js/isotope.pkgd.min.js"></script>
    <script src="view/searcher/js/ajax-form.js"></script>
    <script src="view/searcher/js/waypoints.min.js"></script>
    <script src="view/searcher/js/jquery.counterup.min.js"></script>
    <script src="view/searcher/js/imagesloaded.pkgd.min.js"></script>
    <script src="view/searcher/js/scrollIt.js"></script>
    <script src="view/searcher/js/jquery.scrollUp.min.js"></script>
    <script src="view/searcher/js/wow.min.js"></script>
    <script src="view/searcher/js/nice-select.min.js"></script>
    <script src="view/searcher/js/jquery.slicknav.min.js"></script>
    <script src="view/searcher/js/jquery.magnific-popup.min.js"></script>
    <script src="view/searcher/js/plugins.js"></script>
    <!-- <script src="js/gijgo.min.js"></script> -->
    <script src="view/searcher/js/slick.min.js"></script>



    <!--contact js-->
    <script src="view/searcher/js/contact.js"></script>
    <script src="view/searcher/js/jquery.ajaxchimp.min.js"></script>
    <script src="view/searcher/js/jquery.form.js"></script>
    <script src="view/searcher/js/jquery.validate.min.js"></script>
    <script src="view/searcher/js/mail-script.js"></script>
 <script src="view/searcher/js/search.js"></script>
    <script src="view/searcher/js/main.js"></script>
</body>