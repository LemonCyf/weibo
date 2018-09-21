package com.fifteen.pojo;

import com.mysql.jdbc.Blob;

import java.util.Date;

public class photo {
    private Integer photo_id;
    private Blob photo;
    private Date time;
    private Integer album_id;

    public photo() {
    }

    public photo(Integer photo_id, Blob photo, Date time, Integer album_id) {
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

    public Blob getPhoto() {
        return photo;
    }

    public void setPhoto(Blob photo) {
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
        return "photo{" +
                "photo_id=" + photo_id +
                ", photo=" + photo +
                ", time=" + time +
                ", album_id=" + album_id +
                '}';
    }
}
