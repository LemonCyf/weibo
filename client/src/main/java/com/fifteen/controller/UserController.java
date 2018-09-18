package com.fifteen.controller;

import com.fifteen.pojo.User;
import com.fifteen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/goToRegister")
    public String goToRegister(){
        return "/jsp/register";
    }

    @RequestMapping("/login")
    public String login(
//            @RequestParam(name = "mailbox")String mailbox,
            @RequestParam(name = "phone")String phone,
            @RequestParam(name = "password")String password,
            HttpSession session){
//        password= MD5Utils.md5(password);
        User user=userService.login(phone,password);
        if(user==null){
            session.setAttribute("warn","用户名或密码错误");
            return "/jsp/index";
        }else{
            session.setAttribute("user",user);
            return "/jsp/index";
        }
    }
}