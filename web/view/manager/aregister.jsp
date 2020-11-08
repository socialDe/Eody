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
table tbody tr td {
	margin: 0 auto;
	padding-left: 10px;
	padding-right: 10px;
}

table tbody tr {
	margin: 0 auto;
}
.register_div{
	margin-left: 200px;
	margin-top: 50px;
}
.check_bnt_space {
	width: 220px;
	padding-bottom: 25px;
}

.review-add {
	text-align: center;
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

	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>Register</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Room Details Section Begin -->
	<section class="room-details-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="review-add">
						<!-- register start -->
						<div class="register_div">
							<form action="manageraddimpl.mc" method="post" class="ra-form">
								<table style="margin-left: auto; margin-right: auto;">
									<tr>
										<td>ID</td>
										<td colspan="3">
											<div>
												<input type="text" name="manager_id" placeholder="ID"><br>
											</div>
										</td>
										<td>
											<button id="aid_check_btn" class="genric-btn info small"
												type="button" style="margin-bottom: 30px">중복확인</button>
										</td>
										<td>
											<div class="check_bnt_space">
												<span id="aid_check_result"></span>
											</div>
										</td>
									</tr>
									<tr>
										<td>Password</td>
										<td colspan="3">
											<div>
												<input type="password" name="manager_pwd" id="manager_pwd"
												placeholder="Password">
											</div>
										</td>
									</tr>
									<tr>
										<td>Password_check</td>
										<td colspan="3">
											<div>
												<input type="password" name="pwd_check" id="pwd_check"
												placeholder="Confirm Password">

											</div>
										</td>
										<td colspan="2">
											<div class="check_bnt_space">
												<span id="apwd_check_result"></span>
											</div>
										</td>
									</tr>
									<tr>
										<td>name</td>
										<td colspan="3">
											<div>
												<input type="text" name="manager_name" placeholder="Name">
											</div>
										</td>
									</tr>
									<tr>
										<td>address</td>
										<td colspan="3">
											<div>
												<input type="text" name="manager_address"
												placeholder="ex) 서울시 강남구 서초동">
											</div>
										</td>
									</tr>
									<tr>
										<td>telephone</td>
										<td colspan="3">
											<div>
												<input type="text" name="manager_phone"
												placeholder="ex) 010-000-0000">
											</div>
										</td>
									</tr>
									<tr>
										<td>Nickname</td>
										<td colspan="3">
											<div>
												<input type="text" name="manager_nickname"
												placeholder="Nickname">
											</div>
										</td>
									</tr>
									<tr style="margin-bottom: 20px;">
										<td>Birthday</td>
										<td style="padding-bottom: 20px">
											<select	name="user_birth_year" size="5">
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
										</td>
										<td style="padding-bottom: 20px">
											<select	name="user_birth_month" size="5" style="margin-bottom: 20px">
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
											</select>&nbsp; 월
										</td>
										<td style="padding-bottom: 20px">
											<select	name="user_birth_day" style="margin-bottom: 20px">
												<option value="1">1</option>
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
											</select>&nbsp; 일
										</td>
									</tr>
									<tr>
										<td>email</td>
										<td colspan="3">
											<div class="input_field mb-20">
												<input type="text" name="manager_email"
												placeholder="ex) xxx@eody.com">
											</div>
										</td>
									</tr>
									<tr>
										<td>gender</td>
										<td colspan="3"><input type="radio" name="manager_gender"
										value="m" style="width: 25px; height: 25px;" />&nbsp; man
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" name="manager_gender" value="w"
										style="width: 25px; height: 25px;" />&nbsp; woman</td>
									</tr>
										<!-- <tr><td></td><td></td></tr> -->
								</table>
								<div>
									<input type="hidden" id="msg" value="${msg}"/>
								</div>
								<div style="margin-top: 30px">
									<button class="boxed-btn2 mb-30" type="submit" onclick="return regiFormCheck();">Register</button>
								</div>
							</form>
						</div>	
						<!-- register end -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Room Details Section End -->

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
	<!-- register js -->
	<script src="view/manager/js/functionCheck.js"></script>
	<script src="view/manager/js/formCheck.js"></script>
</body>

</html>