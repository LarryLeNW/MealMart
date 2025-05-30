package com.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.server.entity.payment.Payment;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Integer> {
}
