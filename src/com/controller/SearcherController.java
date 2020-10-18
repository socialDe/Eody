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
import com.vo.BookingVO;
import com.vo.HotPlaceVO;
import com.vo.ReviewVO;
import com.vo.SearcherVO;
import com.vo.ShopVO;


@Controller
public class SearcherController {

       @Resource(name = "sbiz")
        Biz<String, Integer, SearcherVO> biz;
        
        @Resource(name = "shopbiz")
        Biz<String, Integer, ShopVO> shbiz;
        
        @Resource(name = "bookingbiz")
        Biz<String, Integer, BookingVO> bbiz;
        
        @Resource(name = "hbiz")
        Biz<String, Integer, HotPlaceVO> hotbiz;
        
        @Resource(name = "rbiz")
        Biz<String, Integer, ReviewVO> reviewbiz;

        // ����
        @RequestMapping("/main.mc")
        public ModelAndView main() {
                ModelAndView mv = new ModelAndView();
                ArrayList<ShopVO> list = null;
                try {
                    list = shbiz.get();                      
                } catch (Exception e) {                	
                    e.printStackTrace();
                }        
                mv.addObject("shoplist", list);                
                mv.setViewName("searcher/main");  
                return mv;
        }

        // main�������� login ��ư ���� �� �α��� �������� �̵�
        @RequestMapping("/login.mc")
        public ModelAndView login() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("searcher/login");
                return mv;
        }

        // logout
        @RequestMapping("/logout.mc")
        public ModelAndView logout(HttpServletRequest request) {
                ModelAndView mv = new ModelAndView();
                HttpSession session = request.getSession();
                if(session != null) {
                        session.invalidate();
                }
                mv.setViewName("redirect:main.mc");
                return mv;
        }        
        // �α��� ��ư ���� ����
        @RequestMapping("/loginimpl.mc")
    	public ModelAndView loginimpl(HttpServletRequest request) {
    		ModelAndView mv = new ModelAndView();
    		String id = request.getParameter("id");
    		String pwd = request.getParameter("pwd");
    		SearcherVO dbsearcher = null;
    		try {
    			dbsearcher = biz.get1(id);
    			if (dbsearcher.getSearcher_pwd().equals(pwd)) {
    				HttpSession session = request.getSession();
    				session.setAttribute("loginuser", dbsearcher);
    				mv.setViewName("redirect:main.mc");
    			} else {
    				mv.setViewName("redirect:login.mc");
    			}
    		} catch (Exception e) {
    			mv.setViewName("redirect:login.mc");
    			e.printStackTrace();
    		}

    		return mv;
    	}

        // Sign Up ��ư ���� �� ȸ������ �������� �̵�
        @RequestMapping("/searcheradd.mc")
        public ModelAndView searcheradd(ModelAndView mv) {
                mv.setViewName("searcher/register");
                return mv;
        }

        // ȸ������ ��ư ����
        @RequestMapping("/searcheraddimpl.mc")
        public ModelAndView searcheraddimpl(ModelAndView mv, SearcherVO searcher, String user_birth_year, String user_birth_month, String user_birth_day) {
                try {
                        // search_birthday �� ����
                        searcher.setSearcher_birthday(user_birth_year + "-" + user_birth_month + "-" + user_birth_day);
                        biz.register(searcher);
                        mv.setViewName("searcher/registerok");
                } catch (Exception e) {
                        mv.setViewName("redirect:register.mc");
                        e.printStackTrace();
                }
                return mv;
        }

        // ���̵� �ߺ� üũ
        @RequestMapping("/idcheckimpl.mc")
        public void id_check_impl(HttpServletResponse res, String id) {
                int result = 0;

                SearcherVO dbsearcher = null;
                try {
                        dbsearcher = biz.get1(id);
                        if(dbsearcher != null) {
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
        

        // myroom���� ������Ʈ �ϱ� myroom_updateimpl.mc
        @RequestMapping("/myroom_updateimpl.mc")
        public ModelAndView myroomupdateimpl(ModelAndView mv, SearcherVO searcher, String user_birth_year,
                        String user_birth_month, String user_birth_day) {                
                // search_birthday �� ����
                searcher.setSearcher_birthday(user_birth_year + "-" + user_birth_month + "-" + user_birth_day);
                try {        
                        biz.modify(searcher);
                        mv.setViewName("redirect:loginimpl.mc?id=" + searcher.getSearcher_id()+"&pwd="+searcher.getSearcher_pwd());
                
                } catch (Exception e) {
                        mv.setViewName("redirect:myroom_update.mc");
                        e.printStackTrace();
                }                
                
                return mv;
        }

        // myroom �������� �̵�
        @RequestMapping("/myroom.mc")
        public ModelAndView myroom(ModelAndView mv,HttpServletRequest request) {
	        	HttpSession session = request.getSession(false);
	            SearcherVO dbsearcher = null;
	            dbsearcher = (SearcherVO)session.getAttribute("loginuser");
        		System.out.println(dbsearcher.toString());
	        	ArrayList<BookingVO> books = new ArrayList<>();
				try {
					books = bbiz.bookingget_searcher(dbsearcher.getSearcher_id());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            mv.addObject("books", books);	            
                mv.setViewName("searcher/myroom");
                return mv;
        }
        
        // myroom�� �� ���� ���� ������ ����
        @RequestMapping("myroom_update.mc")
        public ModelAndView myroom_update() {
                ModelAndView mv = new ModelAndView();
                mv.addObject("centerpage", "myroom_update");
                mv.setViewName("searcher/myroom");
                return mv;
        }
	     // myroom�� ������Ȳ ������ ����
	    @RequestMapping("/booking.mc")
	    public ModelAndView one() {
	            ModelAndView mv = new ModelAndView();
	            mv.addObject("centerpage", "booking");
	            mv.setViewName("searcher/myroom");
	            return mv;
	    }
	    

        // �����ϱ�
         @RequestMapping("/bookingimpl.mc")
         public ModelAndView bookingimpl(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, BookingVO booking) {
                 HttpSession session = request.getSession(false);
                 SearcherVO dbsearcher = null;
                 dbsearcher = (SearcherVO)session.getAttribute("loginuser");
                 System.out.println(dbsearcher);
                 if (dbsearcher != null) {
                        try {
                                 bbiz.register(booking);
                                 mv.setViewName("redirect:main.mc");
                         } catch (Exception e) {
                                 mv.setViewName("redirect:register.mc");
                                 e.printStackTrace();
                         }
                } else {
                        response.setContentType("text/html; charset=UTF-8");
                        PrintWriter out;
                        try {
                                out = response.getWriter();
                                out.println("<script>alert('�α������ʿ��մϴ�.');</script>");
                            out.flush();
                        } catch (IOException e) {
                                e.printStackTrace();
                        }
                        mv.setViewName("searcher/login");
                }
                 return mv;
         }


        // Search ��ư ������ �����Է� �������� �̵�
        @RequestMapping("/search.mc")
        public ModelAndView search() {
                ModelAndView mv = new ModelAndView();
                mv.setViewName("searcher/search");
                System.out.println("�� �̵� ����");
                return mv;
        }
        
        @RequestMapping("/centerposition.mc")
        public ModelAndView centerposition(ModelAndView mv) {
                mv.addObject("centerpage", "centerposition"); 
                mv.setViewName("searcher/search");
                return mv;
        }
      //����ġ��� Ž��: https ȯ�� ���� �� Geolocation API Ȱ���Ͽ� ����� ����
//        @RequestMapping("/myposition.mc")
//        public ModelAndView myposition(ModelAndView mv) {
//                mv.addObject("centerpage", "myposition"); 
//                mv.setViewName("searcher/search");
//                return mv;
//        }
        @RequestMapping("/areaposition.mc")
        public ModelAndView areaposition(ModelAndView mv) {
                mv.addObject("centerpage", "areaposition"); 
                mv.setViewName("searcher/search");
                return mv;
        }
        
        //�Ÿ��켱Ž��
        @RequestMapping("/searchimpl1.mc")
        public ModelAndView searchimpl_1(ModelAndView mv ,String shop, int number_blank,String time, HttpServletRequest request) {
                String[] startsregion = new String[number_blank];
                startsregion = request.getParameterValues("blanks");
                RegionSearch rs = new RegionSearch();
                ArrayList<HotPlaceVO> list = new ArrayList<HotPlaceVO>();
                list = rs.DistanceFirstSearch(startsregion);
                mv.addObject("time", time);
                mv.addObject("shop",shop);
                mv.addObject("region1",list.get(0));
                mv.addObject("region2",list.get(1));
                mv.addObject("region3",list.get(2));
                mv.addObject("centerpage", "regionDetail");
                mv.setViewName("searcher/regionResult");
                
                return mv;
        }
        //����ġ��� Ž��: https ȯ�� ���� �� Geolocation API Ȱ���Ͽ� ����� ����
//        @RequestMapping("/searchimpl2.mc")
//        public ModelAndView searchimpl_2(HttpServletRequest request) {
//                ModelAndView mv = new ModelAndView();
//                return mv;
//        }
        
        //��ü��� Ž�� ȭ�� 
        @Resource(name = "hbiz")
        Biz<String, Integer, HotPlaceVO> hbiz;        
        @RequestMapping("/specific_search.mc")
        public ModelAndView specificSearch(HttpServletRequest request,String region1, String region2, String region3, String searchType,int number_blank,String shop, String time) {
                //searchType: Ž�����(�Ÿ��켱, ������) ����, null-> ������, DFS -> �Ÿ��켱
                //number_blank: ��� Ž�� ȭ�鿡�� ������ ���� ����
                ModelAndView mv = new ModelAndView();
                ArrayList<HotPlaceVO> list = new ArrayList<HotPlaceVO>();
                
                //������ �˻� ȭ�� 
                if(searchType==null) {
                        String[] startsregion = new String[number_blank];
                startsregion = request.getParameterValues("blanks");
                System.out.println("���� �Է� Test:"+shop);
                System.out.println("�ð� �Է� Test:"+time);
                for(int i=0; i<startsregion.length;i++) {
                        try {
                                                list.add(hbiz.get1(startsregion[i]));
                                                
                                                
                                        } catch (Exception e) {
                                                e.printStackTrace();
                                        }
                }
                HttpSession session1 = request.getSession();
                                session1.setAttribute("regions", list);//
                mv.addObject("number_blank",number_blank);  //����
                mv.addObject("shop",shop);    //��������
                mv.addObject("time",time);     //�ð�
                mv.addObject("sub_regionpage","regionList");
                
                }
                
                //�Ÿ��켱 �˻� ȭ�� 
                else {
                        try {
                                        HotPlaceVO region1_obj =hbiz.get1(region1);
                                        list.add(region1_obj);
//                                        System.out.println(region1_obj.toString());
                                } catch (Exception e) {
                                        e.printStackTrace();
                                }
                        try {
                                        HotPlaceVO region2_obj=hbiz.get1(region2);
                                        list.add(region2_obj);
//                                        System.out.println(region2_obj.toString());
                                } catch (Exception e) {
                                        e.printStackTrace();
                                }
                        try {
                                        HotPlaceVO region3_obj=hbiz.get1(region3);
                                        list.add(region3_obj);
//                                        System.out.println(region3_obj.toString());
                                } catch (Exception e) {
                                        e.printStackTrace();
                                }
                    System.out.println("���� �Է� Test:"+shop);
	                System.out.println("�ð� �Է� Test:"+time);
	                System.out.println("���� �Է� Test:"+number_blank);
	                mv.addObject("number_blank",number_blank);
	                mv.addObject("shop",shop);
	                mv.addObject("time",time);
	                HttpSession session1 = request.getSession();
	                                session1.setAttribute("regions", list);    //
	                mv.addObject("sub_regionpage","regionList");
                }
                mv.setViewName("searcher/region_n_shop");                        
                return mv;
        }

               @RequestMapping("/shop_hitcnt.mc")  ///��ȸ�� �ø��� , ���� ��� �����ϱ�
                public void shop_hitcnt(HttpServletRequest request, String shop_name) {
                        String name = request.getParameter("shop_name");
                        try {        
                                shbiz.shop_hitcnt(name);
                        } catch (Exception e) {
                                e.printStackTrace();
                        }
                        
                        try {
                                shbiz.shop_score_avg(name);
                        } catch (Exception e) {
                                e.printStackTrace();
                        }
                }

               	@RequestMapping("/listing.mc")  
                public ModelAndView listing(ModelAndView mv, String h_name) {
                        HotPlaceVO hplace = null;  //������ ���÷��̽� 
                        try {
                                hplace = hbiz.get1(h_name);
                        } catch (Exception e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                        }
                        
                        ArrayList<ShopVO> list = null;  //���÷��̽��� shop list
                        try {
                                list = shbiz.shop_hotplace_get(h_name);
                                System.out.println(list.toString());
                        } catch (Exception e) {                        
                                e.printStackTrace();
                        }
                        
                        mv.addObject("hplace", hplace);
                        System.out.println(hplace);
                        mv.addObject("shoplist", list);
                        System.out.println(list);
                        mv.addObject("centerpage", "shoplist");
                        mv.setViewName("searcher/region_n_shop");        
                return mv;        
                }
}