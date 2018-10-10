package com.fifteen.dao;

import com.fifteen.pojo.Fans;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FansDao {
    int findFans(String userId);

    int findAttention(String userId);

    void addAttention(Fans fans);

    List<Fans> findIsAttention(String userId);

    void deleteAttention(@Param(value = "userId") String userId,@Param(value = "fansId") String fansId);
}
