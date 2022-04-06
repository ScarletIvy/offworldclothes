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

}
