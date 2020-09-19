<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.starR {
    background:
        url('http://miuu227.godohosting.com/images/icon/ico_review.png%27)
        no-repeat right 0;
    background-size: auto 100%;
    width: 30px;
    height: 30px;
    display: inline-block;
    text-indent: -9999px;
    cursor: pointer;
}

.starR.on {
    background-position: 0 0;
}
</style>
<script>
$('.starRev span').click(function() {
    $(this).parent().children('span').removeClass('on');
    $(this).addClass('on').prevAll('span').addClass('on');
    var rate = $(this).attr("value");
    $('#review_score').val(rate);
    return false;
});
</script>
</head>
<body>
<div class="starRev mb-20">
                        <span class="starR" value="1">별1</span> 
                        <span class="starR" value="2">별2</span> 
                        <span class="starR" value="3">별3</span> 
                        <span class="starR" value="4">별4</span> 
                        <span class="starR" value="5">별5</span>
                    </div>
</body>
</html>