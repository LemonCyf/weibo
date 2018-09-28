package com.fifteen.dao;

import com.fifteen.pojo.Publish;

import java.util.List;

public interface PublishDao {
    List findPublish();

    Publish findPublishDetails(String publish_content_id);

    List<Publish> findAllPublish(String userId);
}
