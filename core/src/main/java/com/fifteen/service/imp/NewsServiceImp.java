package com.fifteen.service.imp;

import com.fifteen.dao.NewsDao;
import com.fifteen.pojo.News;
import com.fifteen.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImp implements NewsService {
    @Autowired
    private NewsDao newsDao;
    @Override
    public List<News> findNewsList() {
        return newsDao.findNewsList();
    }
}
