$(document).ready(function(){
  $("#number_blank").focusout(function() {
      appendblank();
     });
  $("#select1").change(function(){
   shopChange();
 });
});

// 인원수 or 지역수에 따라 지하철역 쓰는 입력란이 늘어납니다.
function appendblank(){
 var number_blank = $('#number_blank').val();
 //alert(people+"명");
 $('.subwayblank').empty();


 for(var count = 0; count < number_blank; count ++){
   //동적으로 생성되는 blank의 내용을 한 번에 controller로 전송하기 위해 name을 통일합니다.
  var blank = "<input type='text' id='blanks' name='blanks'/>";
  //alert(blank);
  $('.subwayblank').append(blank);
 }
};

// 첫번째 selct에 따라 두번째 select의 목록이 달라집니다.
function shopChange(){
 //alert("kkkkkkk");
 var rice = ["한식집","일식집","양식집","중국집"];
 var talk = ["카페"];
 var cho =["선택해주세요"];
 //alert(rice);
 var selectObject = $("#select1").val();
 //alert(selectObject);

 var changeSelect;

 if(selectObject == "선택해주세요"){
  changeSelect = cho;
 }else if(selectObject == "밥 먹으려고"){
  changeSelect = rice;
 }else if(selectObject == "이야기하려고"){
  changeSelect = talk;
 }
/* $('#select2').empty();*/
/* alert(changeSelect);
 alert(changeSelect.length);
 alert(changeSelect[2]);  */
/* for(var count = 0; count < changeSelect.length; count++){
                var option = $("<option>"+changeSelect[count]+"</option>");
                $(".select2").append(option);
            };*/
$('.final').empty();
 var option = "<select id='select2' name='shop'>";
 var shoptype = 0;

 //첫번째 카테고리(업종)에 따라 정의된 shoptype numbering입니다.
 if(changeSelect==rice){
   shoptype=100;
 }else if(changeSelect==talk){
   shoptype=200;
 }
 $(changeSelect).each(function(index,data){
   option += "<option name='shop_"+shoptype+"' "+"value='"+changeSelect[index]+"'>"+changeSelect[index]+"</option>";
   shoptype= shoptype+1;
 });
   option += "</select>";
  $(".final").append(option);

//alert(option);

};