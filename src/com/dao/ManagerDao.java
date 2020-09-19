package com.dao;

import org.springframework.stereotype.Repository;

import com.frame.Dao;
import com.vo.ManagerVO;
@Repository("mdao")
public interface ManagerDao extends Dao<String,Integer, ManagerVO> {

        
}
