package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.ShopVO;
@Service("shopbiz")
public class ShopBiz implements Biz<String,Integer, ShopVO> {

        
        @Resource(name="shopdao")
        Dao<String,Integer,ShopVO> dao;
        

        @Override
        public void register(ShopVO v) throws Exception {
                dao.insert(v);
        }

        @Override
        public void remove1(String k) throws Exception {
                int result = 0;
                result = dao.delete1(k);
                if(result == 0) {
                        throw new Exception();
                }
        }

        @Override
        public void modify(ShopVO v) throws Exception {
               dao.update(v);
 
        }

        @Override
        public ShopVO get1(String k) throws Exception {
                return dao.select1(k);
        }

        @Override
        public ArrayList<ShopVO> get() throws Exception {
                return dao.selectall();
        }

        @Override
        public ArrayList<ShopVO> shop_get(String k) throws Exception {
                return dao.shop_select(k);
        }

		@Override
		public void remove2(Integer k) throws Exception {
			int result=0;
			result = dao.delete2(k);
			if(result==0) {
				throw new Exception();
			}
		}

		@Override
		public ShopVO get2(Integer k) throws Exception {
			return dao.select2(k);
		}

		@Override
		public ArrayList<ShopVO> bookingget_shop(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ShopVO> bookingget_searcher(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ShopVO> review_get(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void shop_hitcnt(String k) throws Exception {
			dao.shop_hitcnt(k);
			
		}

		@Override
		public void shop_score_avg(String k) throws Exception {
		   int result = 0;
           result = dao.shop_score_avg(k);
           if(result == 0) {
           throw new Exception();
           }
		}

		@Override
		public ArrayList<ShopVO> review_select(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public ArrayList<ShopVO> shop_hotplace_get(String k) throws Exception {
			return dao.shop_hotplace_select(k);
		}

		@Override
		public ArrayList<ShopVO> bookingupdate_reviewstat(String k) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

}
