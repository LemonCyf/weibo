package com.fifteen.controller;
import com.fifteen.pojo.Fans;
import com.fifteen.pojo.Forward;
import com.fifteen.pojo.Publish;
import com.fifteen.pojo.User;
import com.fifteen.service.*;
import com.fifteen.utils.ResponseModel;
import com.fifteen.utils.miaodiyun.httpApiDemo.IndustrySMS;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.FailList;
import com.fifteen.utils.miaodiyun.httpApiDemo.common.PhoneResponse;
import com.google.gson.Gson;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.ExecutionException;
import java.util.List;

import static java.util.Arrays.asList;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private PublishService publishService;

    @Autowired
    private FansService fansService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private ForwardService forwardService;

    @RequestMapping("/register")
    @ResponseBody
    public ResponseModel register(String phone,String password){
        //用户填入的验证码code
//        String code = user.getCode();
//        String sessionCode = (String) session.getAttribute("c");
//        if((sessionCode).equalsIgnoreCase(code)){
        boolean success = userService.register(phone,password);
        if(success){
            return ResponseModel.createSuccess();
        }
        return ResponseModel.createError();
//        return "/jsp/register";

    }
    @RequestMapping("/checkUser")
    @ResponseBody
    public ResponseModel checkUser(String phone){
        boolean isSuccess = userService.checkUser(phone);
        if(isSuccess){
            return ResponseModel.createSuccess();
        }
        return ResponseModel.createError("该手机号已被注册");
    }


    @RequestMapping("/getPhoneCode")
    @ResponseBody
    public ResponseModel getPhoneCode(String phone,HttpSession session) {
        IndustrySMS.setTo(phone);
        //User user = userService.selectByPhone(phone);
        IndustrySMS.execute();
        session.setAttribute("phoneCode",IndustrySMS.getCode());
        session.setMaxInactiveInterval(60);//60秒

        //获取消息
        PhoneResponse msg = new Gson().fromJson(IndustrySMS.getResult(), PhoneResponse.class);
        if(msg.getRespCode().equals("00000")){
            System.out.println(session.getAttribute("phoneCode"));
            return ResponseModel.createSuccess(1,session.getAttribute("phoneCode"));
        }
        return ResponseModel.createError();
    }

    @RequestMapping("/checkCode")
    @ResponseBody
    public ResponseModel checkCode(String code,HttpSession session) {
        String sessionCode = (String) session.getAttribute("code");
        if(sessionCode.equals(code)){
            return ResponseModel.createSuccess();
        }
        return ResponseModel.createError();

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
    @RequestMapping("/code")
    public void code(HttpServletResponse response, HttpSession session) throws IOException {
        // 使用java图形界面技术绘制一张图片

        int charNum = 4;
        int width = 30 * 4;
        int height = 30;

        // 1. 创建一张内存图片
        BufferedImage bufferedImage = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);

        // 2.获得绘图对象
        Graphics graphics = bufferedImage.getGraphics();

        // 3、绘制背景颜色
        graphics.setColor(Color.orange);
        graphics.fillRect(0, 0, width, height);

        // 4、绘制图片边框
        graphics.setColor(Color.GRAY);
        graphics.drawRect(0, 0, width - 1, height - 1);

        // 5、输出验证码内容
        graphics.setColor(Color.RED);
        graphics.setFont(new Font("宋体", Font.BOLD, 20));

        // 随机输出4个字符
        Graphics2D graphics2d = (Graphics2D) graphics;
        String s = "ABCDEFGHGKLMNPQRSTUVWXYZ23456789";
        Random random = new Random();
        //session中要用到
        String msg="";
        int x = 5;
        for (int i = 0; i < 4; i++) {
            int index = random.nextInt(32);
            String content = String.valueOf(s.charAt(index));
            msg+=content;
            double theta = random.nextInt(45) * Math.PI / 180;
            //让字体扭曲
            graphics2d.rotate(theta, x, 18);
            graphics2d.drawString(content, x, 18);
            graphics2d.rotate(-theta, x, 18);
            x += 30;
        }
        session.setAttribute("code",msg);
        // 6、绘制干扰线
//        graphics.setColor(Color.GRAY);
//        for (int i = 0; i < 5; i++) {
//            int x1 = random.nextInt(width);
//            int x2 = random.nextInt(width);
//
//            int y1 = random.nextInt(height);
//            int y2 = random.nextInt(height);
//            graphics.drawLine(x1, y1, x2, y2);
//        }
        // 释放资源
        graphics.dispose();
        // 图片输出 ImageIO
        ImageIO.write(bufferedImage, "jpg", response.getOutputStream());
    }


    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/index.do";
    }

    @RequestMapping("/goToPersonalHome")
    public String goToPersonalHome(@RequestParam(value = "userId",required = false)String userId,
                                   Model model,HttpSession session){
        List<Publish> publishes= publishService.findAllPublish(userId);
        User personal=userService.findUser(userId);
        int fans=fansService.findFans(userId);
        int attention=fansService.findAttention(userId);
        List<Fans> fans1 = fansService.findIsAttention(userId);
        List<Publish> forwards=publishService.findAllForward(userId);
        String f=null;
        if(fans1!=null) {
            for (int i = 0; i < fans1.size(); i++) {
                String user_Id = fans1.get(i).getFansId();
                String fan = String.valueOf(session.getAttribute("user"));
                if(fan!="null") {
                    String[] arr = fan.split("'");
                    List list = asList(arr);
                    String fans_Id = (String) list.get(1);
                    System.out.println(fans_Id);
                    if (user_Id.equals(fans_Id)) {
                        f = "isAttention";
                    } else {
                        f = null;
                    }
                }
            }
        }
        model.addAttribute("personal",personal);
        model.addAttribute("publishes",publishes);
        model.addAttribute("fans",fans);
        model.addAttribute("attention",attention);
        model.addAttribute("fan",f);
        model.addAttribute("forward",forwards);
        return "/jsp/gr_index";
    }

    @RequestMapping("/addAttention")
    public String addAttention(@RequestParam(value ="userId",required = false)String userId,
                               @RequestParam(value ="fansId",required = false)String fansId){
        Fans fans=new Fans();
        fans.setUserId(userId);
        fans.setFansId(fansId);
        fansService.addAttention(fans);
        return "redirect:/user/goToPersonalHome.do?userId="+userId;
    }

    @RequestMapping("/deleteAttention")
    public String deleteAttention(@RequestParam(value ="userId",required = false)String userId,
                               @RequestParam(value ="fansId",required = false)String fansId){
        fansService.deleteAttention(userId,fansId);
        return "redirect:/user/goToPersonalHome.do?userId="+userId;
    }


}