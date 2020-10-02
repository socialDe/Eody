package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.ManagerVO;
import com.vo.ShopVO;

@Controller
public class ManagerController {

        @Resource(name = "mbiz")
        Biz<String, Integer, ManagerVO> biz;
        @Resource(name = "shopbiz")                                                        
        Biz<String, Integer, ShopVO> biz_shop;  // 가게 입니다.
        // 메인페이지로 이동 
        @RequestMapping("/amain.mc")
        public ModelAndView amain() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("manager/amain");
                return mv;
        }

        // main페이지의 login 버튼 실행 시 로그인 페이지로 이동 
        @RequestMapping("/alogin.mc")
        public ModelAndView alogin() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("manager/alogin");
                return mv;
        }
        // 로그인 후에 우측 상단의 logout 버튼 실행 시 메인 페이지로 이동
        @RequestMapping("/alogout.mc")
        public ModelAndView alogout() {
        	ModelAndView mv = new ModelAndView();
        	mv.setViewName("manager/amain");
        	return mv;
        }
        // center 페이지 이동: Chart
        @RequestMapping("/chart.mc")
        public ModelAndView chart() {
        	ModelAndView mv = new ModelAndView();
        	mv.addObject("centerpage", "chart");
        	mv.setViewName("manager/shopdetail");
        	return mv;
        }
        // Center Page: Booklist//
        @RequestMapping("/booklist.mc")
        public ModelAndView booklist() {
        	ModelAndView mv = new ModelAndView();
        	mv.addObject("centerpage","booklist");
        	mv.setViewName("manager/shopdetail");
        	return mv;
        }

        // 로그인 버튼 실행 서블릿
        @RequestMapping("/aloginimpl.mc")
        public ModelAndView aloginimpl(HttpServletRequest request) {
                ModelAndView mv = new ModelAndView();
                String id = request.getParameter("id");
                String pwd = request.getParameter("pwd");
                ManagerVO dbmanager = null;
                try {
                        dbmanager = biz.get1(id);
                        if (dbmanager.getManager_pwd().equals(pwd)) {
                                HttpSession session = request.getSession();
                                session.setAttribute("aloginuser", dbmanager);
                              
                                //로그인 통과와 동시 가게 리스트 뽑아내기
                                ArrayList<ShopVO> shoplist = null;                        
                                try{
                                        shoplist = biz_shop.shop_get(id);                                        //selectall 함수입니다. 해당 아이디가 갖고있는 shop 테이블을 전부 가져옵니다.
                                }catch (Exception e) {
                                        e.printStackTrace();
                                }
                                mv.addObject("centerpage", "center1");                                // centerpage에 center1.jsp 파일을 얹습니다. centerpage는 myroom.jsp에 있습니다.
                                session.setAttribute("shoplist", shoplist);                        //  그 shop 테이블을 session에 담았습니다.
                                System.out.println(shoplist);
                                mv.setViewName("manager/amyroom");                                        // myroom 페이지로 이동합니다.
                        } else {
                                mv.setViewName("redirect:alogin.mc");
                        }
                } catch (Exception e) {
                        mv.setViewName("redirect:alogin.mc");
                        e.printStackTrace();
                }

                return mv;
        }

        //Sign Up 버튼 실행 시 회원가입 페이지로 이동
        @RequestMapping("/manageradd.mc")
        public ModelAndView manageradd(ModelAndView mv) {
                mv.setViewName("manager/aregister");
                return mv;
        }

        // 회원가입 버튼 실행 서블릿
        @RequestMapping("/manageraddimpl.mc")
        public ModelAndView manageraddimpl(ModelAndView mv, ManagerVO manager, String user_birth_year,
                        String user_birth_month, String user_birth_day) {
                try {
                        // search_birthday  값 셋팅
                        manager.setManager_birthday(user_birth_year + "-" + user_birth_month + "-" + user_birth_day);
                        biz.register(manager);
                        mv.setViewName("manager/aregisterok");
                } catch (Exception e) {
                        mv.setViewName("redirect:aregister.mc");
                        e.printStackTrace();
                }
                return mv;
        }

       //아이디 중복 체크 확인
                @RequestMapping("/aidcheckimpl.mc")
                public void id_check_impl(HttpServletResponse res, String id) {
                        int result = 0;

                        ManagerVO dbmanager = null;
                        try {
                                dbmanager = biz.get1(id);
                                if(dbmanager != null) {
                                        result = 1;
                                }
                        } catch (Exception e) {
                                e.printStackTrace();
                        }

                        PrintWriter out = null;
                        try {
                                out = res.getWriter();
                                out.print(result);
                        } catch (IOException e) {
                                e.printStackTrace();
                        }
                        out.close();
                }

}