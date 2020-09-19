<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<style>
        #agree{
                padding-left: 30px;
        }
</style>
<form>
<div class="common">
<!-- <span>총</span>
 <input id = "people" type="number" name="people"/><span>명이</span><br>
 <span>(name="blank_0~(n-1)"" 입니다.)</span><br> -->
 <input type="text" name="time"/><span>경 에</span><br>
 <span>(name= "time"" 입니다.)</span><br>
 <select id = "select1" name="object" >
  <option>선택해주세요</option>
  <option>밥 먹으려고</option>
  <option>이야기하려고</option>
 </select>
 <span>모이는데</span>
 <span>괜찮은</span>
 <span class="final">
 
 </span>
 <span> 없을까 ?</span>
</div>
<div class="switch-wrap d-flex">
        <div class="primary-checkbox">
                <input type="checkbox" id="default-checkbox">
                <label for="default-checkbox"></label>
        </div>
        <button id="agree">사용자의 현재 위치 사용에 동의합니다.</button>
</div>
<button class="boxed-btn2 mb-30" type="submit" id="submit">Search</button>
</form>
<script>
	$(document).ready(function(){
		
		if ("geolocation" in navigator) {	/* geolocation 사용 가능 */
			
		} else {	/* geolocation 사용 불가능 */
			alert('geolocation 사용 불가능');
		}
		
	});
</script>