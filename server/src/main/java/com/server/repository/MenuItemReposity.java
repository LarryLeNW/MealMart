package com.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.server.entity.product.MenuItem;

@Repository
public interface MenuItemReposity extends JpaRepository<MenuItem, Long> {
}
