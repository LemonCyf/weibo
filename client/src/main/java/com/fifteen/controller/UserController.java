package com.fifteen.controller;

import com.fifteen.pojo.User;
import com.fifteen.service.UserService;
import com.fifteen.utils.ResponseModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    @ResponseBody
    public ResponseModel register(String phone,String password){
        boolean success = userService.register(phone,password);
        if(success){
            return ResponseModel.createSuccess();
        }
        return ResponseModel.createError();
//        return "/jsp/register";

    }

    @RequestMapping("/goToRegister")
    public String register(){
        return "/jsp/register";
    }


    @RequestMapping("/login")
    public String login(
            @RequestParam(value = "phone",required = false)String phone,
            @RequestParam(value = "password",required = false)String password,
            @RequestParam(value = "rememberMe",required = false)String rememberMe,
            HttpSession session,
            HttpServletResponse response){
        User user=userService.login(phone,password);
        if(user==null){
            session.setAttribute("warn","用户名或密码错误, 请重新输入！");
            return "/jsp/login";
        }else{
            if ("checked".equals(rememberMe)){
                Cookie phoneCookie=new Cookie("phone",phone);
                phoneCookie.setMaxAge(60*60*24*365);
                Cookie passwordCookie=new Cookie("password",password);
                passwordCookie.setMaxAge(60*60*24*365);
                response.addCookie(phoneCookie);
                response.addCookie(passwordCookie);
            }
            session.setAttribute("user",user);
            return "redirect:/index.do";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/index.do";
    }
}