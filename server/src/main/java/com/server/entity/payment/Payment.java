package com.server.entity.payment;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.server.constant.PaymentMethod;
import com.server.constant.PaymentStatus;
import com.server.entity.order.Order;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    String id;
    
    @OneToOne
    Order order;
    
    @Enumerated(EnumType.STRING)
    @Column(nullable = false, columnDefinition = "ENUM('credit_card','bank_transfer','cash_on_delivery') default 'cash_on_delivery'")
    PaymentMethod method;
    
    @Enumerated(EnumType.STRING)
    @Column(nullable = false, columnDefinition = "ENUM('pending','completed','failed','refunded') default 'pending'")
    PaymentStatus status; 
    
    @Column(name = "total_amount", nullable = false, precision = 15, scale = 2)
    BigDecimal totalAmount;
    
    @Column(name = "transaction_id", unique = true)
    String transaction_id;
    
    LocalDateTime paid_at;
    
    @Column(name = "created_at", nullable = false)
    LocalDateTime createdAt;

    @Column(name = "updated_at")
    LocalDateTime updatedAt;
}
