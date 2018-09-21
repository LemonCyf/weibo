package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class comment {
    private Integer comment_id;
    private String text;
    private Integer expression_id;
    private Blob picture;
    private Integer publish_content_id;
    private String userId;
    private Date time;

    public comment() {
    }

    public comment(Integer comment_id, String text, Integer expression_id, Blob picture, Integer publish_content_id, String userId, Date time) {
        this.comment_id = comment_id;
        this.text = text;
        this.expression_id = expression_id;
        this.picture = picture;
        this.publish_content_id = publish_content_id;
        this.userId = userId;
        this.time = time;
    }

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Integer getExpression_id() {
        return expression_id;
    }

    public void setExpression_id(Integer expression_id) {
        this.expression_id = expression_id;
    }

    public Blob getPicture() {
        return picture;
    }

    public void setPicture(Blob picture) {
        this.picture = picture;
    }

    public Integer getPublish_content_id() {
        return publish_content_id;
    }

    public void setPublish_content_id(Integer publish_content_id) {
        this.publish_content_id = publish_content_id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "comment{" +
                "comment_id=" + comment_id +
                ", text='" + text + '\'' +
                ", expression_id=" + expression_id +
                ", picture=" + picture +
                ", publish_content_id=" + publish_content_id +
                ", userId='" + userId + '\'' +
                ", time=" + time +
                '}';
    }
}
