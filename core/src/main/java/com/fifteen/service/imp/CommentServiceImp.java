package com.fifteen.service.imp;

import com.fifteen.dao.CommentDao;
import com.fifteen.pojo.Comment;
import com.fifteen.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImp implements CommentService {
    @Autowired
    private CommentDao commentDao;

    @Override
    public List<Comment> findAllComments(Integer publish_content_id) {
        return commentDao.findAllComments(publish_content_id);
    }



    @Override
    public void addNewComment(Comment comment) {
        commentDao.addNewComment(comment);
    }

}
