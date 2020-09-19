package com.handle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vo.SearcherVO;

public class test {
    // 회원가입 버튼 서블릿
    @RequestMapping("/searcheraddimpl.mc")
    public ModelAndView searcheraddimpl(ModelAndView mv, SearcherVO searcher, String user_birth_year, String user_birth_month, String user_birth_day) {
            try {
                    // search_birthday 값 셋팅
                    searcher.setSearcher_birthday(user_birth_year + "-" + user_birth_month + "-" + user_birth_day);
                    //biz.register(searcher);
                    mv.setViewName("searcher/registerok");
            } catch (Exception e) {
                    mv.setViewName("redirect:register.mc");
                    e.printStackTrace();
            }
            return mv;
    }
}
