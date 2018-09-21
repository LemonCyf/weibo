package com.fifteen.pojo;

import java.util.Date;

public class company {
    private String company_name;
    private String department;
    private Date work_time;
    private String location;
    private String userId;

    public company() {
    }

    public company(String company_name, String department, Date work_time, String location, String userId) {
        this.company_name = company_name;
        this.department = department;
        this.work_time = work_time;
        this.location = location;
        this.userId = userId;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Date getWork_time() {
        return work_time;
    }

    public void setWork_time(Date work_time) {
        this.work_time = work_time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "company{" +
                "company_name='" + company_name + '\'' +
                ", department='" + department + '\'' +
                ", work_time=" + work_time +
                ", location='" + location + '\'' +
                ", userId='" + userId + '\'' +
                '}';
    }
}
