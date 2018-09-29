package com.fifteen.service;

import com.fifteen.pojo.User;

public interface UserService {
    User login(String phone, String password);
    boolean register(String phone,String password);
<<<<<<< HEAD
=======
    User findUser(String userId);
>>>>>>> 1ae445c98c2c696c64d8fbe3f738f3b6bf029f3d
    User selectByPhone(String phone);
    boolean update(String code);
<<<<<<< HEAD
    User goToPersonalHome(String userId);

    boolean checkUser(String phone);
=======
>>>>>>> 1ae445c98c2c696c64d8fbe3f738f3b6bf029f3d
}
