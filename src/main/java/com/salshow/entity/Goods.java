package com.salshow.entity;

public class Goods {
    public int id;
    public String goodsname;
    public String photomain;
    public String photo1;
    public String photo2;
    public String photo3;
    public String photo4;
    public String photo5;
    public String photo6;
    public String descriptionbrief;
    public String descriptiondetails;
    public int price;
    public String sizes;
    public int catogory;
    public int style;
    public int brand;
    public int color;
    public int discount;

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodsname='" + goodsname + '\'' +
                ", descriptionbrief='" + descriptionbrief + '\'' +
                ", descriptiondetails='" + descriptiondetails + '\'' +
                ", price=" + price +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getPhotomain() {
        return photomain;
    }

    public void setPhotomain(String photomain) {
        this.photomain = photomain;
    }

    public String getPhoto1() {
        return photo1;
    }

    public void setPhoto1(String photo1) {
        this.photo1 = photo1;
    }

    public String getPhoto2() {
        return photo2;
    }

    public void setPhoto2(String photo2) {
        this.photo2 = photo2;
    }

    public String getPhoto3() {
        return photo3;
    }

    public void setPhoto3(String photo3) {
        this.photo3 = photo3;
    }

    public String getPhoto4() {
        return photo4;
    }

    public void setPhoto4(String photo4) {
        this.photo4 = photo4;
    }

    public String getPhoto5() {
        return photo5;
    }

    public void setPhoto5(String photo5) {
        this.photo5 = photo5;
    }

    public String getPhoto6() {
        return photo6;
    }

    public void setPhoto6(String photo6) {
        this.photo6 = photo6;
    }

    public String getDescriptionbrief() {
        return descriptionbrief;
    }

    public void setDescriptionbrief(String descriptionbrief) {
        this.descriptionbrief = descriptionbrief;
    }

    public String getDescriptiondetails() {
        return descriptiondetails;
    }

    public void setDescriptiondetails(String descriptiondetails) {
        this.descriptiondetails = descriptiondetails;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public int getCatogory() {
        return catogory;
    }

    public void setCatogory(int catogory) {
        this.catogory = catogory;
    }

    public int getStyle() {
        return style;
    }

    public void setStyle(int style) {
        this.style = style;
    }

    public int getBrand() {
        return brand;
    }

    public void setBrand(int brand) {
        this.brand = brand;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }
}
