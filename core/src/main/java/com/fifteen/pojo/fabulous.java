package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

public class fabulous {
    private Integer fabulous_id;
    private String text;
    private Integer expression_id;
    private Blob picture;
    private Integer publish_content_id;
    private String userId;

    public fabulous() {
    }

    public fabulous(Integer fabulous_id, String text, Integer expression_id, Blob picture, Integer publish_content_id, String userId) {
        this.fabulous_id = fabulous_id;
        this.text = text;
        this.expression_id = expression_id;
        this.picture = picture;
        this.publish_content_id = publish_content_id;
        this.userId = userId;
    }

    public Integer getFabulous_id() {
        return fabulous_id;
    }

    public void setFabulous_id(Integer fabulous_id) {
        this.fabulous_id = fabulous_id;
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

    @Override
    public String toString() {
        return "fabulous{" +
                "fabulous_id=" + fabulous_id +
                ", text='" + text + '\'' +
                ", expression_id=" + expression_id +
                ", picture=" + picture +
                ", publish_content_id=" + publish_content_id +
                ", userId='" + userId + '\'' +
                '}';
    }
}
