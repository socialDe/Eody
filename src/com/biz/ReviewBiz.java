package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.ManagerVO;
import com.vo.ReviewVO;
@Service("rbiz")
public class ReviewBiz implements Biz<String,Integer,ReviewVO> {

        
        @Resource(name="rdao")
        Dao<String,Integer,ReviewVO> dao;
        
        @Override
        public void register(ReviewVO v) throws Exception {
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
        public void modify(ReviewVO v) throws Exception {
                dao.update(v);
        }

        @Override
        public ReviewVO get1(String k) throws Exception {
                return dao.select1(k);
        }

        @Override
        public ArrayList<ReviewVO> get() throws Exception {
                return dao.selectall();
        }

		@Override
		public void remove2(Integer k) throws Exception {
			// TODO Auto-generated method stub
			
		}

		@Override
		public ReviewVO get2(Integer k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ReviewVO> shop_get(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ReviewVO> bookingget_shop(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ReviewVO> bookingget_searcher(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ReviewVO> review_get(String k) throws Exception {
			return dao.review_select(k);
		}

		@Override
		public ArrayList<ReviewVO> shop_hotplace_get(String k) throws Exception {
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
		public ArrayList<ReviewVO> review_select(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ReviewVO> bookingupdate_reviewstat(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}



}
