package com.fifteen.pojo;

public class report_class {
    private Integer report_class_id;
    private String report_class;

    public report_class() {
    }

    public report_class(Integer report_class_id, String report_class) {
        this.report_class_id = report_class_id;
        this.report_class = report_class;
    }

    public Integer getReport_class_id() {
        return report_class_id;
    }

    public void setReport_class_id(Integer report_class_id) {
        this.report_class_id = report_class_id;
    }

    public String getReport_class() {
        return report_class;
    }

    public void setReport_class(String report_class) {
        this.report_class = report_class;
    }

    @Override
    public String toString() {
        return "report_class{" +
                "report_class_id=" + report_class_id +
                ", report_class='" + report_class + '\'' +
                '}';
    }
}
