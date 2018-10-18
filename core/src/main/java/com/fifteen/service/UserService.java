package com.fifteen.service;

import com.fifteen.pojo.User;

import java.util.List;

public interface UserService {
    User login(String phone, String password);
    boolean register(String phone,String password);
    User findUser(String userId);
    User selectByPhone(String phone);
    boolean update(String code);

    void updateHead(String head,String userId);
    boolean checkUser(String phone);

    User adminLogin(String userId, String password);

    List<User> findAllUser(Integer pageNum, Integer count);

    void editUser(User user);

    void deleteUser(String userId);

    List<User> findAll();

}
