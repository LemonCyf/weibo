package com.fifteen.service;

import com.fifteen.pojo.Publish;

import java.util.List;

public interface PublishService {
    List findPublish();

    Publish findPublishDetails(Integer publish_content_id);

    List<Publish> findAllPublish(String userId);

    int countOfLike(Integer publish_content_id);

    List<Publish> findAllForward(String userId);

    List<Publish> findPublishList(Integer pageNum, Integer count);

    void deletePublish(Integer publish_content_id);

    void addPublish(Publish publish);

    void addLike(Integer publish_content_id, Integer likecount);
}
