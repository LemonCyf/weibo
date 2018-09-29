package com.fifteen.dao;

import com.fifteen.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login(@Param("phone") String phone, @Param("password") String password);
    int add(User user);
<<<<<<< HEAD
=======

    User findUser(String userId);
>>>>>>> 1ae445c98c2c696c64d8fbe3f738f3b6bf029f3d
    User selectByPhone(@Param("phone")String phone);
    int updateByPhone(String code);
<<<<<<< HEAD
    User goToPersonalHome(String userId);
=======
>>>>>>> 1ae445c98c2c696c64d8fbe3f738f3b6bf029f3d
}
