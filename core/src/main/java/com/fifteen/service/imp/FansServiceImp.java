package com.fifteen.service.imp;

import com.fifteen.dao.FansDao;
import com.fifteen.service.FansService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
