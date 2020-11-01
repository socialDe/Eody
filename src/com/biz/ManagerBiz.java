package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.ManagerVO;
@Service("mbiz")
public class ManagerBiz implements Biz<String, Integer, ManagerVO> {

        
        @Resource(name="mdao")
        Dao<String, Integer, ManagerVO> dao;
        
        @Override
        public void register(ManagerVO v) throws Exception {
                dao.insert(v);
        }

        @Override
        public void remove1(String k) throws Exception {
                int result = dao.delete1(k);
                if(result == 0) {
                        throw new Exception();
                }
        }

        @Override
        public void modify(ManagerVO v) throws Exception {
                dao.update(v);
        }

        @Override
        public ManagerVO get1(String k) throws Exception {
                return dao.select1(k);
        }

        @Override
        public ArrayList<ManagerVO> get() throws Exception {
                return dao.selectall();
        }


                @Override
                public ArrayList<ManagerVO> shop_get(String k) throws Exception {
                        // TODO Auto-generated method stub
                        return null;
                }

                @Override
                public ArrayList<ManagerVO> bookingget_shop(String k) throws Exception {
                        // TODO Auto-generated method stub
                        return null;
                }

                @Override
                public void remove2(Integer k) throws Exception {
                        dao.delete2(k);
                        
                }

                @Override
                public ManagerVO get2(Integer k) throws Exception {
                        return dao.select2(k);
                }

				@Override
				public ArrayList<ManagerVO> bookingget_searcher(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}

				@Override
				public ArrayList<ManagerVO> review_get(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}

				@Override
				public ArrayList<ManagerVO> shop_hotplace_get(String k) throws Exception {
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
				public ArrayList<ManagerVO> review_select(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}

				@Override
				public ArrayList<ManagerVO> bookingupdate_reviewstat(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}

				@Override
				public void update_reviewstat2(ManagerVO v) throws Exception {
					// TODO Auto-generated method stub
					
				}


}

