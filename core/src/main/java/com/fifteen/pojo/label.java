package com.fifteen.pojo;

public class label {
    private Integer label_id;
    private String label_text;

    public label() {
    }

    public label(Integer label_id, String label_text) {
        this.label_id = label_id;
        this.label_text = label_text;
    }

    public Integer getLabel_id() {
        return label_id;
    }

    public void setLabel_id(Integer label_id) {
        this.label_id = label_id;
    }

    public String getLabel_text() {
        return label_text;
    }

    public void setLabel_text(String label_text) {
        this.label_text = label_text;
    }

    @Override
    public String toString() {
        return "label{" +
                "label_id=" + label_id +
                ", label_text='" + label_text + '\'' +
                '}';
    }
}
