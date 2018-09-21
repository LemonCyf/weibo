package com.fifteen.dao;

import com.fifteen.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
<<<<<<< HEAD
    User login(@Param("phone") String phone, @Param("password") String password);
    int add(User user);
=======
    User login(@Param("phone")String phone, @Param("password")String password);
>>>>>>> a5aa2a1b8b39f48ba306ed9073f5b2d74eb25b32
}
