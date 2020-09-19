<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Eody_Result</title>
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
 .center{
  margin-top: 50px;
  padding-top: 50px;
 }
 div.popular_catagory_area{
         background: #e9ecef;
         padding-top: 30px;
         padding-bottom:30px;
 }
 div.col-xl-10{
         margin-left: auto;
         margin-right: auto;
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
                        <div class="col-xl-10">
                                <div class="popular_catagory_area">
                                    <div class="container">
                                     <div class="row">
                                        <div class="col-xl-12">
                                            <div class="section_title mb-60 text-center">
                                                <p>Discover</p>
                                                <h3>
                                                    Region Search Result...
                                                </h3>
                                            </div>
                                        </div>
                                    </div>
                                                <jsp:include page="${centerpage}.jsp"></jsp:include>
                                        <div class="section_title mb-60 text-center">
                                        <a href="specific_search.mc?region1=${region1.h_name }&region2=${region2.h_name }&region3=${region3.h_name }&searchType=DFS&number_blank=3&shop=${shop}&time=${time}" id="place_search" class="genric-btn info radius">상세장소 찾기</a>
                                        <a href="main.mc" class="genric-btn danger radius">돌아가기</a>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
    </div>
</div>
    <!-- slider_area_end -->
    <script>

/* var region1=${region1};
var region2=${region2};
var region3=${region3};
#place_search.click(function(){
        $.ajax({
                url: "memberRegi.do",
                data: "region1=" + region1,
                "region2="+region2,
                "region3="+region3,
                type: "POST",
                success : function(data){
                        alert("성공")
                },
                error : function(){
                        alert("에러")                
                }
        });
}); */


</script>
    
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