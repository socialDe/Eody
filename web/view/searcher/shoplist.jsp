<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- explorer_europe start  -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=463b843df9cf28ea2134025d8f98ed25"></script>
<div class="explorer_europe list_wrap">
	<div class="container">
	<div class="bradcam_text text-center">  <h1>Choose the shop</h1></br></br>  </div>
		<div class="row" >
			<div class="col-xl-4 col-lg-4">
				<div class="filter_wrap">
					<div class="bradcam_text text-center"><h3>${hplace.h_name }</h3></div>
					<div class="filter_main_wrap">
						<div class="filter_inner">
							<div id="map" style="height: 350px;"></div>
							<script>
								var lat = ${hplace.h_lat }
								var lng = ${hplace.h_lng }
								var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
								var options = { //지도를 생성할 때 필요한 기본 옵션
									center : new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
									level : 3
								//지도의 레벨(확대, 축소 정도)
								};

								var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
								// 마커가 표시될 위치입니다 
								var markerPosition = new kakao.maps.LatLng(lat,lng);

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									position : markerPosition
								});

								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);
							</script>
							</div>
						</div>
					
					<!-- <div class="filter_main_wrap">
						<div class="filter_inner">
							<form action="#">
								<div class="input_field">
									<input type="text" placeholder="What are you finding?">
									<button class="submit_btn" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</div>
								<div class="input_field">
									<select class="wide">
										<option data-display="Choose categories">cat 1</option>
										<option value="1">cat 2</option>
										<option value="2">cat 3</option>
										<option value="3">cat 4</option>
									</select>
								</div>
								<div class="input_field">
									<select class="wide">
										<option data-display="Location">USA</option>
										<option value="1">Africa</option>
										<option value="2">canada</option>
									</select>
								</div>
								<div class="input_field ">
									<div class="inner">
										<div class="check_1">
											<input type="checkbox" id="fruit1" name="fruit-1"
												value="Apple"> <label for="fruit1">Open Now</label>
										</div>
										<div class="check_1">
											<input type="checkbox" id="fruit4" name="fruit-4"
												value="Strawberry"> <label for="fruit4">Ratings</label>
										</div>
									</div>
								</div>
								<div class="input_field">
									<select class="wide">
										<option data-display="Area (km)">Area (km)</option>
										<option value="1">1km</option>
										<option value="2">2km</option>
									</select>
								</div>
								<div class="input_field">
									<select class="wide">
										<option data-display="Area (km)">Area (km)</option>
										<option value="1">1km</option>
										<option value="2">2km</option>
									</select>
								</div>

							</form>
						</div>
						<div class="last_range">
							<label for="amount">Price range:</label>


							<div id="slider-range"></div>
							<p>

								<input type="text" id="amount" readonly
									style="border: 0; color: #f6931f; font-weight: bold;">
							</p>
							<button class="boxed-btn2">Reset</button>
						</div>
					</div> -->
				</div>
			</div>

			<div class="col-xl-8 col-lg-8">
				<div class="row">
					<c:forEach var="shop" items="${shoplist}" varStatus="vs">
						<div class="col-xl-6 col-lg-6 col-md-6">
							<div class="single_explorer">
								<div class="thumb">
									<img src="img/${shop.shop_img1 }" width="250px"
										height="200px">
								</div>
								<div class="explorer_bottom d-flex">

									<div class="explorer_info">
										<h3>
											<a data-toggle="modal" href="#shopmodal${vs.index }"
												onclick="fn_count('${shop.shop_name }')">
												${shop.shop_name }</a>
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
							          ),url(/img/${shop.shop_img1 }); background-size:cover;">
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
										<img src="web/img/${shop.shop_img2}" width="300px"
										height="250px">
										<img src="web/img/${shop.shop_img3}" width="300px"
										height="250px">
										<img src="web/img/${shop.shop_img4}" width="300px"
										height="250px">
										</div>
										<div class="section-top-border">
											
												<form action="bookingimpl.mc" method="post">
													<table class="mb-20"
														style="margin-left: auto; margin-right: auto;">
														<tr>
															<td>예약자 성함</td>
															<td colspan="2"><div class="input_field mb-20">
																	<input type="text" name="searcher_name"
																		placeholder="name"><br>
																</div></td>
														</tr>
														<tr>
															<td><input type="hidden" name="searcher_id"
																value="${loginuser.searcher_id }"></td>
															<td><input type="hidden" name="shop_name"
																value="${shop.shop_name }"></td>
															<td><input type="hidden" name="booking_stat"
																value="0"></td>
															<td><input type="hidden" name="review_stat"
																value="0"></td>
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

													<div class="text-center">
														<button class="boxed-btn2 mb-30" type="submit">예약하기</button>
													</div>
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
	</div>
	</div>

	<script>
		function fn_count(name) {
			$.ajax({
				url : 'shop_hitcnt.mc',
				data : {
					'shop_name' : name
				}
			});
		}
	</script>