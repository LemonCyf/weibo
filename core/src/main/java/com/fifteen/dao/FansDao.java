package com.fifteen.dao;

public interface FansDao {
    int findFans(String userId);

    int findAttention(String userId);
}
