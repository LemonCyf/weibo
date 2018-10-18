package com.fifteen.controller;

import com.fifteen.common.Constant;
import com.fifteen.pojo.Expressions;
import com.fifteen.pojo.Publish;
import com.fifteen.pojo.User;
import com.fifteen.service.ExpressionsService;
import com.fifteen.service.PublishService;
import com.fifteen.service.UserService;
import com.github.pagehelper.PageInfo;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.util.WebUtils;
import sun.misc.Request;

import javax.servlet.Filter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminController {
    public static final Integer count = 10;
    @Autowired
    private UserService userService;

    @Autowired
    private PublishService publishService;

    @Autowired
    private ExpressionsService expressionsService;

    @RequestMapping("/adminLogin")
    public String adminLogin(@RequestParam(value = "userId", required = false) String userId,
                             @RequestParam(value = "password", required = false) String password,
                             Model model,
                             HttpSession session) {
        User user = userService.adminLogin(userId, password);
        if (user == null) {
            model.addAttribute("alert", "用户名或密码错误");
            return "/jsp/index";
        } else {
            int code = Integer.parseInt(user.getCode());
            if (Constant.User_In_Admin != code) {
                model.addAttribute("alert", "该用户不是管理员，不能进入管理系统");
                return "/jsp/index";
            }
        }
        session.setAttribute("admin", user);
        return "/jsp/home";
    }

    //user
    @RequestMapping("/userList")
    public String userList(@RequestParam(value = "pageNum", defaultValue = "1", required = false) Integer pageNum, Model model) {
        List<User> userList = userService.findAllUser(pageNum, count);
        PageInfo<User> pageInfo = new PageInfo<>(userList);
        model.addAttribute("page", pageInfo);
        model.addAttribute("userList", userList);
        return "/jsp/user/list";
    }

    @RequestMapping("/goToEditUser")
    public String goToEditUser(@RequestParam(value = "userId", required = false) String userId, Model model) {
        User user = userService.findUser(userId);
        model.addAttribute("users", user);
        return "/jsp/user/edit";
    }

    @RequestMapping("/editUser")
    public String editUser(@ModelAttribute(value = "user") User user) {
        userService.editUser(user);
        return "redirect:/admin/userList.do";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam(value = "userId", required = false) String userId) {
        userService.deleteUser(userId);
        return "redirect:/admin/userList.do";
    }

    //    publish
    @RequestMapping("/findAllPublish")
    public String findAllPublish(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum, Model model) {
        List<Publish> publishes = publishService.findPublishList(pageNum, count);
        PageInfo<Publish> publishPageInfo = new PageInfo<>(publishes);
        model.addAttribute("publish", publishes);
        model.addAttribute("page", publishPageInfo);
        return "/jsp/publish/list";
    }

    @RequestMapping("/deletePublish")
    public String deletePublish(@RequestParam(value = "publish_content_id") Integer publish_content_id) {
        publishService.deletePublish(publish_content_id);
        return "forward:/admin/findAllPublish.do";
    }

    @RequestMapping("/findExpressAndUser")
    public String find(Model model) {
        List<Expressions> findExpress = expressionsService.findAllExpress();
        List<User> user = userService.findAll();
        model.addAttribute("user", user);
        model.addAttribute("express", findExpress);
        return "/jsp/publish/add";
    }

    @RequestMapping("/addPublish")
    public String addPublish(@RequestParam(value = "userId") String userId,
                             @RequestParam(value = "expressId", required = false) Integer expressId,
                             @RequestParam(value = "picture", required = false) MultipartFile picture,
                             @RequestParam(value = "text") String text,
                             HttpServletRequest request,
                             Model model) throws IOException {
        Publish publish = new Publish();
        String path = request.getServletContext().getRealPath("/publish_img/");
        String filename = picture.getOriginalFilename();
        File file = new File(path, filename);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        picture.transferTo(new File(path + File.separator + filename));
        publish.setUserId(userId);
        publish.setExpression_id(Integer.valueOf(expressId));
        publish.setPicture(request.getContextPath() + "/publish_img/" + filename);
        publish.setText(text);
        publish.setTime(new Date());
        publishService.addPublish(publish);
        model.addAttribute("publish", publish);
        return "forward:/admin/findAllPublish.do";
    }

//    expression
    @RequestMapping("/findAllExpress")
    public String findAllExpress(Model model){
        List<Expressions> express = expressionsService.findAllExpress();
        model.addAttribute("express",express);
        return "/jsp/expression/list";
    }
}
