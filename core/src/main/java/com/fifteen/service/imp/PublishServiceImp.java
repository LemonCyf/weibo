package com.fifteen.service.imp;

import com.fifteen.dao.PublishDao;
import com.fifteen.pojo.Publish;
import com.fifteen.service.PublishService;
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
    public Publish findPublishDetails(String publish_content_id) {
        return publishDao.findPublishDetails(publish_content_id);
    }

    @Override
    public List<Publish> findAllPublish(String userId) {
        return publishDao.findAllPublsh(userId);
    }

}
