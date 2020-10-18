<%@ page language="java" contentType="text/html; charset=utf-8"
        pageEncoding="utf-8"%>
<!-- modal -->
<div class="modal fade" id="shopmodal" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLongTitle" aria-hidden="true">
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
                                <div class="col-lg-8 col-md-8">
                                        <div class="explorer_info">
                                                <h3>
                                                        <a href="#">Saintmartine</a>
                                                </h3>
                                                <p>700/D, Kings road, Green lane, London</p>
                                                <ul>
                                                        <li><i class="fa fa-phone"></i> +10 278 367 9823</li>
                                                        <li><i class="fa fa-envelope"></i> contact@midnight.com</li>
                                                </ul>
                                        </div>
                                </div>
                                
                                <div class="section-top-border">
                                        <h3>Menu</h3>
                                        <div class="row gallery-item">
                                                <div class="col-md-4">
                                                        <a href="view/searcher/img/elements/g1.jpg" class="img-pop-up">        
                                                                <div class="single-gallery-image" style="background: url(view/searcher/img/elements/g1.jpg);"></div>                                                        
                                                        </a>
                                                        <h3>김밥</h3>
                                                </div>
                                                <div class="col-md-4">
                                                        <a href="view/searcher/img/elements/g2.jpg" class="img-pop-up">
                                                                <div class="single-gallery-image" style="background: url(view/searcher/img/elements/g2.jpg);"></div>                                                                
                                                        </a>
                                                        <h3>떡볶이</h3>
                                                </div>
                                                <div class="col-md-4">
                                                        <a href="view/searcher/img/elements/g3.jpg" class="img-pop-up">        
                                                                <div class="single-gallery-image" style="background: url(view/searcher/img/elements/g3.jpg);"></div>                                                        
                                                        </a>
                                                        <h3>순대</h3>
                                                </div>
                                        </div>
                                </div>
                                <div class="section-top-border">
                                        <h3>Location</h3>
                                        <div class="map_Wrap">
                                                <div class="d-sm-block ">
                                                        <div class="map_inner_info">
                                                                <div id="map" style="height: 350px;"></div>
                                                        </div>
                                                        <script>
                                                                var coords;
                                                                var add = '서울특별시 강남구 역삼동 강남대로96길 5' //!!!!! 가게의 주소 입력!!!!!!!!!!!
                                                                //지도를 담을 영역의 DOM 레퍼런스
                                                                // 주소-좌표 변환 객체를 생성합니다
                                                                var geocoder = new kakao.maps.services.Geocoder();

                                                                // 주소로 좌표를 검색합니다                                                

                                                                geocoder
                                                                                .addressSearch(
                                                                                                add,
                                                                                                function(result, status) {
                                                                                                        if (status === kakao.maps.services.Status.OK) {
                                                                                                                coords = new kakao.maps.LatLng(
                                                                                                                                result[0].y,
                                                                                                                                result[0].x);
                                                                                                                var container = document
                                                                                                                                .getElementById('map');
                                                                                                                var options = { //지도를 생성할 때 필요한 기본 옵션
                                                                                                                        center : coords, //지도의 중심좌표.
                                                                                                                        level : 3
                                                                                                                //지도의 레벨(확대, 축소 정도)
                                                                                                                };
                                                                                                                var map = new kakao.maps.Map(
                                                                                                                                container,
                                                                                                                                options); //지도 생성 및 객체 리턴                                                      
                                                                                                                // 마커를 생성합니다
                                                                                                                var marker = new kakao.maps.Marker(
                                                                                                                                {
                                                                                                                                        position : coords
                                                                                                                                });
                                                                                                                // 마커가 지도 위에 표시되도록 설정합니다
                                                                                                                marker.setMap(map);
                                                                                                        }
                                                                                                });
                                                        </script>

                                                </div>
                                        </div>
                                </div>
                        </div>
                        <div class="col-lg-8 col-md-8">
                                <h3 class="mb-30">Form Element</h3>
                                <form action="#">
                                        <div class="mt-10">
                                                <input type="text" name="name" placeholder="Name"
                                                        onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'First Name'" required
                                                        class="single-input">
                                        </div>
                                        <div class="mt-10">
                                                <input type="email" name="EMAIL" placeholder="Email address"
                                                        onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Email address'" required
                                                        class="single-input">
                                        </div>
                                        <div class="mt-10">
                                                <input type="exam" name="EMAIL" placeholder="Other"
                                                        onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Email address'" required
                                                        class="single-input">
                                        </div>
                                        <div class="input-group-icon mt-10">
                                                <div class="form-select" id="default-select"">
                                                        <select>
                                                                <option value=" 1">0</option>
                                                                <option value="1">1</option>
                                                                <option value="1">2</option>
                                                                <option value="1">3</option>
                                                                <option value="1">4</option>
                                                        </select>
                                                </div>
                                        </div>
                                        <div class="input-group-icon mt-10">
                                                <div class="icon">
                                                        <i class="fa fa-globe" aria-hidden="true"></i>
                                                </div>
                                                <div class="form-select" id="default-select"">
                                                        <select>
                                                                <option value=" 1">time</option>
                                                                <option value="1">09:00</option>
                                                                <option value="1">12:00</option>
                                                                <option value="1">17:00</option>
                                                                <option value="1">21:00</option>
                                                        </select>
                                                </div>
                                        </div>

                                        <div class="mt-10">
                                                <textarea class="single-textarea" placeholder="Message"
                                                        onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Message'" required></textarea>
                                        </div>
                                </form>
                        </div>
                </div>
                <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                </div>

        </div>
</div>
</div>