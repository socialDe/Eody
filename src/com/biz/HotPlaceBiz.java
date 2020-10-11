package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.HotPlaceVO;
import com.vo.SearcherVO;

@Service("hbiz")
public class HotPlaceBiz implements Biz<String,Integer,HotPlaceVO> {
	
	@Resource(name="hdao")
	Dao<String, Integer, HotPlaceVO> dao;
	
	@Override
	public void register(HotPlaceVO v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove1(String k) throws Exception {
		int result =0;
		result=dao.delete1(k);
		if(result==0) {
			throw new Exception();
		}
	}

	@Override
	public void modify(HotPlaceVO v) throws Exception {
		int result =0;
		result=dao.update(v);
		if(result==0) {
			throw new Exception();
		}
	}

	@Override
	public HotPlaceVO get1(String k) throws Exception {
		return dao.select1(k);
	}

	@Override
	public ArrayList<HotPlaceVO> get() throws Exception {
		return dao.selectall();
	}

	@Override
	public ArrayList<HotPlaceVO> shop_get(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove2(Integer k) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public HotPlaceVO get2(Integer k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HotPlaceVO> bookingget_shop(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HotPlaceVO> bookingget_searcher(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HotPlaceVO> review_get(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HotPlaceVO> shop_hotplace_get(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void shop_hitcnt(String k) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void shop_score_avg(String k) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<HotPlaceVO> review_select(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HotPlaceVO> bookingupdate_reviewstat(String k) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
