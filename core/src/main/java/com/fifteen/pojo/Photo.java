package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class Photo {
    private Integer photo_id;
    private String photo;
    private Date time;
    private Integer album_id;

    public Photo() {
    }

    public Photo(Integer photo_id, String photo, Date time, Integer album_id) {
        this.photo_id = photo_id;
        this.photo = photo;
        this.time = time;
        this.album_id = album_id;
    }

    public Integer getPhoto_id() {
        return photo_id;
    }

    public void setPhoto_id(Integer photo_id) {
        this.photo_id = photo_id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getAlbum_id() {
        return album_id;
    }

    public void setAlbum_id(Integer album_id) {
        this.album_id = album_id;
    }

    @Override
    public String toString() {
        return "Photo{" +
                "photo_id=" + photo_id +
                ", Photo=" + photo +
                ", time=" + time +
                ", album_id=" + album_id +
                '}';
    }
}
