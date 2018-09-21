package com.fifteen.pojo;

public class fans {
    private String userId;
    private String fansId;

    public fans() {
    }

    public fans(String userId, String fansId) {
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
        return "fans{" +
                "userId='" + userId + '\'' +
                ", fansId='" + fansId + '\'' +
                '}';
    }
}
