package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.BookingVO;

@Service("bookingbiz")
public class BookingBiz implements Biz<String, Integer, BookingVO> {

	@Resource(name = "bookingdao")
	Dao<String, Integer, BookingVO> dao;

	@Override
	public void register(BookingVO v) throws Exception {
		dao.insert(v);
	}
	
	@Override
	public void remove1(String k) throws Exception {
		int result = dao.delete1(k);
		if (result == 0) {
			dao.delete1(k);
		}
	}

	@Override
	public void modify(BookingVO v) throws Exception {
		int result = dao.update(v);
		if(result ==0) {
			throw new Exception();
		}
	}

	@Override
	public BookingVO get1(String k) throws Exception {
		return dao.select1(k);
	}

	@Override
	public ArrayList<BookingVO> get() throws Exception {
		return dao.selectall();
	}

	@Override
	public ArrayList<BookingVO> shop_get(String k) throws Exception {
		return null;
	}

	@Override
	public ArrayList<BookingVO> bookingget_shop(String k) throws Exception {
		return dao.bookingselect_shop(k);
	}

	@Override
	public void remove2(Integer k) throws Exception {
		int result = dao.delete2(k);
		if (result == 0) {
			dao.delete2(k);
		}

	}

	@Override
	public BookingVO get2(Integer k) throws Exception {
		return dao.select2(k);

	}

	@Override
	public ArrayList<BookingVO> bookingget_searcher(String k) throws Exception {
		return dao.bookingget_searcher(k);
	}

	@Override
	public ArrayList<BookingVO> review_get(String k) throws Exception {
		return null;
	}

	@Override
	public ArrayList<BookingVO> shop_hotplace_get(String k) throws Exception {
		return null;
	}

	@Override
	public void shop_hitcnt(String k) throws Exception {
	}

	@Override
	public void shop_score_avg(String k) throws Exception {

	}

	@Override
	public ArrayList<BookingVO> review_select(String k) throws Exception {
		return null;
	}

	@Override
	public ArrayList<BookingVO> bookingupdate_reviewstat(String k) throws Exception {
		return dao.bookingupdate_reviewstat(k);
	}

	@Override
	public void update_reviewstat2(BookingVO v) throws Exception {
		int result = dao.update_reviewstat2(v);
		if(result ==0) {
			throw new Exception();
		}
		
	}

}
