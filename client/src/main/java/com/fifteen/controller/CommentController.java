package com.fifteen.controller;

import com.fifteen.pojo.Comment;
import com.fifteen.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @RequestMapping("/addNewComment")
    public String publishAddComment(@RequestParam(name = "text",required = false)String text,
                                    @RequestParam(name = "expression_id",required = false)Integer expression_id,
                                    @RequestParam(name = "picture",required = false)String picture,
                                    @RequestParam(name = "publish_content_id",required = false)Integer publish_content_id,
                                    @RequestParam(name = "userId",required = false)String userId,
                                    @RequestParam(name = "time",required = false) Date time,
                                    Model model){
        Comment comment=new Comment();
        comment.setText(text);
        comment.setExpression_id(expression_id);
        comment.setPicture(picture);
        comment.setPublish_content_id(publish_content_id);
        comment.setUserId(userId);
        comment.setTime(time);
        commentService.addNewComment(comment);
        model.addAttribute("comments",comment);
        return "redirect:/publish/publishDetails.do";
    }

}
