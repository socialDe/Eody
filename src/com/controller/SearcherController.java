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

        // 메
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


        // main페이지의 login 버튼 실행 시 로그인 페이지로 이동 
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
        // loginfail
        @RequestMapping("/loginfail.mc")
        public ModelAndView loginfail(HttpServletRequest request) {
                ModelAndView mv = new ModelAndView();
                
                mv.setViewName("redirect:login.mc");
                return mv;
        }        

        // 로그인 버튼 실행 서블릿 
        @RequestMapping("/loginimpl.mc")
    	public ModelAndView loginimpl(HttpServletRequest request, HttpServletResponse res) {
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
    				mv.addObject("msg", "비밀번호가 틀렸습니다.");
    				mv.setViewName("searcher/login");
    			}
    		} catch (Exception e) {
    			mv.addObject("msg", "아이디가 틀렸습니다.");
				mv.setViewName("searcher/login");
    			e.printStackTrace();
    		}

    		
    		return mv;
    	}

        // Sign Up 버튼 실행 시 회원가입 페이지로 이동 
        @RequestMapping("/searcheradd.mc")
        public ModelAndView searcheradd(ModelAndView mv) {
                mv.setViewName("searcher/register");
                return mv;
        }


        // 회원가입 버튼 서블릿 
        @RequestMapping("/searcheraddimpl.mc")
        public ModelAndView searcheraddimpl(ModelAndView mv, SearcherVO searcher, String user_birth_year, String user_birth_month, String user_birth_day
        		,HttpServletResponse res) throws Exception {

                try {

                        // search_birthday 값 셋팅 
                        searcher.setSearcher_birthday(user_birth_year + "-" + user_birth_month + "-" + user_birth_day);
                        biz.register(searcher);
                        mv.setViewName("searcher/registerok");
                } catch (Exception e) {
                        mv.setViewName("redirect:register.mc");
                        e.printStackTrace();
                }
                return mv;
        }


        // 아이디 중복 체크
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




        // myroom에서 업데이트 하기 myroom_updateimpl.mc
        @RequestMapping("/myroom_updateimpl.mc")
        public ModelAndView myroomupdateimpl(ModelAndView mv, SearcherVO searcher, String user_birth_year,
                        String user_birth_month, String user_birth_day) {                
                // search_birthday 값 셋팅
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

        //  myroom 페이지로 이동
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
        
        // myroom의 내 정보 수정 페이지 전송
        @RequestMapping("myroom_update.mc")
        public ModelAndView myroom_update() {
                ModelAndView mv = new ModelAndView();
                mv.addObject("centerpage", "myroom_update");
                mv.setViewName("searcher/myroom");
                return mv;
        }
	     // myroom의 예약현황 페이지 전송
	    @RequestMapping("/booking.mc")
	    public ModelAndView one() {
	            ModelAndView mv = new ModelAndView();
	            mv.addObject("centerpage", "booking");
	            mv.setViewName("searcher/myroom");
	            return mv;
	    }
	    

        // 예약하기
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
                            out.println("<script>alert('로그인이필요합니다.');</script>");
                            out.flush();
                        } catch (IOException e) {
                                e.printStackTrace();
                        }
                        mv.setViewName("searcher/login");
                }
                 return mv;
         }


        // Search 버튼 누르면 정보입력 페이지로 이동
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
      //내위치기반 탐색: https 환경 구축 후 Geolocation API 활용하여 사용할 예정
//      @RequestMapping("/myposition.mc")
//      public ModelAndView myposition(ModelAndView mv) {
//              mv.addObject("centerpage", "myposition"); 
//              return mv;
//        }
        @RequestMapping("/areaposition.mc")
        public ModelAndView areaposition(ModelAndView mv) {
                mv.addObject("centerpage", "areaposition"); 
                mv.setViewName("searcher/search");
                return mv;
        }
        
        //거리우선탐색
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
        //내위치기반 탐색: https 환경 구축 후 Geolocation API 활용하여 사용할 예정
//      @RequestMapping("/searchimpl2.mc")
//      public ModelAndView searchimpl_2(HttpServletRequest request) {
//              ModelAndView mv = new ModelAndView();
//              return mv;
//      }
        
        //구체장소 탐색 화면 
        @Resource(name = "hbiz")
        Biz<String, Integer, HotPlaceVO> hbiz;        
        @RequestMapping("/specific_search.mc")
        public ModelAndView specificSearch(HttpServletRequest request,String region1, String region2, String region3, String searchType,int number_blank,String shop, String time) {
       
	        	//searchType: 탐색방법(거리우선, 지역명) 구분, null-> 지역명, DFS -> 거리우선
	            //number_blank: 장소 탐색 화면에서 보여줄 지역 개수
                ModelAndView mv = new ModelAndView();
                ArrayList<HotPlaceVO> list = new ArrayList<HotPlaceVO>();
                
              //지역명 검색 화면  

                if(searchType==null) {
                        String[] startsregion = new String[number_blank];
                startsregion = request.getParameterValues("blanks");
                System.out.println("업종 입력 Test:"+shop);
                System.out.println("시간 입력 Test:"+time);
                for(int i=0; i<startsregion.length;i++) {
                        try {
                                                list.add(hbiz.get1(startsregion[i]));
                                                
                                                
                                        } catch (Exception e) {
                                                e.printStackTrace();
                                        }
                }
                HttpSession session1 = request.getSession();
                session1.setAttribute("regions", list);//

                mv.addObject("number_blank",number_blank);  //개수
                mv.addObject("shop",shop);    //가게 유형
                mv.addObject("time",time);     //시간
                mv.addObject("sub_regionpage","regionList");
                
                }

                //거리우선 검색 화면
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
                    System.out.println("업종 입력 Test:"+shop);
	                System.out.println("시간 입력 Test:"+time);
	                System.out.println("숫자 입력 Test:"+number_blank);
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

               @RequestMapping("/shop_hitcnt.mc")  //조회수 올리기 , 평점 평균 저장하기
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
                        HotPlaceVO hplace = null;  //선택한 핫플레이스 
                        try {
                                hplace = hbiz.get1(h_name);
                        } catch (Exception e) {
                                e.printStackTrace();
                        }
                        
                        ArrayList<ShopVO> list = null;  //핫플레이스의 shop list
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