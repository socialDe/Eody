package com.controller;

import java.io.FileOutputStream;
import org.springframework.web.multipart.MultipartFile;

public class Util {
        // 받아온 데이터를 서버에 이미지를 올린다.
        public static void saveFile(MultipartFile mf, String review_name) {
        	//디렉토리 어디로받아야할것인지 선택해야함.
        	//Shopadd, Reviewadd에서 사용되고 있음. 추후 분기처리
                String dir = "C:\\new_eody\\Eody\\web\\img";
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