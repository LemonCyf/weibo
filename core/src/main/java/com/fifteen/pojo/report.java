package com.fifteen.pojo;

public class report {
    private String userId;
    private Integer publish_content_id;
    private Integer report_class_id;

    public report() {
    }

    public report(String userId, Integer publish_content_id, Integer report_class_id) {
        this.userId = userId;
        this.publish_content_id = publish_content_id;
        this.report_class_id = report_class_id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getPublish_content_id() {
        return publish_content_id;
    }

    public void setPublish_content_id(Integer publish_content_id) {
        this.publish_content_id = publish_content_id;
    }

    public Integer getReport_class_id() {
        return report_class_id;
    }

    public void setReport_class_id(Integer report_class_id) {
        this.report_class_id = report_class_id;
    }

    @Override
    public String toString() {
        return "report{" +
                "userId='" + userId + '\'' +
                ", publish_content_id=" + publish_content_id +
                ", report_class_id=" + report_class_id +
                '}';
    }
}
