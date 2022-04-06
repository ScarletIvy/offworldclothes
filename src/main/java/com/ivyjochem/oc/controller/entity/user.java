package com.ivyjochem.oc.controller.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
/**
 * The user.
 */
@Data
@Entity
public class user implements Serializable {

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
    private Set<order> orders = new HashSet<>();


    /**
     * Add an order.
     *
     * @param order the order
     */
    public void addOrder(order order) {
        orders.add(order);

    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}
