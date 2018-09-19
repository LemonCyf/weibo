package com.fifteen.service.imp;

import com.fifteen.dao.UserDao;
import com.fifteen.pojo.User;
import com.fifteen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    public UserDao userDao;

    @Override
    public User login(String phone, String password) {
        User user=userDao.login(phone,password);
        return user;
    }
}
