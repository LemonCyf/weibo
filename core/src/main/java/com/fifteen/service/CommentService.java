package com.fifteen.service;

import com.fifteen.pojo.Comment;

import java.util.List;

public interface CommentService {

    void addNewComment(Comment comment);

    List<Comment> findAllComments(Integer publish_content_id);

    int countOfComment(Integer publish_content_id);

}
