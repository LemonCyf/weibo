package com.fifteen.pojo;

public class Call_me {
    private String userId;
    private String call_userId;
    private String call_text;
    private String call_time;

    public Call_me() {
    }

    public Call_me(String userId, String call_userId, String call_text, String call_time) {
        this.userId = userId;
        this.call_userId = call_userId;
        this.call_text = call_text;
        this.call_time = call_time;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCall_userId() {
        return call_userId;
    }

    public void setCall_userId(String call_userId) {
        this.call_userId = call_userId;
    }

    public String getCall_text() {
        return call_text;
    }

    public void setCall_text(String call_text) {
        this.call_text = call_text;
    }

    public String getCall_time() {
        return call_time;
    }

    public void setCall_time(String call_time) {
        this.call_time = call_time;
    }

    @Override
    public String toString() {
        return "Call_me{" +
                "userId='" + userId + '\'' +
                ", call_userId='" + call_userId + '\'' +
                ", call_text='" + call_text + '\'' +
                ", call_time='" + call_time + '\'' +
                '}';
    }
}
