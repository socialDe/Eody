package com.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class Util {
        // 받아온 데이터를 서버에 이미지를 올린다.
        public static void saveShopFile(HttpServletRequest request, MultipartFile mf, String review_name) {
        	// 디렉토리 어디로받아야할것인지 선택해야함.   
    		// 상대경로이지만 이클립스에서 테스트하기 어려움
        		//String uploadPath = request.getSession().getServletContext().getRealPath("/img/shopImg/"); 
        		String dir = "/Users/jaeuk/Desktop/Dev/web/eody/web/img/shopImg/";
        		byte [] data;
        		String imgname = mf.getOriginalFilename();
        		try {
        			data = mf.getBytes();
        			FileOutputStream fo = 
        					new FileOutputStream(dir+review_name+imgname);
        			
        			fo.write(data);
        			fo.close();
        		}catch(Exception e) {
        			e.printStackTrace();
        		}
       	}
        

		public static void saveReviewFile(MultipartFile mf, String review_name) {			       	
		        String dir = "/Users/jaeuk/Desktop/Dev/web/eody/web/img/reviewImg/";
				byte [] data;
				String imgname = mf.getOriginalFilename();
				try {
					data = mf.getBytes();
					FileOutputStream fo = 
							new FileOutputStream(dir+review_name+imgname);
					
					fo.write(data);
					fo.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
		}
		
		public static void deleteReviewFile(String imgname, String review_name){
			String dir = "/Users/jaeuk/Desktop/Dev/web/eody/web/img/reviewImg/";
			//dir += review_name;
			dir += imgname;

		    // 경로와 파일명 지정
		    File file = new File(dir);
		    System.out.println("파일 삭제목적 찾기 시작: "+file.getName().toString());

		    // 지정한 경로에 파일이 존재하는 지 확인
		    // 지정한 경로에 파일이 존재하는 경우 
		    if (file.exists()){
		      // 파일 삭제 성공시
		      if (file.delete()){
		        System.out.println("파일을 삭제 성공");
		      //파일 삭제 실패시
		      }else{
		        System.out.println("파일 삭제 실패");
		      }

		    // 지정한 경로에 파일이 존재안하는 경우 
		    }else{
		      System.out.println("파일이 없습니다.");
		    }
		  }
}