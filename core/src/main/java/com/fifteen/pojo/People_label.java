package com.fifteen.pojo;

public class People_label {
    private String userId;
    private Integer label_id;

    public People_label() {
    }

    public People_label(String userId, Integer label_id) {
        this.userId = userId;
        this.label_id = label_id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getLabel_id() {
        return label_id;
    }

    public void setLabel_id(Integer label_id) {
        this.label_id = label_id;
    }

    @Override
    public String toString() {
        return "People_label{" +
                "userId='" + userId + '\'' +
                ", label_id=" + label_id +
                '}';
    }
}
