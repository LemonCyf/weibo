package com.fifteen.controller;

import com.fifteen.pojo.News;
import com.fifteen.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private NewsService newsService;

    @RequestMapping("/index")
    public String index(Model model){
        List<News> newsList=newsService.findNewsList();
        model.addAttribute("news",newsList);
        return "/jsp/index";
    }
}
