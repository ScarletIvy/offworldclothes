package com.ivyjochem.oc.controller.entity;

import lombok.Data;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * The type Item.
 */
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

    private String name;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinColumn(name="ORDER", referencedColumnName="ID")
    @NotFound(action= NotFoundAction.IGNORE)
    private Set<order> orders = new LinkedHashSet<>();

    /**
     * Gets orders.
     *
     * @return the orders
     */
    public String getName() {
        return name;
    }

    /**
     * Sets orders.
     *
     * @param name the orders
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Gets orders.
     *
     * @return the orders
     */
    public Set<order> getOrders() {
        return orders;
    }

    /**
     * Sets orders.
     *
     * @param orders the orders
     */
    public void setOrders(Set<order> orders) {
        this.orders = orders;
    }

    /**
     * Gets .
     *
     * @return the
     */

    /**
     * Gets sizes.
     *
     * @return the sizes
     */
    public String getSizes() {
        return sizes;
    }

    /**
     * Sets sizes.
     *
     * @param sizes the sizes
     */
    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    /**
     * Gets price.
     *
     * @return the price
     */
    public String getPrice() {
        return price;
    }

    /**
     * Sets price.
     *
     * @param price the price
     */
    public void setPrice(String price) {
        this.price = price;
    }

    /**
     * Gets image url.
     *
     * @return the image url
     */
    public String getImageURL() {
        return imageURL;
    }

    /**
     * Sets image url.
     *
     * @param imageURL the image url
     */
    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    /**
     * Gets description.
     *
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets description.
     *
     * @param description the description
     */
    public void setDescription(String description) {
        this.description = description;
    }

}
