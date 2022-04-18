package com.ivyjochem.oc.controller.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
public class item implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;
    private String sizes;
    private String price;
    private String imageURL;
    private String description;

    @ManyToOne
    @JoinColumn(name = "id")
    private order order;

    public order getorder() {
        return order;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
