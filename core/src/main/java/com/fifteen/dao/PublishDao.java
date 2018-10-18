package com.fifteen.dao;

import com.fifteen.pojo.Publish;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PublishDao {
    List findPublish();

    Publish findPublishDetails(Integer publish_content_id);

    List<Publish> findAllPublish(String userId);

    int countOfLike(Integer publish_content_id);

    List<Publish> findAllForward(String userId);

    void deletePublish(Integer publish_content_id);

    void addPublish(Publish publish);

    void addLike(@Param("publish_content_id") Integer publish_content_id,@Param("likecount") Integer likecount);
}
