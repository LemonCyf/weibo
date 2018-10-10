package com.fifteen.service;

import com.fifteen.pojo.Fans;

import java.util.List;

public interface FansService {
    int findFans(String userId);

    int findAttention(String userId);

    void addAttention(Fans fans);

    List<Fans> findIsAttention(String userId);

    void deleteAttention(String userId, String fansId);
}
