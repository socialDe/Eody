package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.frame.Biz;
import com.vo.ReviewVO;
import com.vo.SearcherVO;
import com.vo.ShopVO;

@Controller
public class ReviewController {

        @Resource(name = "rbiz")
        Biz<String, Integer, ReviewVO> rbiz;
        @Resource(name = "shopbiz")
        Biz<String,Integer, ShopVO> shopbiz;
        
        // 리뷰 등록 서블릿
        @RequestMapping("/reviewadd.mc")
        public ModelAndView reviewadd(ModelAndView mv, ReviewVO review, SearcherVO searcher,
                        @RequestParam("files") MultipartFile[] files) {
        	
        		// 가게 이름은 hidden 값으로 넘겨받았음
                // 리뷰에 매긴 평점은 hidden 값으로 넘겨받았음
                // 리뷰를 작성한 searcher의 nickname값을 hidden으로 넘겨받았음

                // 리뷰에 업로드한 사진이름 저장
                System.out.println("size : " + files.length);
                int len = files.length;
                System.out.println("사진 길이 : " + len);
                if(files[0].getOriginalFilename() == "") {
                	review.setReview_image1("default.jpg");
                    review.setReview_image2("default.jpg");
                    review.setReview_image3("default.jpg");
                }
                else if (len == 1) {
                        review.setReview_image1(review.getReview_name() + files[0].getOriginalFilename());
                        review.setReview_image2("default.jpg");
                        review.setReview_image3("default.jpg");
                } else if (len == 2) {
                        review.setReview_image1(review.getReview_name() + files[0].getOriginalFilename());
                        review.setReview_image2(review.getReview_name() + files[1].getOriginalFilename());
                        review.setReview_image3("default.jpg");
                } else {
                        review.setReview_image1(review.getReview_name() + files[0].getOriginalFilename());
                        review.setReview_image2(review.getReview_name() + files[1].getOriginalFilename());
                        review.setReview_image3(review.getReview_name() + files[2].getOriginalFilename());
                }

                try {
                        rbiz.register(review);
                        // 사진파일 폴더에 저장
                        for (MultipartFile f : files) {
                                if (f.getOriginalFilename() == "") {
                                        continue;
                                }
                                Util.saveReviewFile(f, review.getReview_name());
                        }
                        // 상점 평균 평점 수정
                        shopbiz.shop_score_avg(review.getShop_name());
                } catch (Exception e) {
                        e.printStackTrace();
                }

                // redirect으로 해야 submit 중복을 막음
                mv.setViewName("redirect:myroom.mc");
                return mv;
        }

        // 리뷰리스트 화면 처리
        @ResponseBody
        @RequestMapping("/getReview.mc")
        public void getReview(HttpServletResponse res, String ashop) throws IOException {
                System.out.println("shop 이름 : " + ashop);
                JSONArray ja = new JSONArray();
                ArrayList<ReviewVO> list = new ArrayList<>();
                try {
                        list = rbiz.review_get(ashop);
                } catch (Exception e) {
                        System.out.println("error");
                        e.printStackTrace();
                }
                //System.out.println("list: " + list.toString());
                DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                System.out.println("사이즈 : " + list.size());
                for (int i = 0; i < list.size(); i++) {
                        JSONObject data = new JSONObject();
                        data.put("review_date", format.format(list.get(i).getReview_date()));
                        data.put("review_contents", list.get(i).getReview_contents());
                        data.put("review_image1", list.get(i).getReview_image1());
                        data.put("review_image2", list.get(i).getReview_image2());
                        data.put("review_image3", list.get(i).getReview_image3());
                        data.put("shop_name", list.get(i).getShop_name());
                        data.put("review_name", list.get(i).getReview_name());
                        data.put("shop_score", list.get(i).getShop_score()+ "");
                        ja.add(data);
                        //System.out.println(ja.toString());
                        
                }
                //System.out.println("ja : " + ja);
                res.setCharacterEncoding("utf-8");
                res.setContentType("application/json");
                PrintWriter out = res.getWriter();

                
                out.print(ja.toJSONString());
                out.close();
        }


}