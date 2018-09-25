package com.fifteen.pojo;

public class Fans {
    private String userId;
    private String fansId;

    public Fans() {
    }

    public Fans(String userId, String fansId) {
        this.userId = userId;
        this.fansId = fansId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFansId() {
        return fansId;
    }

    public void setFansId(String fansId) {
        this.fansId = fansId;
    }

    @Override
    public String toString() {
        return "Fans{" +
                "userId='" + userId + '\'' +
                ", fansId='" + fansId + '\'' +
                '}';
    }
}
