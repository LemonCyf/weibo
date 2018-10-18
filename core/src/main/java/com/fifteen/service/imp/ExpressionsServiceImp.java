package com.fifteen.service.imp;

import com.fifteen.dao.ExpressionsDao;
import com.fifteen.pojo.Expressions;
import com.fifteen.service.ExpressionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExpressionsServiceImp implements ExpressionsService {
    @Autowired
    private ExpressionsDao expressionsDao;
    @Override
    public List<Expressions> findAllExpress() {
        return expressionsDao.findAllExpress();
    }
}
