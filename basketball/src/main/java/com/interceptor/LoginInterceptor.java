package com.interceptor;


import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;


public class LoginInterceptor implements HandlerInterceptor {

    /**
     * Handler执行完成之后调用这个方法
     */
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception exc)
            throws Exception {

    }

    /**
     * Handler执行之后，ModelAndView返回之前调用这个方法
     */
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object handler, ModelAndView modelAndView) throws Exception {
    }

    /**
     * Handler执行之前调用这个方法
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {

        String requestUrl=request.getServletPath();
        System.out.println(requestUrl);

        //判断当前时间是否在活动规定的时间内
        //早8点到晚18点才能进入系统
        Calendar cal = Calendar.getInstance();// 当前日期
        int hour = cal.get(Calendar.HOUR_OF_DAY);// 获取小时
        int minute = cal.get(Calendar.MINUTE);// 获取分钟
        int minuteOfDay = hour * 60 + minute;// 当前时间的分钟数
        final int start = 9* 60;// 起始时间 08:00的分钟数
        final int end = 18 * 60;// 结束时间 18:00的分钟数
        if (minuteOfDay >= start && minuteOfDay <= end) {
            return true;
        } else{
            System.out.println("不在范围内");
            //response.sendRedirect("/activity/out");
            if(requestUrl.equals("/activity/index")){
                request.getRequestDispatcher("/out").forward(request, response);//转发到不在活动范围内页面
            }else{
                request.getRequestDispatcher("/out2").forward(request, response);//转发到不在活动范围内页面
            }
            return  false;
        }
    }


}
