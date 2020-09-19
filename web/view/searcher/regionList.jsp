<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="whole-wrap">
<div class="container box_1170">
        <div class="section-top-border">
                <h3>Region Search Result...</h3>
                <div class="row">
                                <c:forEach var="r" items="${regions}">
                                        <div class="col-md-4">
                                                <div class='thumb'>
                                                        <button type="button"><img src='view/searcher/img/regions/${r.h_img }' alt=''></button>
                                                        <h3 align="center" class='mb-20'>${r.h_name }</h3>
                                                </div>
                                        </div>
                    </c:forEach>
                </div>
        </div>
</div>
</div>

<style>
.thumb{
        text-align:center;
}
button{
        border: 0 0 0 0px;
        padding: 0 0 0 0px;
}
</style>