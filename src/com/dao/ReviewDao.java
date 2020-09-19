package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.ReviewVO;
@Repository("rdao")
public interface ReviewDao extends Dao<String,Integer, ReviewVO> {

        
}
