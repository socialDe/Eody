<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
        div.row.region{
                margin-left:auto;
                margin-right:auto;
}
        div.col-xl-3.col-md-4.col-lg-3{
                margin-left:auto;
                margin-right:auto;
        }
        div.thumb{
                width:140%;
        }
</style>

<div class="row region">
    <div class="col-xl-3 col-md-4 col-lg-3">
        <div class="single_catagory">
            <div class="thumb">
                <img src="view/searcher/img/regions/${region1.h_img }" alt="">
            </div>
            <div class="hover_overlay">
                <div class="hover_inner">
                    <h4>${region1.h_name}</h4>
                    <!--  <span>05 Listings</span>  -->
                </div>
            </div>
        </div>
    </div>
        <div class="col-xl-3 col-md-4 col-lg-3">
        <div class="single_catagory">
            <div class="thumb">
                <img src="view/searcher/img/regions/${region2.h_img }" alt="">
            </div>
            <div class="hover_overlay">
                <div class="hover_inner">
                    <h4>${region2.h_name }</h4>
                    <!--  <span>05 Listings</span>  -->
                </div>
            </div>
        </div>
    </div>
        <div class="col-xl-3 col-md-4 col-lg-3">
        <div class="single_catagory">
            <div class="thumb">
                <img src="view/searcher/img/regions/${region3.h_img }" alt="">
            </div>
            <div class="hover_overlay">
                <div class="hover_inner">
                    <h4>${region3.h_name }</h4>
                    <!--  <span>05 Listings</span>  -->
                </div>
            </div>
        </div>
    </div>
</div>

<div>
        <div class="col-xl-12">
        <div class="section_title mb-60 text-center">
        <h3>추천 지역은 ${region1.h_name }, ${region2.h_name }, ${region3.h_name } 입니다.</h3>
        </div>
        </div>
</div>