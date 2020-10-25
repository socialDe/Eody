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
        Biz<String, Integer, ShopVO> biz_shop;                                        // 媛�寃� �엯�땲�떎.
        // 硫붿씤�럹�씠吏�濡� �씠�룞
        @RequestMapping("/amain.mc")
        public ModelAndView amain() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("manager/amain");
                return mv;
        }

        // main�럹�씠吏��쓽 login 踰꾪듉 �떎�뻾 �떆 濡쒓렇�씤 �럹�씠吏�濡� �씠�룞
        @RequestMapping("/alogin.mc")
        public ModelAndView alogin() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("manager/alogin");
                return mv;
        }
        // 濡쒓렇�씤 �썑�뿉 �슦痢� �긽�떒�쓽 logout 踰꾪듉 �떎�뻾 �떆 硫붿씤 �럹�씠吏�濡� �씠�룞
        @RequestMapping("/alogout.mc")
        public ModelAndView alogout() {
        	ModelAndView mv = new ModelAndView();
        	mv.setViewName("manager/amain");
        	return mv;
        }
        // center �럹�씠吏� �씠�룞: Chart
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

        // 濡쒓렇�씤 踰꾪듉 �떎�뻾 �꽌釉붾┸
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
                          
                            //濡쒓렇�씤 �넻怨쇱� �룞�떆 媛�寃� 由ъ뒪�듃 戮묒븘�궡湲�
                            ArrayList<ShopVO> shoplist = null;                        
                            try{
                                    shoplist = biz_shop.shop_get(id);                                        //selectall �븿�닔�엯�땲�떎. �빐�떦 �븘�씠�뵒媛� 媛뽮퀬�엳�뒗 shop �뀒�씠釉붿쓣 �쟾遺� 媛��졇�샃�땲�떎.
                            }catch (Exception e) {
                                    e.printStackTrace();
                            }
                            mv.addObject("centerpage", "center1");                                // centerpage�뿉 center1.jsp �뙆�씪�쓣 �뼶�뒿�땲�떎. centerpage�뒗 myroom.jsp�뿉 �엳�뒿�땲�떎.
                            session.setAttribute("shoplist", shoplist);                        // 洹� shop �뀒�씠釉붿쓣 session�뿉 �떞�븯�뒿�땲�떎.
                            System.out.println(shoplist);
                            mv.setViewName("manager/amyroom");                                        // myroom �럹�씠吏�濡� �씠�룞�빀�땲�떎.
                    } else {
                    		mv.addObject("msg", "비밀번호가 틀렸습니다.");
                            mv.setViewName("manager/alogin");
                    }
            } catch (Exception e) {
            		mv.addObject("msg", "아이디가 틀렸습니다.");
            		mv.setViewName("manager/alogin");
                    e.printStackTrace();
            }
    					
    			
                

                return mv;
        }

        // Sign Up 踰꾪듉 �떎�뻾 �떆 �쉶�썝媛��엯 �럹�씠吏�濡� �씠�룞
        @RequestMapping("/manageradd.mc")
        public ModelAndView manageradd(ModelAndView mv) {
                mv.setViewName("manager/aregister");
                return mv;
        }

        // �쉶�썝媛��엯 踰꾪듉 �떎�뻾 �꽌釉붾┸
        @RequestMapping("/manageraddimpl.mc")
        public ModelAndView manageraddimpl(ModelAndView mv, ManagerVO manager, String user_birth_year,
                        String user_birth_month, String user_birth_day) {
                try {
                        // search_birthday 媛� �뀑�똿
                        manager.setManager_birthday(user_birth_year + "-" + user_birth_month + "-" + user_birth_day);
                        biz.register(manager);
                        mv.setViewName("manager/aregisterok");
                } catch (Exception e) {
                        mv.setViewName("redirect:aregister.mc");
                        e.printStackTrace();
                }
                return mv;
        }

      
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