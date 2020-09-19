package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.ShopVO;
@Repository("shopdao")
public interface ShopDao extends Dao<String,Integer, ShopVO> {

}
