package com.fifteen.controller;

import com.fifteen.pojo.Comment;
import com.fifteen.pojo.Forward;
import com.fifteen.pojo.Publish;
import com.fifteen.service.CommentService;
import com.fifteen.service.ForwardService;
import com.fifteen.service.PublishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/publish")
public class PublishController {
    @Autowired
    private PublishService publishService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private ForwardService forwardService;

    @RequestMapping("/publishDetails")
    public String details(@RequestParam(name = "publish_content_id",required = false) Integer publish_content_id, Model model){
        Publish details=publishService.findPublishDetails(publish_content_id);
        List<Comment> comments=commentService.findAllComments(publish_content_id);
        int commentCount=commentService.countOfComment(publish_content_id);
        int likeCount=publishService.countOfLike(publish_content_id);
        int forwardCount=forwardService.countOfForward(publish_content_id);
        model.addAttribute("likeCount",likeCount);
        model.addAttribute("commentCount",commentCount);
        model.addAttribute("allComments",comments);
        model.addAttribute("details",details);
        model.addAttribute("forwardCount",forwardCount);
        return "/jsp/weiboDetails";
    }

    @RequestMapping("/forwardPublish")
    public String forward(@RequestParam(name = "text",required = false)String text,
                          @RequestParam(name = "publish_content_id",required = false)Integer publish_content_id,
                          @RequestParam(name = "forId",required = false)String forId){
        Forward forward=new Forward();
        forward.setFtext(text);
        forward.setPublish_content_id(publish_content_id);
        forward.setForId(forId);
        forward.setFtime(new Date());
        forwardService.forward(forward);
        return "redirect:/publish/publishDetails.do?publish_content_id="+publish_content_id;
    }

    @RequestMapping("/addLikeCount")
    public String like(@RequestParam(name = "publish_content_id")Integer publish_content_id,
                       @RequestParam(name = "likecount")Integer likecount){
        likecount=likecount+1;
        publishService.addLike(publish_content_id,likecount);
        return "redirect:/publish/publishDetails.do?publish_content_id="+publish_content_id;
    }
}
