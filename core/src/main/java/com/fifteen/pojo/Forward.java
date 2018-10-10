package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class Forward {
    private Integer forward_id;
    private String text;
    private Integer publish_content_id;
    private String forId;
    private Date time;

    public Forward() {
    }

    public Forward(Integer forward_id, String text, Integer publish_content_id, String forId, Date time) {
        this.forward_id = forward_id;
        this.text = text;
        this.publish_content_id = publish_content_id;
        this.forId = forId;
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

    public Integer getPublish_content_id() {
        return publish_content_id;
    }

    public void setPublish_content_id(Integer publish_content_id) {
        this.publish_content_id = publish_content_id;
    }

    public String getForId() {
        return forId;
    }

    public void setForId(String forId) {
        this.forId = forId;
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
                ", publish_content_id=" + publish_content_id +
                ", forId='" + forId + '\'' +
                ", time=" + time +
                '}';
    }
}
