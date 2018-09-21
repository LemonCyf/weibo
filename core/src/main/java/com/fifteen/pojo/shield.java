package com.fifteen.pojo;

public class shield {
    private String userId;
    private String shield_id;
    private String shield_word;
    private Integer publish_content_id;

    public shield() {
    }

    public shield(String userId, String shield_id, String shield_word, Integer publish_content_id) {
        this.userId = userId;
        this.shield_id = shield_id;
        this.shield_word = shield_word;
        this.publish_content_id = publish_content_id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getShield_id() {
        return shield_id;
    }

    public void setShield_id(String shield_id) {
        this.shield_id = shield_id;
    }

    public String getShield_word() {
        return shield_word;
    }

    public void setShield_word(String shield_word) {
        this.shield_word = shield_word;
    }

    public Integer getPublish_content_id() {
        return publish_content_id;
    }

    public void setPublish_content_id(Integer publish_content_id) {
        this.publish_content_id = publish_content_id;
    }

    @Override
    public String toString() {
        return "shield{" +
                "userId='" + userId + '\'' +
                ", shield_id='" + shield_id + '\'' +
                ", shield_word='" + shield_word + '\'' +
                ", publish_content_id=" + publish_content_id +
                '}';
    }
}
