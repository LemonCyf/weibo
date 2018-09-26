package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

public class Album {
    private Integer albume_id;
    private String albume_name;
    private String cover;
    private String userId;
    private String text;

    public Album() {
    }

    public Album(Integer albume_id, String albume_name, String cover, String userId, String text) {
        this.albume_id = albume_id;
        this.albume_name = albume_name;
        this.cover = cover;
        this.userId = userId;
        this.text = text;
    }

    public Integer getAlbume_id() {
        return albume_id;
    }

    public void setAlbume_id(Integer albume_id) {
        this.albume_id = albume_id;
    }

    public String getAlbume_name() {
        return albume_name;
    }

    public void setAlbume_name(String albume_name) {
        this.albume_name = albume_name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Album{" +
                "albume_id=" + albume_id +
                ", albume_name='" + albume_name + '\'' +
                ", cover=" + cover +
                ", userId='" + userId + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
