package com.fifteen.dao;

import com.fifteen.pojo.Publish;

import java.util.List;

public interface PublishDao {
    List findPublish();

    Publish findPublishDetails(Integer publish_content_id);

    List<Publish> findAllPublish(String userId);

    int countOfLike(Integer publish_content_id);

    List<Publish> findAllForward(String userId);

}
