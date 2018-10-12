package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class Forward {
    private Integer forward_id;
    private String ftext;
    private Integer publish_content_id;
    private String forId;
    private Date ftime;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Forward() {
    }

    public Forward(Integer forward_id, String ftext, Integer publish_content_id, String forId, Date ftime) {
        this.forward_id = forward_id;
        this.ftext = ftext;
        this.publish_content_id = publish_content_id;
        this.forId = forId;
        this.ftime = ftime;
    }

    public Integer getForward_id() {
        return forward_id;
    }

    public void setForward_id(Integer forward_id) {
        this.forward_id = forward_id;
    }

    public String getFtext() {
        return ftext;
    }

    public void setFtext(String ftext) {
        this.ftext = ftext;
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

    public Date getFtime() {
        return ftime;
    }

    public void setFtime(Date ftime) {
        this.ftime = ftime;
    }

    @Override
    public String toString() {
        return "Forward{" +
                "forward_id=" + forward_id +
                ", ftext='" + ftext + '\'' +
                ", publish_content_id=" + publish_content_id +
                ", forId='" + forId + '\'' +
                ", ftime=" + ftime +
                '}';
    }
}
