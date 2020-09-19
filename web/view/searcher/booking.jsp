<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="reviewmodal.jsp" flush="false"/>

<div class="section-top-border">
        <h3 class="mb-30">My Reservations</h3>
        <div class="progress-table-wrap">
                <div class="progress-table">
                        <div class="table-head">
                                <div class="country">예약번호</div>
                                <div class="visit">Shop</div>
                                <div class="visit">예약일시</div>
                                <div class="visit">예약인원</div>
                                <div class="visit">예약현황</div>
                                <div class="country">리뷰</div>
                        </div>
                        <c:forEach var="b" items="${books}">
                                <div class="table-row">
                                        <div class="country"><img src="web/img/${b.shop_img}" alt="flag"><span class="num">${b.booking_no}</span></div>
                                        <div class="visit"><span>${b.shop_name}</span></div>
                                        <div class="visit"><span>${b.booking_date }</span></div>
                                        <div class="visit"><span>${b.booking_pp }</span></div>
                                        
                                        <c:set var="b_stat" value="${b.booking_stat}"/>
                                                <c:choose>
                                                        <c:when test="${b_stat ==0 }">
                                                                <div class="visit"><span>예약 대기</span></div>
                                                                <div class="country" id="sp"></div>
                                                        </c:when>
                                                        <c:otherwise>
                                                                <div class="visit"><span>예약 완료</span></div>
                                                                <c:set var="r_stat" value="${b.review_stat}"/>
                                                                        <c:choose>
                                                                                <c:when test="${r_stat ==0 }">
                                                                                        <div class="country" id="sp"><a data-toggle="modal" href="#reviewmodal" class="genric-btn primary circle">리뷰 작성하기</a></div>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                        <div class="country" id="sp"><a href="#" class="genric-btn info circle rbtn">리뷰 수정</a>
																														<a href="#" class="genric-btn danger circle rbtn">리뷰 삭제</a> </div>
                                                                                </c:otherwise>
                                                                        </c:choose>
                                                        </c:otherwise>
                                                </c:choose>
                                </div>
            </c:forEach>
                </div>
        </div>
</div>        

<style>
img{
width:100px;
hegiht:100px;
}
div.country>*, div.visit>*{
margin-left: auto;
margin-right:auto;
text-align:center;
}
div.country>img,div.visit>img{
margin: 0 0 0 15px;
text-align:left;
}
div.country>span{
margin-left: auto;
margin-right: auto;
}
div.country>span.num{
margin-left: 10px;
margin-right: 10px;
}
</style>