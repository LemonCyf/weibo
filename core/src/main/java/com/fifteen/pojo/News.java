package com.fifteen.pojo;


import java.util.Date;

public class News {
    private String title;
    private String image;
    private Date time;
    private String introduction;
    private String newsAddress;

    public News() {
    }

    public News(String title, String image, Date time, String introduction, String newsAddress) {
        this.title = title;
        this.image = image;
        this.time = time;
        this.introduction = introduction;
        this.newsAddress = newsAddress;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getNewsAddress() {
        return newsAddress;
    }

    public void setNewsAddress(String newsAddress) {
        this.newsAddress = newsAddress;
    }

    @Override
    public String toString() {
        return "News{" +
                "title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", time=" + time +
                ", introduction='" + introduction + '\'' +
                ", newsAddress='" + newsAddress + '\'' +
                '}';
    }
}
