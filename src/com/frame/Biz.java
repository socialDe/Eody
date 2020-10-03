package com.frame;

import java.util.ArrayList;

import org.springframework.transaction.annotation.Transactional;

import com.vo.SearcherVO;
import com.vo.ShopVO;
public interface Biz<K1, K2, V> { //K1: STRING, K2: INTEGER
        @Transactional
        public void register(V v) throws Exception;
        @Transactional
        public void remove1(K1 k) throws Exception;
        @Transactional
        public void remove2(K2 k) throws Exception;
        @Transactional
        public void modify(V v) throws Exception;
        
        public V get1(K1 k) throws Exception;
        public V get2(K2 k) throws Exception;
        public ArrayList<V> get() throws Exception;
        public ArrayList<V> shop_get(K1 k) throws Exception;
        public ArrayList<V> bookingget_shop(K1 k) throws Exception;             //가게 이름으로 예약리스트 출력 
        public ArrayList<V> bookingget_searcher(K1 k) throws Exception;			//searcher id로 예약 리스트 출력 
        public ArrayList<V> review_get(K1 k) throws Exception;
        public ArrayList<V> shop_hotplace_get(K1 k) throws Exception;           //핫플 기준으로 가게 출력 
        public void shop_hitcnt(K1 k) throws Exception;                         //가게 조회수 
        public void shop_score_avg(K1 k) throws Exception;
        public ArrayList<V> review_select(K1 k) throws Exception;
        
}