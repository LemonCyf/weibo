package com.fifteen.service.imp;

import com.fifteen.dao.FansDao;
import com.fifteen.pojo.Fans;
import com.fifteen.service.FansService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FansServiceImp implements FansService {
    @Autowired
    private FansDao fansDao;

    @Override
    public int findFans(String userId) {
        return fansDao.findFans(userId);
    }

    @Override
    public int findAttention(String userId) {
        return fansDao.findAttention(userId);
    }

    @Override
    public void addAttention(Fans fans) {
        fansDao.addAttention(fans);
    }

    @Override
    public List<Fans> findIsAttention(String userId) {
        return fansDao.findIsAttention(userId);
    }

    @Override
    public void deleteAttention(String userId, String fansId) {
        fansDao.deleteAttention(userId,fansId);
    }

}
