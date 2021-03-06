package com.fifteen.service.imp;

import com.fifteen.dao.PublishDao;
import com.fifteen.pojo.Publish;
import com.fifteen.service.PublishService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublishServiceImp implements PublishService {
    @Autowired
    private PublishDao publishDao;

    @Override
    public List findPublish() {
        return publishDao.findPublish();
    }

    @Override
    public Publish findPublishDetails(Integer publish_content_id) {
        return publishDao.findPublishDetails(publish_content_id);
    }

    @Override
    public List<Publish> findAllPublish(String userId) {
        return publishDao.findAllPublish(userId);
    }

    @Override
    public int countOfLike(Integer publish_content_id) {
        return publishDao.countOfLike(publish_content_id);
    }

    @Override
    public List<Publish> findAllForward(String userId) {
        return publishDao.findAllForward(userId);
    }

    @Override
    public List<Publish> findPublishList(Integer pageNum, Integer count) {
        PageHelper.startPage(pageNum,count);
        List<Publish> publish = publishDao.findPublish();
        return publish;
    }

    @Override
    public void deletePublish(Integer publish_content_id) {
        publishDao.deletePublish(publish_content_id);
    }

    @Override
    public void addPublish(Publish publish) {
        publishDao.addPublish(publish);
    }

    @Override
    public void addLike(Integer publish_content_id,Integer likecount) {
        publishDao.addLike(publish_content_id,likecount);
    }


}
