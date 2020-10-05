<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="filter_inner">
	<div id="map" style="height: 350px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ba77175320179083dd545a7f848cb0a4"></script>
	<script>
		var lat = ${ hplace.h_lat}
		var lng = ${ hplace.h_lng}
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(lat, lng);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	</script>
</div>