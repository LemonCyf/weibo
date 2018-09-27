package com.fifteen.controller;

import com.fifteen.pojo.Publish;
import com.fifteen.service.PublishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/publish")
public class PublishController {
    @Autowired
    private PublishService publishService;

    @RequestMapping("/publishDetails")
    public String details(@RequestParam(name = "publish_content_id",required = false) String publish_content_id, Model model){
        Publish details=publishService.findPublishDetails(publish_content_id);
        model.addAttribute("details",details);
        return "/jsp/weiboDetails";
    }
}
