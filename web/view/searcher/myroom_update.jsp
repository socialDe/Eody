<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<div style="margin-top: 20px">
                <form action="myroom_updateimpl.mc" method="post">
                        <table class="mb-20" style="margin-left: auto; margin-right: auto;">
                                <tr>                            			
                                        <td>Password</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="hidden" name="searcher_id" value="${loginuser.searcher_id }">
                                                        <input type="password" name="searcher_pwd" id="searcher_pwd"
                                                                placeholder="Password">
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>Password_check</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="password" name="pwd_check" id="pwd_check"
                                                                placeholder="Confirm Password"><span id="check_text"></span>
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>name</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="text" name="searcher_name" value="${loginuser.searcher_name }">
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>address</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="text" name="searcher_address"
                                                                value="${loginuser.searcher_address }">
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>telephone</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="text" name="searcher_phone"
                                                                value="${loginuser.searcher_phone }">
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>Nickname</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="text" name="searcher_nickname"
                                                                value="${loginuser.searcher_nickname}">
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>Birthday</td>
                                        <td><select class="mb-20 small" name="user_birth_year" size="5">
                                                        <option value="1989" selected>1989</option>
                                                        <option value="1990" selected>1990</option>
                                                        <option value="1991" selected>1991</option>
                                                        <option value="1992" selected>1992</option>
                                                        <option value="1993" selected>1993</option>
                                                        <option value="1994" selected>1994</option>
                                                        <option value="1995" selected>1995</option>
                                                        <option value="1996" selected>1996</option>
                                                        <option value="1997" selected>1997</option>
                                                        <option value="1998" selected>1998</option>
                                                        <option value="1999" selected>1999</option>
                                                        <option value="2000" selected>2000</option>
                                                        <option value="2001" selected>2001</option>
                                                        <option value="2002" selected>2002</option>
                                                        <option value="2003" selected>2003</option>
                                                        <option value="2004" selected>2004</option>
                                        </select>&nbsp; 년
                                        <td><select class="mb-20 small" name="user_birth_month" size="5">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                        </select>&nbsp; 월</td>
                                        <td><select class="mb-20 small" name="user_birth_day">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                        </select>&nbsp; 일</td>
                                </tr>
                                <tr>
                                        <td>email</td>
                                        <td colspan="3"><div class="input_field mb-20">
                                                        <input type="text" name="searcher_email"
                                                                value="${loginuser.searcher_email }">
                                                </div></td>
                                </tr>
                                <tr>
                                        <td>gender</td>
                                        <td colspan="3"><input type="radio" name="searcher_gender"
                                                value="m" />&nbsp; man <input type="radio" name="searcher_gender"
                                                value="w" />&nbsp; woman</td>
                                </tr>
                                <!-- <tr><td></td><td></td></tr> -->
                        </table>

                        <div class="text-center">
                                <button class="boxed-btn2 mb-30" type="submit">Register</button>
                        </div>
                </form>
        </div>
        