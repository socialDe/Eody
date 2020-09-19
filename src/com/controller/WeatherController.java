package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WeatherController {

        @RequestMapping("/weather.mc")
        protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");                
                String urlstr = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?serviceKey=gFar4DZvriJ4KIuxYxjE6U3gUs1Ncc%2Bkth0aR%2BarRua2Utd69J6IkDrsonuJ4dattUxu5BMwKIgtcJxfZdSZOw%3D%3D&pageNo=1&numOfRows=10&dataType=JSON&base_date="+date.format(new Date())+"&base_time=0800&nx=60&ny=125&";
                String jsonstr = getRequest(urlstr, "");
                response.setContentType("test/json;charset=utf-8");
                PrintWriter out = response.getWriter();
                out.print(jsonstr);

        }


        public static String getRequest(String url, String parameter) {
                try {
                        String param = "{\"param\":\"" + parameter + "\"} ";
                        // url를 인스턴스를 만든다.
                        URL uri = new URL(url);
                        // HttpURLConnection 인스턴스를 가져온다.
                        HttpURLConnection connection = (HttpURLConnection) uri.openConnection();
                        // Web Method는 Post 타입
                        connection.setRequestMethod("GET");
                        // 요청한다. 200이면 정상이다.
                        int code = connection.getResponseCode();
                        if (code == 200) {
                                // 응답 온 body 내용의 stream을 받는다.
                                try (BufferedReader input = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
                                        String line;
                                        StringBuffer buffer = new StringBuffer();
                                        while ((line = input.readLine()) != null) {
                                                buffer.append(line);
                                        }
                                        return buffer.toString();
                                }
                        }
                        return code + "";
                } catch (Throwable e) {
                        throw new RuntimeException(e);
                }
        }
}