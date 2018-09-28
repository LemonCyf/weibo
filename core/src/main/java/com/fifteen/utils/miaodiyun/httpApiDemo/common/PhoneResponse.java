package com.fifteen.utils.miaodiyun.httpApiDemo.common;

import java.util.List;

public class PhoneResponse {
    String respCode;
    String respDesc;
    String failCount;
    List<FailList> failList;
    String smsId;

    public PhoneResponse() {
    }

    public PhoneResponse(String respCode, String respDesc, String failCount, List<FailList> failList, String smsId) {
        this.respCode = respCode;
        this.respDesc = respDesc;
        this.failCount = failCount;
        this.failList = failList;
        this.smsId = smsId;
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

    public String getFailCount() {
        return failCount;
    }

    public void setFailCount(String failCount) {
        this.failCount = failCount;
    }

    public List<FailList> getFailList() {
        return failList;
    }

    public void setFailList(List<FailList> failList) {
        this.failList = failList;
    }

    public String getSmsId() {
        return smsId;
    }

    public void setSmsId(String smsId) {
        this.smsId = smsId;
    }

    @Override
    public String toString() {
        return "PhoneResponse{" +
                "respCode='" + respCode + '\'' +
                ", respDesc='" + respDesc + '\'' +
                ", failCount='" + failCount + '\'' +
                ", failList=" + failList +
                ", smsId='" + smsId + '\'' +
                '}';
    }
}
