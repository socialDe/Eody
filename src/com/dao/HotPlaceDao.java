package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.HotPlaceVO;

@Repository("hdao")
public interface HotPlaceDao extends Dao<String,Integer, HotPlaceVO> {

}
