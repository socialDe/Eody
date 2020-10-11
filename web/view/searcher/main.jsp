<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Directory</title>
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
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="https://kit.fontawesome.com/345e78b851.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="view/searcher/css/style.css">

<!-- <link rel="stylesheet" href="css/responsive.css"> -->
<style>
.modal-backdrop {
	z-index: -1;
}

.modal-content {
	width: 200%;
	position: absolute;
	left: 50%;
	transform: translate(-50%);
}
.testimonial_area  {
	padding: 100px 0 0 0;
}

#mainshop {
	display: inline-block;
	width: 365px;
}

#shopinfo {
	font-weight: bold;
	color: white;
}

</style>
</head>



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
									<a href="index.html"> <img src="img/logo/s_whitelogo.png"
										alt="">
									</a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-7">
								<div class="main-menu  d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li id="weather"><span></span>&emsp;<span></span>&emsp;<span></span>&emsp;<span
												style="color: white"></span></li>
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
									<!-- <div class="book_btn d-none d-lg-block">
										<a href="login.mc">Sign In</a>
									</div> -->
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
							<p>어디서 볼 지 막막할 때,</p>
							<h3>'Eody'</h3>
							<!--정보입력화면 생성 후 연결 -->
							<a href="search.mc" class="boxed-btn2" type="submit">Search</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider_area_end -->


	<!-- testimonial_area  -->
	<!-- 추후 Shop List 추가 필요 -->
	<!-- List 구현시 기존 소스코드의 Discover부분 <div class="col-xl-3 col-md-4 col-lg-3"> 활용 고려 -->
	<div class="testimonial_area  ">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="section_title mb-60 text-center">
						<p>Eody's Picks</p>
						<h3>Recommendations of Eody</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="explorer_europe list_wrap">
		<div class="container">
			<div class="row">
	
			<c:forEach var="shop" items="${shoplist}" begin="0" end="2" step="1"
				varStatus="vs">
				<div class="col-xl-4 col-lg-3 col-md-3" id="mainshop">

					<div class="single_explorer">
						<div class="thumb">
							<img src="img/shopImg/${shop.shop_img1 }" width="250px"
								height="200px">
						</div>
						<div class="explorer_bottom d-flex">

							<div class="explorer_info">
								<h3>
									<a data-toggle="modal" href="#shopmodal${vs.index }"
										onclick="fn_count('${shop.shop_name }')"> ${shop.shop_name }</a>
								</h3>
								<p>${shop.shop_address }</p>
								<ul>
									<li><i class="fa fa-phone"></i>${shop.shop_phone }</li>
									<li><i class="fa fa-star"></i>${shop.shop_score_avg }/5.0</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="shopmodal${vs.index }" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLongTitle"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">

							<div class="modal-header">

								<h3 class="modal-title">Reserve</h3>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>

							</div>
							<div class="modal-body">
								<div class="col-lg-8 col-md-8"  style="background: linear-gradient(
							            to right,
							            rgba(255, 255, 255, 0) 10%,
							            rgba(255, 255, 255, 0.25) 25%,
							            rgba(255, 255, 255, 0.5) 50%,
							            rgba(255, 255, 255, 0.75) 75%,
							            rgba(255, 255, 255, 1) 100%
							          ),url(img/shopImg/${shop.shop_img1 }); background-size:cover;">
									<div class="explorer_info">
										<h3>
											<a href="#" id="shopinfo">${shop.shop_name }</a>
										</h3>
										<p id="shopinfo">${shop.shop_address }</p>
										<ul id="shopinfo">
											<li><i class="fa fa-phone"></i> ${shop.shop_phone }</li>
											<li><i class="fa fa-star"></i>${shop.shop_score_avg }/5.0</li>
											<li><i class="fa fa-info"></i>&emsp;${shop.shop_info }</li>
										</ul>
									</div>
								</div>
								<div class="section-top-border" id = "shopimages">
									<!-- image -->
										<img src="img/shopImg/${shop.shop_img2 }" width="300px"
										height="250px">
										<img src="img/shopImg/${shop.shop_img3 }" width="300px"
										height="250px">
										<img src="img/shopImg/${shop.shop_img4 }" width="300px"
										height="250px">
								</div>
								<div class="section-top-border">
									<form action="bookingimpl.mc" method="post">
										<table class="mb-20"
											style="margin-left: auto; margin-right: auto;">
											<tr>
												<td>예약자 성함</td>
												<td colspan="2"><div class="input_field mb-20">
														<input type="text" name="searcher_name" placeholder="name"><br>
													</div></td>
											</tr>
											<tr>
												<td><input type="hidden" name="searcher_id"
													value="${loginuser.searcher_id }"></td>
												<td><input type="hidden" name="shop_name"
													value="${shop.shop_name }"></td>
												<td><input type="hidden" name="booking_stat" value="0"></td>
												<td><input type="hidden" name="review_stat" value="0"></td>
												<td><input type="hidden" name="shop_img"
													value="${shop.shop_img1 }"></td>
											</tr>
											<tr>
												<td>인원수</td>
												<td colspan="3"><div class="input_field mb-20">
														<input type="text" name="booking_pp" id="booking_pp"
															placeholder="number">
													</div></td>
											</tr>
											<tr>
												<td>예약일</td>
												<td colspan="3"><div class="input_field mb-20">
														<input type="datetime" name="booking_date" id="booking_date"
															value="2020-09-01 00:00:00">
													</div></td>
											</tr>
											<tr>
												<td>예약메시지</td>
												<td colspan="3"><div class="input_field mb-20">
														<textarea class="single-textarea" placeholder="Message"
															name="booking_msg" onfocus="this.placeholder = ''"
															onblur="this.placeholder = 'Message'" required></textarea>
													</div></td>
											</tr>
											<tr>
												<td>예약자 연락처</td>
												<td colspan="3"><div class="input_field mb-20">
														<input type="text" name="searcher_phone"
															placeholder="ex) 010-000-0000">
													</div></td>
											</tr>
										</table>
										<button class="boxed-btn2 mb-30" type="submit">예약하기</button>
										
									</form>

								</div>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
</div>
		</div>
	</div>

	<div class="popular_catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="section_title mb-60 text-center">
						<p>What is Eody</p>
						<h3>Eody's Services</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<p>‘Eody’는 만남 약속에 앞서 고민하기 어려웠던 지역과 장소를 손쉽게 정할 수 있도록 참석인원들의 거리,
					목적 등 여러 요인을 고려해 만남에 적절한 추천해주는 서비스입니다. 참석 인원들의 거리를 우선적으로 탐색하거나, 내
					위치를 기반으로 가까운 핫플레이스 탐색, 특정 지역을 지정해 주변 모임 장소를 탐색해주는 서비스를 제공하고 있습니다.
					지역 및 장소 탐색부터 예약까지 간편하게 이용해보세요!</p>
			</div>
		</div>
	</div>

	<!-- sprayed_area  -->
	<div class="sprayed_area overlay">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="text text-center">
						<h3>Sprayed Your Business with Us</h3>
						<p>
							Esteem spirit temper too say adieus who direct esteem. It esteems
							luckily or picture placing drawing <br> apartments
							frequently or motionless.
						</p>
						<a href="#" class="boxed-btn2">Add Your Business</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ sprayed_area end  -->


	<!-- footer start -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-md-6 col-lg-3">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="#"> <img src="img/logo/s_whitelogo.png"
									alt="">
								</a>
							</div>
							<p>
								Esteem spirit temper too say adieus who <br> direct esteem.
								It esteems luckily or <br> picture placing drawing.
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-google-plus"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
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
								<li><a href="#">SEO/SEM </a></li>
								<li><a href="#">Web design </a></li>
								<li><a href="#">Ecommerce</a></li>
								<li><a href="#">Digital marketing</a></li>
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
								<li><a href="#">Support</a></li>
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
	<script
		src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">
		
	</script>
	<script src="https://code.jquery.com/jquery-latest.js"></script>
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


	<script src="view/searcher/js/main.js"></script>
	<script>
		function fn_count(name) {
			$.ajax({
				url : 'shop_hitcnt.mc',
				data : {
					'shop_name' : name
				}
			});
		}

		function getWeather() {
			var urlstr = 'weather.mc'; //서버에서 데이터 불러오기
			$.ajax({
				url : urlstr,
				dataType : 'json',
				success : function(data) {
					weatherDisplay(data);
				},
				errer : function() {
					alert('error');
				}
			});
		};

		function weatherDisplay(data) {
			$('#weather > span').empty(); //span 청소			
			var obj = {};
			var result = [];
			$(data.response.body.items.item).each(function(index, d) { //데이터 출력		
				obj = {};
				obj.category = d.category;
				obj.fcstValue = d.fcstValue;
				result.push(obj);
			});
			$('#weather > span:eq(0)').html(
					'<a href="#">온도: ' + result[6].fcstValue + '도</a>');
			$('#weather > span:eq(1)').html(
					'<a href="#">습도: ' + result[3].fcstValue + '%</a>');
			$('#weather > span:eq(2)').html(
					'<a href="#">강수확률: ' + result[0].fcstValue + '%</a>');

			var icon = ''; //사진 바꾸기
			if (Number(result[1].fcstValue) == 0) { //(0)비없음  / 맑음(1), 구름많음(3), 흐림(4)
				if (Number(result[5].fcstValue) == 1) {
					icon = 'sun';
				} else if (Number(result[5].fcstValue) == 3) {
					icon = 'cloud-sun';
				} else if (Number(result[5].fcstValue) == 4) {
					icon = 'cloud';
				}
			} else if (Number(result[1].fcstValue) == 1
					|| Number(result[1].fcstValue) == 5) { //비, 빗방울     ==> 없음(0), 비(1), 비/눈(2), 눈(3), 소나기(4), 빗방울(5), 빗방울/눈날림(6), 눈날림(7)
				icon = 'umbrella';
			} else if (Number(result[1].fcstValue) == 2
					|| Number(result[1].fcstValue) == 6) { //비,눈 /빗방울/눈날림
				icon = 'cloud-rain';
			} else if (Number(result[1].fcstValue) == 3
					|| Number(result[1].fcstValue) == 7) { //눈, 눈날림
				icon = 'snowflake';
			} else if (Number(result[1].fcstValue) == 4) { //소나기
				icon = 'cloud-sun-rain';
			}
			;
			$('#weather > span:eq(3)').html('<i class="fas fa-'+icon+'"></i>'); //사진 삽입
		}

		$(document).ready(function() {
			getWeather();
		});
	</script>
</body>

</html>