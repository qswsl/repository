package com.controller;

import com.alibaba.fastjson.JSONObject;
import com.bean.User;
import com.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by a on 2018/2/24.
 *
 * login
 */

@Controller
public class LoginController {

    @Autowired
    private MainService mainService;
    /**
     * 初始化登陆页面
     */
    @RequestMapping(value = "/login")
    public String login(){

        return "login";

    }



    @RequestMapping(value = "/ceshi")
    public String ceshi(){

        return "ceshi";

    }

    /**
     *  验证登录
     */

    @RequestMapping(value = "/logging",method = RequestMethod.POST)
    public String loginPost(String name, String pwd, HttpSession session, ModelMap modelMap) {

        try{
            User user= mainService.getUser(name,pwd);
            if(user!=null){
                // 设置session
                session.setAttribute("user", name);
                return "redirect:/user/index";
            }else{
                modelMap.addAttribute("msg","抱歉！账号或者密码不正确");
                return "login";
            }
        }catch(Exception e){
            e.printStackTrace();
            modelMap.addAttribute("msg","系统错误");
            return "login";
        }

    }

    /**
     *  退出登录
     */
    @RequestMapping("/logout")

    public String logout(HttpSession session,HttpServletResponse response) {
        // 移除session
        session.removeAttribute("user");
        return "redirect:/login";
    }


    /**
     *  注册
     */
    @RequestMapping("/reg")

    public String reg(HttpSession session,HttpServletResponse response) {

        return "reg";
    }


    @RequestMapping("/addReg")
    @ResponseBody
    public String addReg(String name,String pwd) {

        try{
            mainService.insertUser(name,pwd);
            return "success";

        }catch (Exception e){
            e.printStackTrace();
            return "false";
        }

    }
}
