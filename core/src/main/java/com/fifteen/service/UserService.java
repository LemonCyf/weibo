package com.fifteen.service;

import com.fifteen.pojo.User;

public interface UserService {
    User login(String phone, String password);
    boolean register(String phone,String password);
    User findUser(String userId);
    User selectByPhone(String phone);
    boolean update(String code);
    User goToPersonalHome(String userId);

    void updateHead(String head,String userId);
    boolean checkUser(String phone);
}
