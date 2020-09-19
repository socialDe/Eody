package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.SearcherVO;
@Repository("sdao")
public interface SearcherDao extends Dao<String,Integer,SearcherVO> {

        
}
