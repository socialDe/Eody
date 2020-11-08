<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL -->
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Real state</title>
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

<link rel="stylesheet" href="view/searcher/css/style.css">
<style type="text/css">
body {
        margin: 0;
        padding: 0;
}

#nav-con {
        text-align: center;
}

.nav-container {
        display: flex;
        flex-direction: row;
        width: 30%;
        margin: 0;
        padding: 0;
        background-color: pink;
        list-style-type: none;
        text-align: center;
}

.nav-container li {
        width: 100%;
        border: 1px grey inset;
}

.nav-item {
        padding: 15px;
        cursor: pointer;
}

.nav-container a {
        display: block;
        margin: 0;
        padding: 0;
        text-align: center;
        text-decoration: none;
        color: white;
}

.nav-item-chidld(1) {
        background-color: lightseagreen;
}

.nav-item:hover {
        backgroud-color: grey;
}

.con-container {
        width: 100%;
        padding: 20px;
        
}
.starR {
        background:
                url('http://miuu227.godohosting.com/images/icon/ico_review.png')
                no-repeat right 0;
        background-size: auto 100%;
        width: 30px;
        height: 30px;
        display: inline-block;
        text-indent: -9999px;
        cursor: pointer;
}
.modal-backdrop {
        z-index: -1;
}

.modal-content {
        width: 200%;
        position: absolute;
        left: 50%;
        transform: translate(-50%);
}
.starR.on {
        background-position: 0 0;
}

#
#review-title {
        width: 300px;
}

#review-contents {
        width: 300px;
        height: 300px;
}
</style>
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
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
                                                                        <a href="index.html"> <img src="img/logo/s_whitelogo.png" alt="">
                                                                        </a>
                                                                </div>
                                                        </div>
                                                        <div class="col-xl-3 col-lg-7">
                                                                
                                                        </div>
                                                        <div class="col-xl-6 col-lg-3 d-none d-lg-block">
                                                                <div class="Appointment">
                                                                        <div class="book_btn d-none d-lg-block">
                                                                                <a href="logout.mc">Logout</a> <a href="myroom.mc">Myroom</a>
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
                                                
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
        <!--/ bradcam_area  -->


        <!-- team_area  -->
        
        <div class="explorer_europe">
	        <div class="container">
	            <div class="explorer_wrap">
	                <div class="row align-items-center">
	                    <div class="col-xl-6 col-md-4">
	                        <h3>${loginuser.searcher_nickname }'s Myroom</h3>
	                    </div>
	                    <div class="col-xl-6 col-md-8">
	                        <div class="explorer_tab">
	                            <nav>
	                                <div class="nav" id="nav-tab" role="tablist">
	                                    <a class="nav-item nav-1 active" href="myroom.mc">예약내역</a>
	                                    <a class="nav-item nav-2" href="myroom_update.mc">내 정보 수정</a>	                                    
	                                </div>
	                            </nav>
	
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <section>
 					<div class="con-container">
 			            <c:choose>
						    <c:when test="${centerpage == null}">
          						<jsp:include page="booking.jsp"></jsp:include>          						
    						</c:when>
				       		<c:otherwise>
								<jsp:include page="${centerpage}.jsp"></jsp:include>								
                    		</c:otherwise>
        			    </c:choose>
            		</div>
         		</section>
            </div>
        </div>            
        <!-- /team_area  -->

        <!-- footer start -->
        <footer class="footer">
                <div class="footer_top">
                        <div class="container">
                                <div class="row">
                                        <div class="col-xl-3 col-md-6 col-lg-3">
                                                <div class="footer_widget">
                                                        <div class="footer_logo">
                                                                <a href="#"> <img src="img/logo/s_whitelogo.png"
                                                                        alt="">
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

        <!-- update js -->
        <script src="view/searcher/js/functionCheck.js"></script>
        <!-- 탭 반응형 화면 -->
        <script> 
        var centerpage = "${centerpage}";        
		if (centerpage == "myroom_update"){
			$('.nav-1').removeClass("active")
			$('.nav-2').addClass("active")
		} else {
			$('.nav-2').removeClass("active")
			$('.nav-1').addClass("active")
		};		
		</script>	
       
        <!-- 리뷰 쓰기 js -->
        <script type="text/javascript">
        var imgarr = [];
        var booking_no = 0;
        
        // 사진 삭제하기
        function deleteImageAction(index){
                console.log("index : " + index);
                imgarr.splice(index, 1);
                
                // 이미지 삭제
                var img_id = "#img_id_" + index;
                $(img_id).remove();
                
        }        
        
                $(document).ready(function() {
                        // 리뷰 별점
                        $('.starRev span').click(function() {
                                $(this).parent().children('span').removeClass('on');
                                $(this).addClass('on').prevAll('span').addClass('on');
                                var rate = $(this).attr("value");
                                console.log(rate);
                                $('#shop_score').val(rate);
                                return false;
                        });

                        // 사진 미리보기
                        $("input[type='file']").on("change", function(e) {

                                var files = e.target.files;
                                var arr = Array.prototype.slice.call(files);

                                var index = 0;
                                arr.forEach(function(f){
                                
                                    //파일명이 길면 파일명...으로 처리
                                    var fileName = f.name;
                                    if(fileName.length > 10){
                                              fileName = fileName.substring(0,7)+"...";
                                    }
                                
                                    //div에 이미지 추가
                                            var str = '';

                                    //이미지 파일 미리보기
                                    if(f.type.match('image.*')){
                                              imgarr.push(f);
                                              
                                              var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
                                              reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                                                      str += '<div style="display: inline-flex; padding: 10px;" onclick="deleteImageAction('+index+')" id="img_id_'+index+'"><li>';
                                                str += '<img src="'+e.target.result+'" title="'+f.name+'" width=100 height=100 />';
                                                str += '</li></div>';
                                                $(str).appendTo('#preview');
                                              } 
                                              reader.readAsDataURL(f);
                                    }

                                  });//forEach
                        });
                        
                        // 리뷰 모달에 shop_name, booking_no 값 전달
                        $('#writeReview').click(function(){
                        	console.log($(this).data('id'));
                        	$("input[name='shop_name']").val($(this).data('id'));
                        	console.log($(this).data('booking'));
                        	$("input[name='booking_no']").val($(this).data('booking'));

                        });
                        // 리뷰 수정 모달에 shop_name, booking_no, review_contents 값 전달
                        $('#modifyReview').click(function(){
                        	console.log($(this).data('id'));
                        	$("input[name='shop_name']").val($(this).data('id'));
                        	console.log($(this).data('booking'));
                        	$("input[name='booking_no']").val($(this).data('booking'));
                        	
                        	//server로부터 해당 리뷰의 정보를 받아와 유저에게 보여줍니다.
                        	booking_no =$(this).data('booking');
                        	console.log(booking_no);
                        	var contents="";
                            $.ajax({
                            	url : 'getReview2.mc',
                            	data : {'booking_no':booking_no},
                            	error : function(request,status,error) {
                               	console.log("error");
                               	console.log(request.responseText);
                               	console.log(" error = "+error)
                               	alert("code= "+request.status+" message = "+ request.responseText +" error = "+error);
                               },
                                success : function(data) {
                               	console.log("success");
                               	console.log(data);
                               	console.log(typeof(data));
                             	$("input[name='review_contents']").val(data.review_contents);
                               }
                            });
                        });
                        
                });
            
                
        </script>


        <!--contact js-->
        <script src="view/searcher/js/contact.js"></script>
        <script src="view/searcher/js/jquery.ajaxchimp.min.js"></script>
        <script src="view/searcher/js/jquery.form.js"></script>
        <script src="view/searcher/js/jquery.validate.min.js"></script>
        <script src="view/searcher/js/mail-script.js"></script>


        <script src="view/searcher/js/main.js"></script>

</body>

</html>