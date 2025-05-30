package com.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.server.entity.cart.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
}
