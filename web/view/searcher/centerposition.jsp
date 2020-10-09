<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form class="center" action="searchimpl1.mc" method="post">
<div class = "subwayblank1">
</div>
 <!-- <span>(name="blank_0~(n-1)"" 입니다.)</span><br> -->
 <div class="move">

    <div class="mb-20" style="">
    	<span id="mr">총</span>
        <input id = "number_blank" type="number" name="number_blank" placeholder="0"/><span>&nbsp;명이</span><br><br>&nbsp;
     	<input type="text" name="time" placeholder="00:00"/><span>&nbsp;에</span><br>
    </div>

    <div class="chooseShop mg mb-30" style="text-align:center">
    	<div class="selectShop">   
	        <select id = "select1" name="object" >
	          <option>oo 하려고</option>
	          <option>밥 먹으려고</option>
	          <option>이야기하려고</option>
	         </select>
         </div>
    
    <div class="selectShop"><span>모이는데 괜찮은</span></div>
    <div class="addlist selectShop"><span class="final"></span></div>
    <div class="selectShop"><span>없을까 ?</span></div>
    

    </div>

    <div class="mg">
        <span>출발지역과 가까운 지하철역을 말씀해주세요.</span>
    </div>

 </div>
 
 <!-- <span>(name= "time"" 입니다.)</span><br> -->
 
<div class = "subwayblank">
</div>
<button class="boxed-btn2 mb-30" type="submit" id="submit">Search</button>
 </form>