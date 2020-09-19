package com.vo;

public class DistanceVO implements Comparable<DistanceVO>{
	private HotPlaceVO hp;
	private double sum_distance;
	private double avg_distance;
	
	public DistanceVO(HotPlaceVO hp, double sum_distance, double avg_distance) {
		super();
		this.hp = hp;
		this.sum_distance = sum_distance;
		this.avg_distance = avg_distance;
	}
	public DistanceVO(HotPlaceVO hp) {
		super();
		this.hp = hp;
	}
	public DistanceVO(HotPlaceVO hp, double sum_distance) {
		super();
		this.hp = hp;
		this.sum_distance = sum_distance;
	}
	
	public DistanceVO() {
		super();
	}
	public HotPlaceVO getHp() {
		return hp;
	}
	public void setHp(HotPlaceVO hp) {
		this.hp = hp;
	}
	public double getSum_distance() {
		return sum_distance;
	}
	public void setSum_distance(double sum_distance) {
		this.sum_distance = sum_distance;
	}
	public double getAvg_distance() {
		return avg_distance;
	}
	public void setAvg_distance(double avg_distance) {
		this.avg_distance = avg_distance;
	}
	@Override
	public String toString() {
		return "DistanceVO [hp=" + hp + ", sum_distance=" + sum_distance + ", avg_distance=" + avg_distance + "]";
	}
	@Override
	public int compareTo(DistanceVO o) {
		if (this.avg_distance < o.avg_distance) {
			return -1;
		} else if (this.avg_distance == o.avg_distance) {
			return 0;
		} else {
			return 1;
		}
	}
	
	
	

}
