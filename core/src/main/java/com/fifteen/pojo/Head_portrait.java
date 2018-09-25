package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class Head_portrait {
    private Blob head_portrait;
    private Date head_portrait_time;
    private String userId;

    public Head_portrait() {
    }

    public Head_portrait(Blob head_portrait, Date head_portrait_time, String userId) {
        this.head_portrait = head_portrait;
        this.head_portrait_time = head_portrait_time;
        this.userId = userId;
    }

    public Blob getHead_portrait() {
        return head_portrait;
    }

    public void setHead_portrait(Blob head_portrait) {
        this.head_portrait = head_portrait;
    }

    public Date getHead_portrait_time() {
        return head_portrait_time;
    }

    public void setHead_portrait_time(Date head_portrait_time) {
        this.head_portrait_time = head_portrait_time;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Head_portrait{" +
                "Head_portrait=" + head_portrait +
                ", head_portrait_time=" + head_portrait_time +
                ", userId='" + userId + '\'' +
                '}';
    }
}
