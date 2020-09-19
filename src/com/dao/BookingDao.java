package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.BookingVO;
@Repository("bookingdao")
public interface BookingDao extends Dao<String, Integer, BookingVO> {

}