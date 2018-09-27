package com.fifteen.service;

import com.fifteen.pojo.User;

public interface UserService {
    User login(String phone, String password);
    boolean register(String phone,String password);

    User goToPersonalHome(String userId);
}
