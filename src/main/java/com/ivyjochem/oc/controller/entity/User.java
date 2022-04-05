package com.ivyjochem.oc.controller.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
/**
 * The User.
 */
@Data
@Entity
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String userName;
    private String streetAddress;
    private String zipCode;
    private String city;
    private String state;


    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Set<Order> orders = new HashSet<>();


    /**
     * Add an order.
     *
     * @param order the order
     */
    public void addOrder(Order order) {
        orders.add(order);

    }

}
