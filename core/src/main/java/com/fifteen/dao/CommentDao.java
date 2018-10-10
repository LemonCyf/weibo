package com.fifteen.dao;

import com.fifteen.pojo.Comment;

import java.util.List;

public interface CommentDao {
    List<Comment> findAllComments(Integer publish_content_id);

    void addNewComment(Comment comment);

    int countOfComment(Integer publish_content_id);

}
