package com.fifteen.service.imp;

import com.fifteen.dao.UserDao;
import com.fifteen.pojo.User;
import com.fifteen.service.UserService;
import com.fifteen.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    public UserDao userDao;

    @Override
    public User login(String phone, String password) {
        User user=userDao.login(phone,password);
        return user;
    }

    @Override
    public boolean register(String phone, String password) {
        boolean isSuccess = false;
        User user = userDao.login(phone, password);
        if(user == null){
<<<<<<< HEAD
            user = new User(Utils.getUUID(),phone,password,"",null,"","","",null,"","","","","","","","","","","","");
=======
            user = new User("1231241r13r12",phone,password,"1471@qq.com",null,"","","",null,"","","","","","","","","","");
>>>>>>> 93d6740ad6ed106efff0ff2228a43686d8d1bfe0
            int count= userDao.add(user);
            if(count > 0){
                isSuccess = true;
            }
        }else {
            return isSuccess;
        }
        return isSuccess;
    }

    @Override
<<<<<<< HEAD
    public User selectByPhone(String phone) {
        User user = userDao.selectByPhone(phone);
        return user;
    }

    @Override
    public boolean update(String code) {
        boolean isSuccess = false;
        int count = userDao.updateByPhone(code);
        if(count > 0){
            isSuccess = true;
        }
        return isSuccess;
=======
    public User goToPersonalHome(String userId) {
        return userDao.goToPersonalHome(userId);
>>>>>>> 93d6740ad6ed106efff0ff2228a43686d8d1bfe0
    }

}
