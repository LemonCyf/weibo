package com.fifteen.service.imp;
import com.fifteen.dao.UserDao;
import com.fifteen.pojo.User;
import com.fifteen.service.UserService;
import com.fifteen.utils.Utils;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


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
            user = new User(Utils.getUUID(),phone,password,"","","","","",null,"","","","","","","","","","","","");
            user = new User(Utils.getUUID(),phone,password,"",null,"","","",null,"","","","","","","","","","","","");
            user = new User("1231241r13r12",phone,password,"1471@qq.com",null,"","","",null,"","","","","","","","","","","","");
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
    public User findUser(String userId) {
        return userDao.findUser(userId);
    }
    public User selectByPhone(String phone) {
        User user = userDao.selectByPhone(phone);
        return user;
    }

    @Override
    public boolean update(String code) {
        boolean isSuccess = false;
        int count = userDao.updateByPhone(code);
        if (count > 0) {
            isSuccess = true;
        }
        return isSuccess;

    }

    @Override
    public boolean checkUser(String phone) {
        boolean isSuccess = false;
        User user = userDao.selectByPhone(phone);
        if(user == null){
            isSuccess = true;
        }
        return isSuccess;
    }

    @Override
    public User adminLogin(String userId, String password) {
        return userDao.adminLogin(userId,password);
    }

    @Override
    public List<User> findAllUser(Integer pageNum,Integer count) {
        PageHelper.startPage(pageNum,count);
        List<User> userList=userDao.findAllUser();
        return userList;
    }

    @Override
    public void editUser(User user) {
        userDao.edit(user);
    }

    @Override
    public void deleteUser(String userId) {
        userDao.deleteUser(userId);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public void  updateHead(String head,String userId) {
        userDao.updateHead(head,userId);

    }

}
