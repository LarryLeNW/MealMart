package com.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.server.entity.order.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
}
