package com.fifteen.pojo;

public class private_letter {
    private String userId;
    private String recipientId;
    private String text;
    private String time;

    public private_letter() {
    }

    public private_letter(String userId, String recipientId, String text, String time) {
        this.userId = userId;
        this.recipientId = recipientId;
        this.text = text;
        this.time = time;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRecipientId() {
        return recipientId;
    }

    public void setRecipientId(String recipientId) {
        this.recipientId = recipientId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "private_letter{" +
                "userId='" + userId + '\'' +
                ", recipientId='" + recipientId + '\'' +
                ", text='" + text + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
