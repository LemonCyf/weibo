package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class Forward {
    private Integer forward_id;
    private String text;
    private Integer expression_id;
    private String picture;
    private Integer publish_content_id;
    private String userId;
    private Date time;

    public Forward() {
    }

    public Forward(Integer forward_id, String text, Integer expression_id, String picture, Integer publish_content_id, String userId, Date time) {
        this.forward_id = forward_id;
        this.text = text;
        this.expression_id = expression_id;
        this.picture = picture;
        this.publish_content_id = publish_content_id;
        this.userId = userId;
        this.time = time;
    }

    public Integer getForward_id() {
        return forward_id;
    }

    public void setForward_id(Integer forward_id) {
        this.forward_id = forward_id;
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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
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
        return "Forward{" +
                "forward_id=" + forward_id +
                ", text='" + text + '\'' +
                ", expression_id=" + expression_id +
                ", picture=" + picture +
                ", publish_content_id=" + publish_content_id +
                ", userId='" + userId + '\'' +
                ", time=" + time +
                '}';
    }
}
