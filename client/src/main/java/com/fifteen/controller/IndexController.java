package com.fifteen.controller;

import com.fifteen.pojo.News;
import com.fifteen.pojo.Publish;
import com.fifteen.pojo.User;
import com.fifteen.service.NewsService;
import com.fifteen.service.PublishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @Autowired
    private PublishService publishService;

    @RequestMapping("/index")
    public String index(Model model){
        List<News> newsList=newsService.findNewsList();
        model.addAttribute("news",newsList);
        List publishes=publishService.findPublish();
        model.addAttribute("publish",publishes);
        return "/jsp/index";
    }
}
