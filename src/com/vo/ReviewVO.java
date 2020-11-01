package com.vo;

import java.io.Serializable;
import java.util.Date;

public class ReviewVO implements Serializable {
        private int review_no;
        private Date review_date;
        private String review_contents;
        private String review_image1;
        private String review_image2;
        private String review_image3;
        private int booking_no;
        private String shop_name;
        private String review_name;
        private double shop_score;
        public ReviewVO() {
        }
        public ReviewVO(int review_no, Date review_date, String review_contents, String review_image1, String review_image2,
                        String review_image3, String shop_name, String review_name, double shop_score) {
                this.review_no = review_no;
                this.review_date = review_date;
                this.review_contents = review_contents;
                this.review_image1 = review_image1;
                this.review_image2 = review_image2;
                this.review_image3 = review_image3;
                this.shop_name = shop_name;
                this.review_name = review_name;
                this.shop_score = shop_score;
        }
        public ReviewVO(String review_contents, String review_image1, String review_image2, String review_image3,
                        String shop_name, String review_name, double shop_score) {
                this.review_contents = review_contents;
                this.review_image1 = review_image1;
                this.review_image2 = review_image2;
                this.review_image3 = review_image3;
                this.shop_name = shop_name;
                this.review_name = review_name;
                this.shop_score = shop_score;
        }
        public ReviewVO(String review_contents, String review_image1, String review_image2, String review_image3,
                        String review_name, double shop_score) {
                this.review_contents = review_contents;
                this.review_image1 = review_image1;
                this.review_image2 = review_image2;
                this.review_image3 = review_image3;
                this.review_name = review_name;
                this.shop_score = shop_score;
        }
        
        public ReviewVO(int review_no, Date review_date, String review_contents, String review_image1,
				String review_image2, String review_image3, int booking_no, String shop_name, String review_name,
				double shop_score) {
			super();
			this.review_no = review_no;
			this.review_date = review_date;
			this.review_contents = review_contents;
			this.review_image1 = review_image1;
			this.review_image2 = review_image2;
			this.review_image3 = review_image3;
			this.booking_no = booking_no;
			this.shop_name = shop_name;
			this.review_name = review_name;
			this.shop_score = shop_score;
		}
        
        
		public int getBooking_no() {
			return booking_no;
		}
		public void setBooking_no(int booking_no) {
			this.booking_no = booking_no;
		}
		public int getReview_no() {
                return review_no;
        }
        public void setReview_no(int review_no) {
                this.review_no = review_no;
        }
        public Date getReview_date() {
                return review_date;
        }
        public void setReview_date(Date review_date) {
                this.review_date = review_date;
        }
        public String getReview_contents() {
                return review_contents;
        }
        public void setReview_contents(String review_contents) {
                this.review_contents = review_contents;
        }
        public String getReview_image1() {
                return review_image1;
        }
        public void setReview_image1(String review_image1) {
                this.review_image1 = review_image1;
        }
        public String getReview_image2() {
                return review_image2;
        }
        public void setReview_image2(String review_image2) {
                this.review_image2 = review_image2;
        }
        public String getReview_image3() {
                return review_image3;
        }
        public void setReview_image3(String review_image3) {
                this.review_image3 = review_image3;
        }
        public String getShop_name() {
                return shop_name;
        }
        public void setShop_name(String shop_name) {
                this.shop_name = shop_name;
        }
        public String getReview_name() {
                return review_name;
        }
        public void setReview_name(String review_name) {
                this.review_name = review_name;
        }
        public double getShop_score() {
                return shop_score;
        }
        public void setShop_score(double shop_score) {
                this.shop_score = shop_score;
        }
		@Override
		public String toString() {
			return "ReviewVO [review_no=" + review_no + ", review_date=" + review_date + ", review_contents="
					+ review_contents + ", review_image1=" + review_image1 + ", review_image2=" + review_image2
					+ ", review_image3=" + review_image3 + ", booking_no=" + booking_no + ", shop_name=" + shop_name
					+ ", review_name=" + review_name + ", shop_score=" + shop_score + "]";
		}
       
        
        

}