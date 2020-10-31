package com.controller;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class Util {
        // 받아온 데이터를 서버에 이미지를 올린다.
        public static void saveShopFile(HttpServletRequest request, MultipartFile mf, String review_name) {
        	// 디렉토리 어디로받아야할것인지 선택해야함.   
    		// 상대경로이지만 이클립스에서 테스트하기 어려움
        		//String uploadPath = request.getSession().getServletContext().getRealPath("/img/shopImg/"); 
        		String dir = "C:\\java\\Eody\\web\\img\\shopImg\\";
        		byte [] data;
        		String imgname = mf.getOriginalFilename();
        		try {
        			data = mf.getBytes();
        			FileOutputStream fo = 
        					new FileOutputStream(dir+imgname);
        			
        			fo.write(data);
        			fo.close();
        		}catch(Exception e) {
        			e.printStackTrace();
        		}
       	}
        

		public static void saveReviewFile(MultipartFile mf, String review_name) {			       	
		        String dir = "C:\\java\\Eody\\web\\img\\reviewImg\\";
				byte [] data;
				String imgname = mf.getOriginalFilename();
				try {
					data = mf.getBytes();
					FileOutputStream fo = 
							new FileOutputStream(dir+imgname);
					
					fo.write(data);
					fo.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
		}
}