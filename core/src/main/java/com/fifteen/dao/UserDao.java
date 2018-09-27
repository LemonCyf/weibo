package com.fifteen.dao;

import com.fifteen.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login(@Param("phone") String phone, @Param("password") String password);
    int add(User user);

    User goToPersonalHome(String userId);
}
