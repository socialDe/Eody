<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form class="center" action="specific_search.mc" method="post">
<div class = "subwayblank1">
</div>
	<div class="common">
		<div class=" mb-20" style="">
			<span>검색하고자 하는 위치의 개수는&nbsp;</span> <input id="number_blank"
				type="number" name="number_blank" /><span>곳&nbsp;입니다.</span><br>
		</div>

		<div class=" mb-20" style="">
			<input type="text" name="time" /><span>경 에</span><br>
		</div>

		<div class="chooseShop mg mb-30" style="text-align: center">
			<div class="selectShop">
				<select id="select1" name="object">
					<option>oo 하려고</option>
					<option>밥 먹으려고</option>
					<option>이야기하려고</option>
				</select>
			</div>

			<div class="selectShop">
				<span>모이는데 괜찮은</span>
			</div>
			<div class="addlist selectShop">
				<span class="final"></span>
			</div>
			<div class="selectShop">
				<span>없을까 ?</span>
			</div>

		</div>

		<div class="mg">
			<span>원하시는 지역(지하철역)을 입력해주세요.</span>
		</div>

		<div class="subwayblank"></div>
		<button class="boxed-btn2 mb-30" type="submit" id="submit">Search</button>
</form>