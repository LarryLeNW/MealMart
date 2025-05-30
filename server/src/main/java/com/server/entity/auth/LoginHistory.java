package com.server.entity.auth;


import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

import com.server.entity.user.User;

@Entity
@Table(name = "login_history")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class LoginHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    User user;

    @Column(name = "login_time", nullable = false)
    LocalDateTime loginTime;

    @Column(name = "logout_time")
    LocalDateTime logoutTime;

    @Column(name = "ip_address", length = 45)
    String ipAddress;

    @Column(name = "user_agent", length = 255)
    String userAgent;

}