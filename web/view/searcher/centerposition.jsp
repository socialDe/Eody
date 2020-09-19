<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form class="center" action="searchimpl1.mc" method="post">

 <!-- <span>(name="blank_0~(n-1)"" 입니다.)</span><br> -->
 <div class="move">

     <div class=" mb-20" style="">
         <span id="mr">총</span>
         <input id = "number_blank" type="number" name="number_blank"/><span>&nbsp;명&nbsp;&nbsp;</span>
     <input type="text" name="time"/><span>&nbsp;경 에</span><br>
    </div>

    <div class="mg mb-30" style="text-align:center">
        <select id = "select1" name="object" >
          <option>선택해주세요</option>
          <option>밥 먹으려고</option>
          <option>이야기하려고</option>
         </select>
         <div>
             <span>모이는데 괜찮은</span>
             <div class="addlist"><span class="final"></span></div>
             <span>없을까 ?</span>
         </div>

    </div>

    <div class="mg">
        <h2>출발지역과 가까운 지하철역을 말씀해주세요.</h2>
    </div>

 </div>
 
 <!-- <span>(name= "time"" 입니다.)</span><br> -->
 
<div class = "subwayblank">
</div>
<button class="boxed-btn2 mb-30" type="submit" id="submit">Search</button>
 </form>