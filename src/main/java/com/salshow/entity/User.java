package com.salshow.entity;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    public int id;
    public String FName;
    public String LName;
    public String Email;
    public String password;
    public String address;
    public int gender;
    public String photo;
    public int buyamount;
    public String authorize;
    public String createtime;

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getAuthorize() {
        return authorize;
    }

    public void setAuthorize(String authorize) {
        this.authorize = authorize;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", FName='" + FName + '\'' +
                ", LName='" + LName + '\'' +
                ", Email='" + Email + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", gender=" + gender +
                ", photo='" + photo + '\'' +
                ", buyamount=" + buyamount +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFName() {
        return FName;
    }

    public void setFName(String FName) {
        this.FName = FName;
    }

    public String getLName() {
        return LName;
    }

    public void setLName(String LName) {
        this.LName = LName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getBuyamount() {
        return buyamount;
    }

    public void setBuyamount(int buyamount) {
        this.buyamount = buyamount;
    }
}
