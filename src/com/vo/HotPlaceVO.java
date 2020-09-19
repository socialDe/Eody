package com.vo;

import java.io.Serializable;

public class HotPlaceVO implements Serializable{
	private int h_no;
	private String h_name;
	private String h_lat;
	private String h_lng;
	private String h_img;
	public HotPlaceVO() {
		super();
	}
	public HotPlaceVO(int h_no, String h_name, String h_lat, String h_lng, String h_img) {
		super();
		this.h_no = h_no;
		this.h_name = h_name;
		this.h_lat = h_lat;
		this.h_lng = h_lng;
		this.h_img = h_img;
	}
	public HotPlaceVO(String h_name, String h_lat, String h_lng, String h_img) {
		super();
		this.h_name = h_name;
		this.h_lat = h_lat;
		this.h_lng = h_lng;
		this.h_img = h_img;
	}
	public HotPlaceVO(int h_no, String h_name, String h_lat, String h_lng) {
		super();
		this.h_no = h_no;
		this.h_name = h_name;
		this.h_lat = h_lat;
		this.h_lng = h_lng;
	}
	public HotPlaceVO(String h_name, String h_lat, String h_lng) {
		super();
		this.h_name = h_name;
		this.h_lat = h_lat;
		this.h_lng = h_lng;
	}

	
	public int getH_no() {
		return h_no;
	}
	public void setH_no(int h_no) {
		this.h_no = h_no;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_lat() {
		return h_lat;
	}
	public void setH_lat(String h_lat) {
		this.h_lat = h_lat;
	}
	public String getH_lng() {
		return h_lng;
	}
	public void setH_lng(String h_lng) {
		this.h_lng = h_lng;
	}
	public String getH_img() {
		return h_img;
	}
	public void setH_img(String h_img) {
		this.h_img = h_img;
	}
	@Override
	public String toString() {
		return "HotPlaceVO [h_no=" + h_no + ", h_name=" + h_name + ", h_lat=" + h_lat + ", h_lng=" + h_lng + ", h_img="
				+ h_img + "]";
	}
}

