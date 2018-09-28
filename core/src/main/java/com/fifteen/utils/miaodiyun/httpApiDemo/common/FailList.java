package com.fifteen.utils.miaodiyun.httpApiDemo.common;

public class FailList {
    String phone;
    String respCode;
    String respDesc;

    public FailList(String phone, String respCode, String respDesc) {
        this.phone = phone;
        this.respCode = respCode;
        this.respDesc = respDesc;
    }

    public FailList() {

    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRespCode() {
        return respCode;
    }

    public void setRespCode(String respCode) {
        this.respCode = respCode;
    }

    public String getRespDesc() {
        return respDesc;
    }

    public void setRespDesc(String respDesc) {
        this.respDesc = respDesc;
    }

    @Override
    public String toString() {
        return "FailList{" +
                "phone='" + phone + '\'' +
                ", respCode='" + respCode + '\'' +
                ", respDesc='" + respDesc + '\'' +
                '}';
    }
}
