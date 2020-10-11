package com.controller;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.frame.Biz;
import com.vo.DistanceVO;
import com.vo.HotPlaceVO;

public class RegionSearch {

	public ArrayList<HotPlaceVO> DistanceFirstSearch(String[] keys){

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
			
			
			//입력받은 출발지의 최대, 최소 경도 좌표
			double maxLat=0.0, minLat=9999.9;
			//입력받은 출발지의 최대, 최소 위도 좌표
			double maxLng=0.0, minLng=9999.9;
			for(int i=0; i<keys.length; i++) {
				HotPlaceVO hotKey = new HotPlaceVO();
				try {
					hotKey = biz.get1(keys[i]);
				} catch (Exception e) {
					e.printStackTrace();
				}
				if(maxLat < Double.parseDouble(hotKey.getH_lat())) {
					maxLat = Double.parseDouble(hotKey.getH_lat());
				}
				if(minLat > Double.parseDouble(hotKey.getH_lat())) {
					minLat = Double.parseDouble(hotKey.getH_lat());
				}
				if(maxLng < Double.parseDouble(hotKey.getH_lng())) {
					maxLng = Double.parseDouble(hotKey.getH_lng());
				}
				if(minLng > Double.parseDouble(hotKey.getH_lng())) {
					minLng = Double.parseDouble(hotKey.getH_lng());
				}
			}
			
			//출발지와 거리 계산에 불필요한 rawdata를 제거한 ArrayList
			ArrayList<HotPlaceVO> filteredData = new ArrayList<>();
			for(HotPlaceVO hp : rawdata) {
				double lat = Double.parseDouble(hp.getH_lat());
				double lng = Double.parseDouble(hp.getH_lng());
				
				if(lat <= maxLat && lat >= minLat) {
					if(lng <= maxLng && lng >= minLng) {
						filteredData.add(hp);
					}
				}
			}
			
			//optdata: 거리 연산을 실행할 데이터(filter or raw)
			ArrayList<HotPlaceVO> optData = new ArrayList<>();
			
			//외접사각형 영역 내 데이터가 출발지 제외 3개 미만일 경우 rawdata
			if(filteredData.size()<keys.length+3) {
				optData = rawdata;
				System.out.println("rawData 비교연산 수행 ");
			}else {
				optData = filteredData;
				System.out.println("filteredData 비교연산 수행 ");
			}
			
			for(int i=0; i<keys.length; i++) {
				System.out.println("출발지: " + keys[i]);
			}
			
			//dists: optData, 출발지간 거리를 담아두기 위한 2차원 배열 
	        double[][] dists = new double[keys.length][optData.size()];

	        for(int j=0; j<optData.size();j++) {
	        	/* lat_raw = rawdata의 경도 
	        	 * lng_raw = rawdata의 위도 
	        	 * lat_key = 출발지의 경도 
	        	 * lng_key = 출발지의 위도 
	        	 */
	        	double lat_opt=0.0;
	        	double lng_opt=0.0;
	        	double lat_key=0.0;
	        	double lng_key=0.0;

	        	//optData의 경도, 위도 입력
	        	HotPlaceVO oData = optData.get(j);
	        	lat_opt = Double.parseDouble(oData.getH_lat());
	        	lng_opt = Double.parseDouble(oData.getH_lng());

	        	//입력받은 위치의 개수만큼 출발지 lat, lng 입력  
	        	for(int i=0;i<keys.length;i++) {
	        		try {
	        			HotPlaceVO kData = biz.get1(keys[i]);
						lat_key = Double.parseDouble(kData.getH_lat());
						lng_key = Double.parseDouble(kData.getH_lng());
						//System.out.println("lat_key: "+lat_key+"입력 완료.");
						//System.out.println("lng_key: "+lng_key+"입력 완료.");
					} catch (NumberFormatException e) {
						e.printStackTrace();
					} catch (Exception e) {
						e.printStackTrace();
					}
	        		
		        	//입력받은 출발지와 갖고 있는 rawdata 거리 계산 
		        	double theta = lng_key - lng_opt;
		            double dist = Math.sin(deg2rad(lat_key)) * Math.sin(deg2rad(lat_opt)) + Math.cos(deg2rad(lat_key)) * Math.cos(deg2rad(lat_opt)) * Math.cos(deg2rad(theta));
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
	        //거리 결과 값이 NaN값 나오는 오류(자기 위치에서 자기 위치 거리 계산 케이스) 0으로 처리
	        for(int j=0; j<optData.size();j++) {
	        	for(int i=0;i<keys.length;i++) {
	        		if(Double.isNaN(dists[i][j])) {
	        			dists[i][j]=0.0;
	        		}
	        	}
	        }
	        
	        //dist 배열(출발지별 rawdata 거리) 입력 값 확인 
//	        for(int i=0;i<keys.length;i++) {
//	        	for(int j=0;j<optData.size(); j++) {
//	        		System.out.print(dists[i][j]+ " ");
//	        	}
//	        	System.out.println();
//	        }
	        
	    	//optData 요소별 각 출발지와 거리 계산
	        ArrayList<DistanceVO> distances = new ArrayList<>();
	        
	        double[] sumarr = new double[optData.size()];
	        
	        //System.out.println("optData별 avg distance");
	    	for(int i =0; i<optData.size();i++) {
	    		double sum=0.0;
	    		for(int j=0; j<keys.length;j++) {
	    			sum += dists[j][i];
	    		}
	    		DistanceVO distance = new DistanceVO();
	    		distance.setHp(optData.get(i));
	    		distance.setSum_distance(sum);
	    		distance.setAvg_distance(sum/keys.length);
	    		distances.add(distance);
	    		//System.out.println(distances.get(i).getAvg_distance()+" ");

	    	}
	    
	    	
	    	//정렬
	    	System.out.println("@@@@@@@@@@@@@@@@@@@@Before sort@@@@@@@@@@@@@@@@@@@@@@@");
	    	print(distances);
	    	System.out.println("");
	    	System.out.println("@@@@@@@@@@@@@@@@@@@@@@After sort@@@@@@@@@@@@@@@@@@@@@@@@");
	    	Collections.sort(distances);
	    	print(distances);
	    	System.out.println("");
	    	
	    	//반환할 3개 객체 담을 배열 선언 
	    	DistanceVO[] result = new DistanceVO[3];
	    	System.out.println("@@@@@@@@@@@@@@@추천 3지역@@@@@@@@@@@@@@@");
	    	
	    	//i: 결과 반환 배열 인덱스, j: 출발지 인덱스, temp: 거리계산 ArrayList 인덱스
			int temp = 0;
			//입력받은 출발지를 ArrayList에서 찾아 제거합니다.
			for(int i =0; i<keys.length; i++) {
				//입력받은 출발지의 이름과 추천받을 도착지의 이름이 같으면 ArrayList에서 제거합니다.
				while(true) {
					if(keys[i].equals(distances.get(temp).getHp().getH_name())) {
						distances.remove(distances.get(temp));
						temp = 0;
						break;
					}else {
						temp++;
					}
				}
			}
			
	    	for(int i =0; i<3; i++) {
	    		result[i] = new DistanceVO();
    			result[i] = distances.get(0);
    			System.out.println(result[i]);
    			distances.remove(distances.get(0));
	    		if(result[2]!=null) {
	    			break;
	    		}
	    	}
	    	//print(result);
	    	ArrayList<HotPlaceVO> result_list = new ArrayList<HotPlaceVO>();
	    	for(int i=0;i<3;i++) {
	    		result_list.add(result[i].getHp());
	    	}
	    	
			return result_list;
		}
		
	    // This function converts decimal degrees to radians
	    private static double deg2rad(double deg) {
	        return (deg * Math.PI / 180.0);
	    }
	     
	    // This function converts radians to decimal degrees
	    private static double rad2deg(double rad) {
	        return (rad * 180 / Math.PI);
	    }
	    //test시 객체 ArrayList을 print해주는 함수입니다.
	    public static void print(ArrayList<DistanceVO> distances) {
			for (int i = 0; i < distances.size(); i++) {
				System.out.println(distances.get(i));
			}
		}

}

