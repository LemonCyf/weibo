package com.fifteen.dao;

import com.fifteen.pojo.Forward;

public interface ForwardDao {
    void forward(Forward forward);

    int countOfForward(Integer publish_content_id);
}
