package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.BookingVO;
import com.vo.ManagerVO;
import com.vo.ReviewVO;
import com.vo.ShopVO;

@Controller
public class ShopController {
        
        @Resource(name = "mbiz")
        Biz<String, Integer, ManagerVO> biz;
        @Resource(name = "shopbiz")
        Biz<String,Integer, ShopVO> biz_shop;                                        // 가게 입니다.

        // 리뷰입니다.
        @Resource(name = "rbiz")
        Biz<String, Integer, ReviewVO> rbiz;
        
        @Resource(name = "bookingbiz")
        Biz<String,Integer,BookingVO> booking_biz;			//예약 biz입니다.
        
        @RequestMapping("/shopdetail.mc")
        public ModelAndView shopdetail(HttpServletRequest request) {
                ModelAndView mv = new ModelAndView();
                String name =request.getParameter("name");
                System.out.println(name);                                                                        
                ShopVO singleshop = null;
                try {
                        singleshop = biz_shop.get1(name);
                        System.out.println(singleshop);
                        HttpSession session = request.getSession();                         
                        session.setAttribute("singleshop",singleshop); 
                } catch (Exception e) {
                        e.printStackTrace();
                }
                mv.setViewName("manager/shopdetail");
                return mv;
        }
        
        // Move on Shop Update Page //
        @RequestMapping("/shopupdate.mc")
        public ModelAndView shopupdate() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("manager/shopupdate");
                return mv;
        }
        
        // Move on Shop Add Page //
        @RequestMapping("/shopadd.mc")
        public ModelAndView shopadd() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("manager/shopadd");
                return mv;
        }
        
        @RequestMapping("/shopaddimpl.mc")
        public ModelAndView shopaddimpl(ModelAndView mv, @RequestParam("files") MultipartFile[] files, ShopVO shoplist,HttpServletRequest request, ManagerVO mm) { 
                        String manager = request.getParameter("manager_id");
                        System.out.println(manager);
                        System.out.println(shoplist);
                        int len = files.length;
                        System.out.println(len);
                if(len == 1) {
                        System.out.println(files[0]);
                    shoplist.setShop_img1(files[0].getOriginalFilename());
                    shoplist.setShop_img2("default.png");
                    shoplist.setShop_img3("default.png");
                    shoplist.setShop_img4("default.png");
                } else if(len == 2) {
                        System.out.println(files[0]);
                        System.out.println(files[1]);
                    shoplist.setShop_img1(files[0].getOriginalFilename());
                    shoplist.setShop_img2(files[1].getOriginalFilename());
                    shoplist.setShop_img3("default.png");
                    shoplist.setShop_img4("default.png");
                } else if(len == 3){
                        System.out.println(files[0]);
                        System.out.println(files[1]);
                        System.out.println(files[2]);
                    shoplist.setShop_img1(files[0].getOriginalFilename());
                    shoplist.setShop_img2(files[1].getOriginalFilename());
                    shoplist.setShop_img3(files[2].getOriginalFilename());
                    shoplist.setShop_img4("default.png");
                } else {
                        System.out.println(files[0]);
                        System.out.println(files[1]);
                        System.out.println(files[2]);
                        System.out.println(files[3]);
                        shoplist.setShop_img1(files[0].getOriginalFilename());
                    shoplist.setShop_img2(files[1].getOriginalFilename());
                    shoplist.setShop_img3(files[2].getOriginalFilename());
                    shoplist.setShop_img4(files[3].getOriginalFilename());
                        
                }
                        shoplist.setManager_id(manager);
                        System.out.println(shoplist);
                        try {
                                for(MultipartFile f : files) {
                                        if(f.getOriginalFilename()=="default.png") {
                                                continue;
                                        }
                                        Util.saveFile(f,shoplist.getH_name());                                        //뒤에 H_name은 상관없습니다.
                        }
                                biz_shop.register(shoplist);
                                System.out.println("Complete Add");
                                mv.setViewName("redirect:aloginimpl.mc?id=" + mm.getManager_id()+"&pwd="+mm.getManager_pwd());
                        } catch (Exception e) {
                                mv.setViewName("redirect: alogin.mc");
                                e.printStackTrace();
                        }
                        return mv;
        }
        
        @RequestMapping("/shopupdateimpl.mc")
        public ModelAndView shopupdateimpl(ModelAndView mv, @RequestParam("files") MultipartFile[] files, ShopVO shoplist,HttpServletRequest request,ManagerVO mm, String origin_shop_name) { 
                String manager = request.getParameter("manager_id");
                System.out.println(manager);
                System.out.println(shoplist);
                int len = files.length;
                System.out.println(len);
        if(len == 1) {
                System.out.println(files[0]);
            shoplist.setShop_img1(files[0].getOriginalFilename());
            shoplist.setShop_img2("default.png");
            shoplist.setShop_img3("default.png");
            shoplist.setShop_img4("default.png");
        } else if(len == 2) {
                System.out.println(files[0]);
                System.out.println(files[1]);
            shoplist.setShop_img1(files[0].getOriginalFilename());
            shoplist.setShop_img2(files[1].getOriginalFilename());
            shoplist.setShop_img3("default.png");
            shoplist.setShop_img4("default.png");
        } else if(len == 3){
                System.out.println(files[0]);
                System.out.println(files[1]);
                System.out.println(files[2]);
            shoplist.setShop_img1(files[0].getOriginalFilename());
            shoplist.setShop_img2(files[1].getOriginalFilename());
            shoplist.setShop_img3(files[2].getOriginalFilename());
            shoplist.setShop_img4("default.png");
        } else {
                System.out.println(files[0]);
                System.out.println(files[1]);
                System.out.println(files[2]);
                System.out.println(files[3]);
                shoplist.setShop_img1(files[0].getOriginalFilename());
            shoplist.setShop_img2(files[1].getOriginalFilename());
            shoplist.setShop_img3(files[2].getOriginalFilename());
            shoplist.setShop_img4(files[3].getOriginalFilename());
                
        }
                shoplist.setManager_id(manager);
                System.out.println(shoplist);
                try {
                        for(MultipartFile f : files) {
                                if(f.getOriginalFilename()=="default.png") {
                                        continue;
                                }
                                Util.saveFile(f,shoplist.getH_name());                                        //뒤에 H_name은 상관없습니다.
                        }
                        System.out.println(shoplist);
                        biz_shop.modify(shoplist);
                        mv.setViewName("redirect:aloginimpl.mc?id=" + mm.getManager_id()+"&pwd="+mm.getManager_pwd());
                        System.out.println("Complete Update");
                } catch (Exception e) {
                        mv.setViewName("redirect:shopupdate.mc");
                        e.printStackTrace();
                }
                return mv;
        }
        
        //예약리스트 화면 처리
        @ResponseBody
        @RequestMapping("/getbooking.mc")
        public void bookinglist(HttpServletResponse res, String ashop) throws IOException {
        		JSONArray ja = new JSONArray();
        		ArrayList<BookingVO> list =new ArrayList<>();
        		try {
					list=booking_biz.bookingget_shop(ashop);
				} catch (Exception e) {
					System.out.println("error");
					e.printStackTrace();
				}
        		System.out.println("list: "+list.toString());
        		for(int i=0; i<list.size(); i++ ) {
        			JSONObject data =new JSONObject();
        			data.put("booking_no", list.get(i).getBooking_no());
        			data.put("searcher_name", list.get(i).getsearcher_name());
        			data.put("searcher_id", list.get(i).getsearcher_id());
        			data.put("shop_name", list.get(i).getShop_name());
        			data.put("booking_date", list.get(i).getBooking_date());
        			data.put("booking_pp", list.get(i).getBooking_pp());
        			data.put("booking_msg", list.get(i).getBooking_msg());
        			data.put("booking_searcher_phone", list.get(i).getsearcher_phone());
        			data.put("booking_stat", list.get(i).getBooking_stat());
        			data.put("review_stat", list.get(i).getReview_stat());
        			data.put("shop_img", list.get(i).getShop_img());
        			ja.add(data);
        			System.out.println(ja.toString());
        		}
        		res.setCharacterEncoding("utf-8");
        		res.setContentType("application/json");
        		PrintWriter out=res.getWriter();
        		
        		out.print(ja.toJSONString());
        		out.close();
        }

}
