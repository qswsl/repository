package com.interceptor;


import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserInterceptor implements HandlerInterceptor {


     public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

                Object user = request.getSession().getAttribute("user");
                if (user == null) {
                         response.sendRedirect("/basketball/login");
                         return false;
                     }

                 return true;
             }


     public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

            }


     public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

            }


}
