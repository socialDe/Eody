<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Real state</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="view/searcher/img/favicon.png">
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
<link rel="stylesheet"
        href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

<link rel="stylesheet" href="view/searcher/css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<style type="text/css">
table tbody tr td{
	margin: 0 auto;
	padding-left:10px;
	padding-right:10px;
	
}

table tbody tr{
	margin: 0 auto;
	
}
.aa{
	width:220px;

}
.move{
	margin-left: 150px;
	margin-top: 50px;
}
#register_btn{
	margin-top: 35px;
	margin-right: 250px;
	margin-bottom:50px;
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
                                                                        <a href="index.html"> <img src="img/logo/s_whitelogo.png" alt="">
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
                                                                        <div class="book_btn d-none d-lg-block">
                                                                                <a href="main.mc">Main</a>
                                                                                <a href="login.mc">Login</a>
                                                                        </div>
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
        <!-- bradcam_area  -->
        <div class="bradcam_area bradcam_bg_2">
                <div class="container">
                        <div class="row">
                                <div class="col-xl-12">
                                        <div class="bradcam_text text-center">
                                                <h3>Register</h3>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
        <!--/ bradcam_area  -->




                <!-- register start  -->
        <form action="searcheraddimpl.mc" method="post" name="regi_form" onsubmit="return nullCheck();">
			<table class="mb-20" style="margin-left: auto; margin-right: auto;">
				<tr>
					<td>ID</td>
					<td colspan="2">
						<div class="input_field mb-20">
							<input type="text" name="searcher_id" id="searcher_id"placeholder="ID"><br>
						</div>
					</td>
					<td style="padding-bottom:22px">
						<button id="id_check_btn" class="genric-btn info small" type="button">중복확인</button>
					</td>
					<td style="padding-bottom:22px">
						<div class="aa">
							<span id="id_check_result"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td colspan="3">
						<div class="input_field mb-20">
							<input type="password" name="searcher_pwd" id="searcher_pwd" placeholder="Password">
						</div>
					</td>
				</tr>
				<tr>
					<td>Password_check</td>
					<td colspan="2">
						<div class="input_field mb-20">
							<input type="password" name="pwd_check" id="pwd_check" placeholder="Confirm Password">
						</div>
					</td>
					<td colspan="2" style="padding-bottom:20px">
						<div class="aa">
							<span id="check_text"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td>name</td>
					<td colspan="3">
						<div class="input_field mb-20">
							<input type="text" name="searcher_name" placeholder="Name">
						</div>
					</td>
				</tr>
				<tr>
					<td>address</td>
					<td colspan="3">
						<div class="input_field mb-20">
							<input type="text" name="searcher_address" placeholder="ex) 서울시 강남구 서초동">
						</div>
					</td>
				</tr>
				<tr>
					<td>telephone</td>
					<td colspan="3">
						<div class="input_field mb-20">
							<input type="text" name="searcher_phone" placeholder="ex) 010-000-0000">
						</div>
					</td>
				</tr>
				<tr>
					<td>Nickname</td>
					<td colspan="3"><div class="input_field mb-20">
							<input type="text" name="searcher_nickname" placeholder="Nickname">
						</div>
					</td>
				</tr>
				<tr>
					<td>Birthday</td>
					<td><select class="mb-20 small" name="user_birth_year" size="5">
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004" selected>2004</option>
					</select>&nbsp; 년
					<td><select class="mb-20 small" name="user_birth_month" size="5">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select>&nbsp; 월</td>
					<td><select class="mb-20 small" name="user_birth_day" size="5">
							<option value="1" selected>1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
					</select>&nbsp; 일</td>
				</tr>
				<tr>
					<td>email</td>
					<td colspan="3">
						<div class="input_field mb-20">
							<input type="text" name="searcher_email" placeholder="ex) xxx@eody.com">
						</div>
					</td>
				</tr>
				<tr>
					<td>gender</td>
					<td colspan="3">
						<input type="radio" name="searcher_gender" value="m" />&nbsp; man 
						<input type="radio" name="searcher_gender" value="w" />&nbsp; woman
					</td>
				</tr>
				<!-- <tr><td></td><td></td></tr> -->
			</table>

			<div class="text-center">
				<button id="register_btn" class="boxed-btn2 mb-30" type="submit">Register</button>
			</div>
		</form>

        <!-- register end  -->


        <!-- footer start -->
        <footer class="footer">
                <div class="footer_top">
                        <div class="container">
                                <div class="row">
                                        <div class="col-xl-3 col-md-6 col-lg-3">
                                                <div class="footer_widget">
                                                        <div class="footer_logo">
                                                                <a href="#"> <img src="img/logo/s_whitelogo.png" alt="">
                                                                </a>
                                                        </div>
                                                        <p>
                                                                <a href="#">conbusi@support.com</a> <br> +10 873 672 6782 <br>
                                                                600/D, Green road, NewYork
                                                        </p>
                                                        <div class="socail_links">
                                                                <ul>
                                                                        <li><a href="#"> <i class="ti-facebook"></i>
                                                                        </a></li>
                                                                        <li><a href="#"> <i class="ti-twitter-alt"></i>
                                                                        </a></li>
                                                                        <li><a href="#"> <i class="fa fa-instagram"></i>
                                                                        </a></li>
                                                                </ul>
                                                        </div>

                                                </div>
                                        </div>
                                        <div class="col-xl-2 col-md-6 col-lg-3">
                                                <div class="footer_widget">
                                                        <h3 class="footer_title">Services</h3>
                                                        <ul>
                                                                <li><a href="#">Marketing & SEO</a></li>
                                                                <li><a href="#"> Startup</a></li>
                                                                <li><a href="#">Finance solution</a></li>
                                                                <li><a href="#">Food</a></li>
                                                                <li><a href="#">Travel</a></li>
                                                        </ul>

                                                </div>
                                        </div>
                                        <div class="col-xl-2 col-md-6 col-lg-2">
                                                <div class="footer_widget">
                                                        <h3 class="footer_title">Useful Links</h3>
                                                        <ul>
                                                                <li><a href="#">About</a></li>
                                                                <li><a href="#">Blog</a></li>
                                                                <li><a href="#"> Contact</a></li>
                                                                <li><a href="#">Appointment</a></li>
                                                        </ul>
                                                </div>
                                        </div>
                                        <div class="col-xl-4 col-md-6 col-lg-4">
                                                <div class="footer_widget">
                                                        <h3 class="footer_title">Subscribe</h3>
                                                        <form action="#" class="newsletter_form">
                                                                <input type="text" placeholder="Enter your mail">
                                                                <button type="submit">Subscribe</button>
                                                        </form>
                                                        <p class="newsletter_text">Esteem spirit temper too say
                                                                adieus who direct esteem esteems luckily.</p>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
                <div class="copy-right_text">
                        <div class="container">
                                <div class="footer_border"></div>
                                <div class="row">
                                        <div class="col-xl-12">
                                                <p class="copy_right text-center">
                                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                        Copyright &copy;
                                                        <script>
                                                                document.write(new Date().getFullYear());
                                                        </script>
                                                        All rights reserved | This template is made with <i
                                                                class="fa fa-heart-o" aria-hidden="true"></i> by <a
                                                                href="https://colorlib.com" target="_blank">Colorlib</a>
                                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                </p>
                                        </div>
                                </div>
                        </div>
                </div>
        </footer>
        <!--/ footer end  -->

        <!-- link that opens popup -->
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

        <!-- register js -->
        <script src="view/searcher/js/functionCheck.js"></script>



        <!--contact js-->
        <script src="view/searcher/js/contact.js"></script>
        <script src="view/searcher/js/jquery.ajaxchimp.min.js"></script>
        <script src="view/searcher/js/jquery.form.js"></script>
        <script src="view/searcher/js/jquery.validate.min.js"></script>
        <script src="view/searcher/js/mail-script.js"></script>


        <script src="view/searcher/js/main.js"></script>
</body>

</html>