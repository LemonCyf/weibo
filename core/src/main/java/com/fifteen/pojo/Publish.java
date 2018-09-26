package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class Publish {
    private Integer publish_content_id;
    private String text;
    private Integer expression_id;
    private String picture;
    private String phone;
    private String userId;
    private Date time;
    private User user;
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Publish() {
    }

    public Publish(Integer publish_content_id, String text, Integer expression_id, String picture, String phone, String userId, Date time) {
        this.publish_content_id = publish_content_id;
        this.text = text;
        this.expression_id = expression_id;
        this.picture = picture;
        this.phone = phone;
        this.userId = userId;
        this.time = time;
    }

    public Integer getPublish_content_id() {
        return publish_content_id;
    }

    public void setPublish_content_id(Integer publish_content_id) {
        this.publish_content_id = publish_content_id;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
        return "Publish{" +
                "publish_content_id=" + publish_content_id +
                ", text='" + text + '\'' +
                ", expression_id=" + expression_id +
                ", picture=" + picture +
                ", phone=" + phone +
                ", userId='" + userId + '\'' +
                ", time=" + time +
                '}';
    }
}
