package com.vo;

public class BookingVO {
        public int booking_no;                                                // sequence num
        public String searcher_name;                                // 사용자 이름
        public String searcher_id;                                        // 사용자 id
        public String shop_name;                                        // 가게 이름
        public String booking_date;                                        // 예약 날짜
        public String booking_pp;                                        // 인원 수                
        public String booking_msg;                                        // 전달 메세지                
        public String searcher_phone;                                // 사용자 전화번호
        public String booking_stat;                                        // 예약현황                        
        public String review_stat;                                        // 리뷰현황                
        public String shop_img;                                                // 가게 이미지        
        
         
        public BookingVO() {
        }
        public BookingVO(int booking_no, String searcher_name, String searcher_id, String shop_name, String booking_date,
                        String booking_pp, String booking_msg, String searcher_phone, String booking_stat, String review_stat,
                        String shop_img) {
                this.booking_no = booking_no;
                this.searcher_name = searcher_name;
                this.searcher_id = searcher_id;
                this.shop_name = shop_name;
                this.booking_date = booking_date;
                this.booking_pp = booking_pp;
                this.booking_msg = booking_msg;
                this.searcher_phone = searcher_phone;
                this.booking_stat = booking_stat;
                this.review_stat = review_stat;
                this.shop_img = shop_img;
        }
        
        
        public BookingVO(String searcher_name, String searcher_id, String shop_name, String booking_date, String booking_pp,
                        String booking_msg, String searcher_phone, String booking_stat, String review_stat, String shop_img) {
                this.searcher_name = searcher_name;
                this.searcher_id = searcher_id;
                this.shop_name = shop_name;
                this.booking_date = booking_date;
                this.booking_pp = booking_pp;
                this.booking_msg = booking_msg;
                this.searcher_phone = searcher_phone;
                this.booking_stat = booking_stat;
                this.review_stat = review_stat;
                this.shop_img = shop_img;
        }
        public int getBooking_no() {
                return booking_no;
        }
        public void setBooking_no(int booking_no) {
                this.booking_no = booking_no;
        }
        public String getsearcher_name() {
                return searcher_name;
        }
        public void setsearcher_name(String searcher_name) {
                this.searcher_name = searcher_name;
        }
        public String getsearcher_id() {
                return searcher_id;
        }
        public void setsearcher_id(String searcher_id) {
                this.searcher_id = searcher_id;
        }
        public String getShop_name() {
                return shop_name;
        }
        public void setShop_name(String shop_name) {
                this.shop_name = shop_name;
        }
        public String getBooking_date() {
                return booking_date;
        }
        public void setBooking_date(String booking_date) {
                this.booking_date = booking_date;
        }
        public String getBooking_pp() {
                return booking_pp;
        }
        public void setBooking_pp(String booking_pp) {
                this.booking_pp = booking_pp;
        }
        public String getBooking_msg() {
                return booking_msg;
        }
        public void setBooking_msg(String booking_msg) {
                this.booking_msg = booking_msg;
        }
        public String getsearcher_phone() {
                return searcher_phone;
        }
        public void setsearcher_phone(String searcher_phone) {
                this.searcher_phone = searcher_phone;
        }
        public String getBooking_stat() {
                return booking_stat;
        }
        public void setBooking_stat(String booking_stat) {
                this.booking_stat = booking_stat;
        }
        public String getReview_stat() {
                return review_stat;
        }
        public void setReview_stat(String review_stat) {
                this.review_stat = review_stat;
        }
        public String getShop_img() {
                return shop_img;
        }
        public void setShop_img(String shop_img) {
                this.shop_img = shop_img;
        }
        @Override
        public String toString() {
                return "BookingVO [booking_no=" + booking_no + ", searcher_name=" + searcher_name + ", searcher_id=" + searcher_id
                                + ", shop_name=" + shop_name + ", booking_date=" + booking_date + ", booking_pp=" + booking_pp
                                + ", booking_msg=" + booking_msg + ", searcher_phone=" + searcher_phone + ", booking_stat=" + booking_stat
                                + ", review_stat=" + review_stat + ", shop_img=" + shop_img + "]";
        }
        
        
}
