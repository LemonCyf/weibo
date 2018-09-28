package com.fifteen.dao;

import com.fifteen.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login(@Param("phone") String phone, @Param("password") String password);
    int add(User user);

<<<<<<< HEAD
    User findUser(String userId);
=======
<<<<<<< HEAD
    User selectByPhone(@Param("phone")String phone);

    int updateByPhone(String code);
=======
    User goToPersonalHome(String userId);
>>>>>>> 93d6740ad6ed106efff0ff2228a43686d8d1bfe0
>>>>>>> 28548b24823d52442cd65716461cfa74b750ed98
}
