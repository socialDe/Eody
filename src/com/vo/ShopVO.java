package com.vo;


public class ShopVO {
		private int shop_no;                                                        // 장소번호
	    private String shop_number;                                                // 사업자번호
	    private String manager_id;                                                // 관리자id
	    private String shop_address;                                        // 장소주소
	    private String shop_type;                                                // 장소 유형
	    private String shop_info;                                                // 소개글
	    private String shop_time;                                                // 운영시간
	    private String h_name;                                                        // 지역 이름
	    private String shop_name;                                                // 장소 이름
	    private String shop_img1;                                                // 가게 이미지
	    private String shop_img2;                                                // 가게 이미지
	    private String shop_img3;                                                // 가게 이미지
	    private String shop_img4;                                                // 가게 이미지
	    private int shop_booking;                                        // 예약가능여부
	    private double shop_score_avg;                                        // 장소 평점 평균
	    private int shop_hits;                                                        // 장소 조회수
	    private String shop_park;                                                        // 주차장 여부
	    private String shop_phone;                                                // 장소 전화번호
	    private String origin_shop_name;                                
	    //기본 생성자
        public ShopVO() {
        }
        
        
        public ShopVO(String shop_number, String manager_id, String shop_address, String shop_type, String shop_info,
                        String shop_time, String h_name, String shop_name, String shop_img1, String shop_img2, String shop_img3,
                        String shop_img4, int shop_booking, String shop_park, String shop_phone, String origin_shop_name) {
                super();
                this.shop_number = shop_number;
                this.manager_id = manager_id;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_info = shop_info;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_booking = shop_booking;
                this.shop_park = shop_park;
                this.shop_phone = shop_phone;
                this.origin_shop_name = origin_shop_name;
        }


        public ShopVO(String shop_number, String manager_id, String shop_address, String shop_type, String shop_info,
                        String shop_time, String h_name, String shop_name, String shop_img1, String shop_img2, String shop_img3,
                        String shop_img4, int shop_booking, String shop_park, String shop_phone) {
                super();
                this.shop_number = shop_number;
                this.manager_id = manager_id;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_info = shop_info;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_booking = shop_booking;
                this.shop_park = shop_park;
                this.shop_phone = shop_phone;
        }


        public ShopVO(int shop_no, String manager_id, String shop_address, String shop_type, String shop_info,
                        String shop_time, String h_name, String shop_name, String shop_img1, String shop_img2, String shop_img3,
                        String shop_img4, int shop_booking, String shop_park, String shop_phone) {
                super();
                this.shop_no = shop_no;
                this.manager_id = manager_id;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_info = shop_info;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_booking = shop_booking;
                this.shop_park = shop_park;
                this.shop_phone = shop_phone;
        }


        public ShopVO(String manager_id, String shop_address, String shop_type, String shop_time, String h_name,
                        String shop_name, String shop_img1, String shop_img2, String shop_img3, String shop_img4,
                        double shop_score_avg, int shop_hits) {
                this.manager_id = manager_id;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_score_avg = shop_score_avg;
                this.shop_hits = shop_hits;
        }

        
        public ShopVO(String shop_number, String shop_address, String shop_type, String shop_info, String shop_time,
                        String h_name, String shop_name, String shop_img1, String shop_img2, String shop_img3, String shop_img4,
                        int shop_booking, String shop_park, String shop_phone) {
                super();
                this.shop_number = shop_number;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_info = shop_info;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_booking = shop_booking;
                this.shop_park = shop_park;
                this.shop_phone = shop_phone;
        }



        
        public ShopVO(String shop_number, String shop_address, String shop_type, String shop_info, String shop_time,
                        String h_name, String shop_name, String shop_img1, String shop_img2, String shop_img3, String shop_img4,
                        int shop_booking, double shop_score_avg, String shop_park, String shop_phone) {
                this.shop_number = shop_number;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_info = shop_info;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_booking = shop_booking;
                this.shop_score_avg = shop_score_avg;
                this.shop_park = shop_park;
                this.shop_phone = shop_phone;
        }



        

        public ShopVO(int shop_no, String shop_number, String manager_id, String shop_address, String shop_type,
                        String shop_info, String shop_time, String h_name, String shop_name, String shop_img1, String shop_img2,
                        String shop_img3, String shop_img4, int shop_booking, double shop_score_avg, int shop_hits, String shop_park,
                        String shop_phone) {
                this.shop_no = shop_no;
                this.shop_number = shop_number;
                this.manager_id = manager_id;
                this.shop_address = shop_address;
                this.shop_type = shop_type;
                this.shop_info = shop_info;
                this.shop_time = shop_time;
                this.h_name = h_name;
                this.shop_name = shop_name;
                this.shop_img1 = shop_img1;
                this.shop_img2 = shop_img2;
                this.shop_img3 = shop_img3;
                this.shop_img4 = shop_img4;
                this.shop_booking = shop_booking;
                this.shop_score_avg = shop_score_avg;
                this.shop_hits = shop_hits;
                this.shop_park = shop_park;
                this.shop_phone = shop_phone;
        }

        public String getOrigin_shop_name() {
                return origin_shop_name;
        }


        public void setOrigin_shop_name(String origin_shop_name) {
                this.origin_shop_name = origin_shop_name;
        }


        public int getShop_no() {
                return shop_no;
        }


        public void setShop_no(int shop_no) {
                this.shop_no = shop_no;
        }


        public String getShop_number() {
                return shop_number;
        }


        public void setShop_number(String shop_number) {
                this.shop_number = shop_number;
        }


        public String getManager_id() {
                return manager_id;
        }


        public void setManager_id(String manager_id) {
                this.manager_id = manager_id;
        }


        public String getShop_address() {
                return shop_address;
        }


        public void setShop_address(String shop_address) {
                this.shop_address = shop_address;
        }


        public String getShop_type() {
                return shop_type;
        }


        public void setShop_type(String shop_type) {
                this.shop_type = shop_type;
        }


        public String getShop_info() {
                return shop_info;
        }


        public void setShop_info(String shop_info) {
                this.shop_info = shop_info;
        }


        public String getShop_time() {
                return shop_time;
        }


        public void setShop_time(String shop_time) {
                this.shop_time = shop_time;
        }


        public String getH_name() {
                return h_name;
        }


        public void setH_name(String h_name) {
                this.h_name = h_name;
        }


        public String getShop_name() {
                return shop_name;
        }


        public void setShop_name(String shop_name) {
                this.shop_name = shop_name;
        }


        public String getShop_img1() {
                return shop_img1;
        }


        public void setShop_img1(String shop_img1) {
                this.shop_img1 = shop_img1;
        }


        public String getShop_img2() {
                return shop_img2;
        }


        public void setShop_img2(String shop_img2) {
                this.shop_img2 = shop_img2;
        }


        public String getShop_img3() {
                return shop_img3;
        }


        public void setShop_img3(String shop_img3) {
                this.shop_img3 = shop_img3;
        }


        public String getShop_img4() {
                return shop_img4;
        }


        public void setShop_img4(String shop_img4) {
                this.shop_img4 = shop_img4;
        }


        public int getShop_booking() {
                return shop_booking;
        }


        public void setShop_booking(int shop_booking) {
                this.shop_booking = shop_booking;
        }


        public double getShop_score_avg() {
                return shop_score_avg;
        }


        public void setShop_score_avg(double shop_score_avg) {
                this.shop_score_avg = shop_score_avg;
        }


        public int getShop_hits() {
                return shop_hits;
        }


        public void setShop_hits(int shop_hits) {
                this.shop_hits = shop_hits;
        }


        public String getShop_park() {
                return shop_park;
        }


        public void setShop_park(String shop_park) {
                this.shop_park = shop_park;
        }


        public String getShop_phone() {
                return shop_phone;
        }


        public void setShop_phone(String shop_phone) {
                this.shop_phone = shop_phone;
        }


        @Override
        public String toString() {
                return "ShopVO [shop_no=" + shop_no + ", shop_number=" + shop_number + ", manager_id=" + manager_id
                                + ", shop_address=" + shop_address + ", shop_type=" + shop_type + ", shop_info=" + shop_info
                                + ", shop_time=" + shop_time + ", h_name=" + h_name + ", shop_name=" + shop_name + ", shop_img1="
                                + shop_img1 + ", shop_img2=" + shop_img2 + ", shop_img3=" + shop_img3 + ", shop_img4=" + shop_img4
                                + ", shop_booking=" + shop_booking + ", shop_score_avg=" + shop_score_avg + ", shop_hits=" + shop_hits
                                + ", shop_park=" + shop_park + ", shop_phone=" + shop_phone + ", origin_shop_name=" + origin_shop_name
                                + "]";
        }

        
}
