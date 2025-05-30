package com.server.entity.user;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "user_addresses")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserAddress {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long addressId;

    @Column(nullable = false)
    Long userId;

    @Column(nullable = false, length = 150)
    String recipientName;

    @Column(nullable = false, length = 20)
    String phone;

    @Column(nullable = false, length = 255)
    String addressLine1;

    @Column(length = 255)
    String addressLine2;

    @Column(nullable = false, length = 100)
    String city;

    @Column(nullable = false, length = 100)
    String state;

    @Column(nullable = false, length = 20)
    String postalCode;

    @Column(nullable = false, length = 100)
    String country;

    @Column(nullable = false)
    Boolean isDefault = false;

    @Column(nullable = false)
    LocalDateTime createdAt;

    @Column(nullable = false)
    LocalDateTime updatedAt;

}
