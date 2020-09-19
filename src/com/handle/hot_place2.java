package com.handle;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.frame.Biz;
import com.vo.DistanceVO;
import com.vo.HotPlaceVO;

public class hot_place2 {

	public static void main(String[] args) {
				
				Scanner sc = new Scanner(System.in);
				System.out.println("출발지 개수 입력: ");
				int key_number = sc.nextInt();
				String[] keys = new String[key_number];
				for(int i=0; i<key_number;i++) {
					System.out.printf("%d번째 출발지 입력: ", i+1);
					keys[i]=sc.next();
				}
				sc.close();
				ArrayList<HotPlaceVO> test = null;
				
				for(int i=0;i<keys.length;i++) {
	        		System.out.print(keys[i]+ " ");
		        }
				
				test = DistanceCalc(keys);
				
	}
	
	public static ArrayList<HotPlaceVO> DistanceCalc(String[] keys){
		
		System.out.println("App Start .....");
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("myspring.xml");
		System.out.println("Spring Started .......");
				
		Biz<String,Integer,HotPlaceVO> biz = 
				(Biz)factory.getBean("hbiz");

		
		//rawdata set up
		ArrayList<HotPlaceVO> rawdata = null;
		try {
			rawdata = biz.get();
//			System.out.println("get test!!!!!!!!!!!!!!!!!!!!");
//			for(HotPlaceVO co: rawdata) {
//				System.out.println(co);
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		//rawdata, 출발지간 거리를 담아두기 위한 2차원 배열 
        double[][] dists = new double[keys.length][rawdata.size()];
        
        for(int j=0; j<rawdata.size();j++) {
        	/* lat_raw = rawdata의 경도 
        	 * lng_raw = rawdata의 위도 
        	 * lat_key = 출발지의 경도 
        	 * lng_key = 출발지의 위도 
        	 */
        	double lat_raw=0.0;
        	double lng_raw=0.0;
        	double lat_key=0.0;
        	double lng_key=0.0;
        	
        	//rawdata의 경도, 위도 입력 
        	lat_raw = Double.parseDouble(rawdata.get(j).getH_lat());
        	lng_raw = Double.parseDouble(rawdata.get(j).getH_lng());
        	
        	//입력받은 위치의 개수만큼 출발지 lat, lng 입력  
        	for(int i=0;i<keys.length;i++) {
        		//입력 받은 위치의 lat 입력 
        		try {
					lat_key = Double.parseDouble(biz.get1(keys[i]).getH_lat());
//					System.out.println("lat_key: "+lat_key+"입력 완료.");
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
				}
        		//입력 받은 위치의 lng 입력 
        		try {
					lng_key = Double.parseDouble(biz.get1(keys[i]).getH_lng());
//					System.out.println("lng_key: "+lng_key+"입력 완료.");
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
					}
        		
	        	//입력받은 출발지와 갖고 있는 rawdata 거리 계산 
	        	double theta = lng_key - lng_raw;
	            double dist = Math.sin(deg2rad(lat_key)) * Math.sin(deg2rad(lat_raw)) + Math.cos(deg2rad(lat_key)) * Math.cos(deg2rad(lat_raw)) * Math.cos(deg2rad(theta));
	            try {
//					System.out.print(biz.get(keys[i]).getH_name());
				} catch (Exception e) {
					e.printStackTrace();
				}
//	            System.out.println("dist 1차 계산: "+dist+"입력 완료.");
	            dist = Math.acos(dist);
//	            System.out.println("dist 2차 계산: "+dist+"입력 완료.");
	            dist = rad2deg(dist);
//	            System.out.println("dist 3차 계산: "+dist+"입력 완료.");
	            dist = dist * 60 * 1.1515;
	            
	            //killometer 단위 변환 
	            dist = dist * 1.609344;
	            dists[i][j] = dist;
        	}
        }
        for(int j=0; j<rawdata.size();j++) {
        	for(int i=0;i<keys.length;i++) {
        		if(Double.isNaN(dists[i][j])) {
        			dists[i][j]=0.0;
        		}
        	}
        }
        

        for(int i=0;i<keys.length;i++) {
        	for(int j=0;j<rawdata.size(); j++) {
//        		System.out.print(dists[i][j]+ " ");
        	}
//        	System.out.println();
        }
        
    	//rawdata별 각 출발지와 거리 계산
        DistanceVO[] distances = new DistanceVO[rawdata.size()];
        //ArrayList<DistanceVO> distances = null;
        
        double[] sumarr = new double[rawdata.size()];
        
//        System.out.println("rawdata별 avg distance");
    	for(int i =0; i<rawdata.size();i++) {
    		double sum=0.0;
    		for(int j=0; j<keys.length;j++) {
    			sum += dists[j][i];
    		}
    		distances[i] = new DistanceVO();
    		distances[i].setHp(rawdata.get(i));
    		distances[i].setSum_distance(sum);
    		distances[i].setAvg_distance(sum/keys.length);
//    		System.out.print(distances[i].getAvg_distance()+" ");
    	}
    	
    	//정렬
//    	System.out.println("@@@@@@@@@@@@@@@@@@@@Before sort@@@@@@@@@@@@@@@@@@@@@@@");
//    	print(distances);
//    	System.out.println("");
//    	System.out.println("@@@@@@@@@@@@@@@@@@@@@@After sort@@@@@@@@@@@@@@@@@@@@@@@@");
    	Arrays.sort(distances);
    	print(distances);
    	System.out.println("");
    	
    	//반환할 3개 객체 담을 배열 선언 
    	DistanceVO[] result = new DistanceVO[3];
    	System.out.println("@@@@@@@@@@@@@@@추천 3지역@@@@@@@@@@@@@@@");
    	
    	int temp = 0;
    	for(int i =0; i<3; i++) {
    		result[i] = new DistanceVO();
    			for(int j =0; j<keys.length;j++) {
    				//입력받은 출발지의 이름과 추천받을 도착지의 이름이 같으면 결과 배열에 넣지 않고 다음 것 탐색
    				if(keys[j].equals(distances[temp].getHp().getH_name())) {
    					temp++;
    				}
    			}
    			result[i] = distances[temp];
    			temp++;
    		if(result[2]!=null) {
    			break;
    		}
    	}
    	
    	print(result);
    	
		return null;
	}
	
    // This function converts decimal degrees to radians
    private static double deg2rad(double deg) {
        return (deg * Math.PI / 180.0);
    }
     
    // This function converts radians to decimal degrees
    private static double rad2deg(double rad) {
        return (rad * 180 / Math.PI);
    }
    //test시 객체 배열을 print해주는 함수입니다.
    public static void print(DistanceVO[] distances) {
		for (int i = 0; i < distances.length; i++) {
			System.out.println(distances[i]);
		}
	}
}


