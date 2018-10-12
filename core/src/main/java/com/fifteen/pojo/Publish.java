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
    private Integer count;
    private User user;
    private Expressions expressions;
    private Forward forward;

    public Forward getForward() {
        return forward;
    }

    public void setForward(Forward forward) {
        this.forward = forward;
    }

    public Expressions getExpressions() {
        return expressions;
    }

    public void setExpressions(Expressions expressions) {
        this.expressions = expressions;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Publish() {
    }

    public Publish(Integer publish_content_id, String text, Integer expression_id, String picture, String phone, String userId, Date time, Integer count) {
        this.publish_content_id = publish_content_id;
        this.text = text;
        this.expression_id = expression_id;
        this.picture = picture;
        this.phone = phone;
        this.userId = userId;
        this.time = time;
        this.count = count;
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

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Publish{" +
                "publish_content_id=" + publish_content_id +
                ", text='" + text + '\'' +
                ", expression_id=" + expression_id +
                ", picture='" + picture + '\'' +
                ", phone='" + phone + '\'' +
                ", userId='" + userId + '\'' +
                ", time=" + time +
                ", count=" + count +
                ", user=" + user +
                ", expressions=" + expressions +
                '}';
    }
}
