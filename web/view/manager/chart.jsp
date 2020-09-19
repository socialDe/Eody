<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<link rel="stylesheet" href="view/manager/css/chart.css" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- chart JS  -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="view/manager/js/chart.js"></script>


<!------ Include the above in your HEAD tag ---------->
<style>
.counter
{
	padding-left: 120px !important;
    background-color: #eaecf0;
    text-align: center;
}
.counter>.container{
	width:650px;
}
.employees,.customer,.design,.order
{
    margin-top: 70px;
    margin-bottom: 70px;
}
.counter-count
{
    font-size: 18px;
    background-color: #00b3e7;
    border-radius: 50%;
    position: relative;
    color: #ffffff;
    text-align: center;
    line-height: 150px;
    width: 150px;
    height: 150px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    display: inline-block;
}

.employee-p,.customer-p,.order-p,.design-p
{
    font-size: 24px;
    color: #000000;
    line-height: 34px;
}
.col-lg-3, .col-md-3, .col-sm-3, .col-xs-12{
}
</style>
<script>
$('.counter-count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 5000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});

</script>


<div class="counter">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="employees">
                    <p class="counter-count">${singleshop.shop_hits}</p>
                    <p class="employee-p">View</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="customer">
                    <p class="counter-count">${singleshop.shop_score_avg}</p>
                    <p class="customer-p">Star Rating</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="design">
                    <p class="counter-count">${singleshop.shop_booking}</p>
                    <p class="design-p">Reservation</p>
                </div>
            </div>
                                                                   </div>
    </div>
</div> 
