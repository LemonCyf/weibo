package com.fifteen.service.imp;

import com.fifteen.dao.ForwardDao;
import com.fifteen.pojo.Forward;
import com.fifteen.service.ForwardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ForwardServiceImp implements ForwardService {
    @Autowired
    private ForwardDao forwardDao;

    @Override
    public void forward(Forward forward) {
        forwardDao.forward(forward);
    }

    @Override
    public int countOfForward(Integer publish_content_id) {
        return forwardDao.countOfForward(publish_content_id);
    }
}
