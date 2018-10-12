package com.fifteen.service;

import com.fifteen.pojo.Forward;

public interface ForwardService {
    void forward(Forward forward);

    int countOfForward(Integer publish_content_id);
}
