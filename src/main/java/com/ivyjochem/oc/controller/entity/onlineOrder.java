package com.ivyjochem.oc.controller.entity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;


/**
 * The type Online order.
 */
@Data
@Entity
public class onlineOrder implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    private int userId;

    private String shippingAddress;
    private String total;


    /**
     * Gets shipping address.
     *
     * @return the shipping address
     */
    public String getShippingAddress() {
        return shippingAddress;
    }

    /**
     * Sets shipping address.
     *
     * @param shippingAddress the shipping address
     */
    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    /**
     * Gets total.
     *
     * @return the total
     */
    public String getTotal() {
        return total;
    }

    /**
     * Sets total.
     *
     * @param total the total
     */
    public void setTotal(String total) {
        this.total = total;
    }

    /**
     * Set user id.
     *
     * @param userid the userid
     */
    public void setUserId(int userid){
        this.userId = userid;
    }

    /**
     * Get user id int.
     *
     * @return the int
     */
    public int getUserId(){
        return userId;
    }

    /**
     * Gets id.
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

}
