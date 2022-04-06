package com.ivyjochem.oc.controller.entity;

import com.ivyjochem.oc.util.TimestampAttributeConverter;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;


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

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Set<item> items = new HashSet<>();

    @ManyToOne(optional = false)
    private user users;

    public user getUsers() {
        return users;
    }

    public void setUsers(user users) {
        this.users = users;
    }
}
