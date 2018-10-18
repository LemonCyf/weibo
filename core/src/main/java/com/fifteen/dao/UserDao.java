package com.fifteen.dao;

import com.fifteen.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    User login(@Param("phone") String phone, @Param("password") String password);
    int add(User user);
    User findUser(String userId);
    User selectByPhone(@Param("phone")String phone);
    int updateByPhone(String code);
    void updateHead(@Param(value = "head")String head,@Param(value = "userId")String userId);

    User adminLogin(@Param(value = "userId") String userId,@Param(value = "password") String password);

    List<User> findAllUser();

    void edit(User user);

    void deleteUser(String userId);

    List<User> findAll();
}
