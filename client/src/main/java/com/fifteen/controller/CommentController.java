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
    public String publishAddComment(@RequestParam(name = "commentText",required = false)String commentText,
                                    @RequestParam(name = "publish_content_id",required = false)Integer publish_content_id,
                                    @RequestParam(name = "userId",required = false)String userId,
                                    Model model){
        Comment comment=new Comment();
        comment.setText(commentText);
        comment.setPublish_content_id(publish_content_id);
        comment.setUserId(userId);
        comment.setTime(new Date());
        commentService.addNewComment(comment);
        model.addAttribute("comments",comment);
        return "redirect:/publish/publishDetails.do?publish_content_id="+publish_content_id;
    }

}
