package com.fifteen.service;

import com.fifteen.pojo.User;

public interface UserService {
    User login(String phone, String password);
    boolean register(String phone,String password);
<<<<<<< HEAD
    User findUser(String userId);
=======
<<<<<<< HEAD
    User selectByPhone(String phone);

    boolean update(String code);
=======

    User goToPersonalHome(String userId);
>>>>>>> 93d6740ad6ed106efff0ff2228a43686d8d1bfe0
>>>>>>> 28548b24823d52442cd65716461cfa74b750ed98
}
