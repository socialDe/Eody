<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<div class="container-fluid">
            <div class="hp-room-items">
                <div class="row">
            	<c:forEach var="s" items="${shoplist}">
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="img/${s.shop_img1}">
                            <div class="hr-text">
                                <h3>${s.shop_name}</h3>			<!--가게이름  -->
                                <h2>${s.h_name}<span>${s.shop_type}</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                           <td class="r-o">Business hour: </td>
                                            <td>${s.shop_time}</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Rating:</td>
                                            <td>${s.shop_score_avg}</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Hits:</td>
                                            <td>${s.shop_hits }</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Address:</td>
                                             <td>${s.shop_address}</td>
                                        </tr>
                                    </tbody>
                              	 </table>
                              	 <input type="hidden" name="name" value="${s.shop_name}">
                                 <a  href="shopdetail.mc?name=${s.shop_name}" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </div>
                </div>
            </div>
                     

