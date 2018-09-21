package com.fifteen.pojo;

public class college {
    private Integer college_id;
    private String college_name;
    private String userId;
    private Integer department_id;

    public college() {
    }

    public college(Integer college_id, String college_name, String userId, Integer department_id) {
        this.college_id = college_id;
        this.college_name = college_name;
        this.userId = userId;
        this.department_id = department_id;
    }

    public Integer getCollege_id() {
        return college_id;
    }

    public void setCollege_id(Integer college_id) {
        this.college_id = college_id;
    }

    public String getCollege_name() {
        return college_name;
    }

    public void setCollege_name(String college_name) {
        this.college_name = college_name;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(Integer department_id) {
        this.department_id = department_id;
    }

    @Override
    public String toString() {
        return "college{" +
                "college_id=" + college_id +
                ", college_name='" + college_name + '\'' +
                ", userId='" + userId + '\'' +
                ", department_id=" + department_id +
                '}';
    }
}
