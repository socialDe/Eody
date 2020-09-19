package com.handle;

import java.util.ArrayList;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.frame.Biz;
import com.vo.HotPlaceVO;

public class hot_place {

	public static void main(String[] args) {
		System.out.println("App Start .....");
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("myspring.xml");
				System.out.println("Spring Started .......");
				
				Biz<String,Integer,HotPlaceVO> biz = 
						(Biz)factory.getBean("hbiz");
				
				
				
				HotPlaceVO u = 
				new HotPlaceVO(9,"종각","37.570161", "126.983012", "hi.jpg");
				// register test
//				try {
//					biz.register(u);
//					System.out.println("OK");
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
				
				// remove test
//				try {
//					biz.remove(7);
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//				//modify test
//				try {
//					biz.modify(u);
//				} catch (Exception e1) {
//					e1.printStackTrace();
//				}
//				// select test
//				try {
//					System.out.println(biz.get(1));
//				} catch (Exception e1) {
//					e1.printStackTrace();
//				}
				// selectall test
				ArrayList<HotPlaceVO> list = null;
				try {
					list=biz.get();
					for(HotPlaceVO co: list) {
						System.out.println(co);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
	}
	

}
