package com.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.frame.Biz;
import com.frame.Dao;
import com.vo.SearcherVO;
@Service("sbiz")
public class SearcherBiz implements Biz<String, Integer, SearcherVO> {

        
        @Resource(name="sdao")
        Dao<String, Integer, SearcherVO> dao;
        
        @Override
        public void register(SearcherVO v) throws Exception {
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
        public void modify(SearcherVO v) throws Exception {
                dao.update(v);
        }

        @Override
        public SearcherVO get1(String k) throws Exception {
                return dao.select1(k);
        }

        @Override
        public ArrayList<SearcherVO> get() throws Exception {
                return dao.selectall();
        }


                @Override
                public ArrayList<SearcherVO> shop_get(String k) throws Exception {
                        // TODO Auto-generated method stub
                        return null;
                }

                @Override
                public ArrayList<SearcherVO> bookingget_shop(String k) throws Exception {
                        // TODO Auto-generated method stub
                        return null;
                }

                @Override
                public void remove2(Integer k) throws Exception {
                        dao.delete2(k);
                }

                @Override
                public SearcherVO get2(Integer k) throws Exception {
                        return dao.select2(k);
                }

				@Override
				public ArrayList<SearcherVO> bookingget_searcher(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}

				@Override
				public ArrayList<SearcherVO> review_get(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}

				@Override
				public ArrayList<SearcherVO> shop_hotplace_get(String k) throws Exception {
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
				public ArrayList<SearcherVO> review_select(String k) throws Exception {
					// TODO Auto-generated method stub
					return null;
				}


}
