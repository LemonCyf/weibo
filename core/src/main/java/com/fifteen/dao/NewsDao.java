package com.fifteen.dao;

import com.fifteen.pojo.News;

import java.util.List;

public interface NewsDao {
    List<News> findNewsList();
}
