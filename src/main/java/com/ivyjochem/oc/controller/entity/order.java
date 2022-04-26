package com.ivyjochem.oc.controller.entity;

import com.ivyjochem.oc.util.TimestampAttributeConverter;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


/**
 * The type Order.
 */
@Data
@Entity
public class order implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    private String shippingAddress;
    private String total;

    @CreationTimestamp
    @Convert(converter = TimestampAttributeConverter.class)
    @EqualsAndHashCode.Exclude
    private LocalDateTime orderDate;

    @ElementCollection
    private List<String> items = new ArrayList<String>();

    @ManyToOne
    @JoinColumn(name="USER", referencedColumnName="ID")
    @NotFound(action= NotFoundAction.IGNORE)
    private user user;

    /**
     * Gets user.
     *
     * @return the user
     */
    public com.ivyjochem.oc.controller.entity.user getUser() {
        return user;
    }

    /**
     * Sets user.
     *
     * @param user the user
     */
    public void setUser(com.ivyjochem.oc.controller.entity.user user) {
        this.user = user;
    }

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
     * Gets order date.
     *
     * @return the order date
     */
    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    /**
     * Sets order date.
     *
     * @param orderDate the order date
     */
    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    /**
     * Gets items.
     *
     * @return the items
     */
    public List<String> getItems() {
        return items;
    }

    /**
     * Sets items.
     *
     * @param items the items
     */
    public void setItems(List<String> items) {
        this.items = items;
    }
}
