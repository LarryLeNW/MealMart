package com.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.server.entity.MenuCategory;

@Repository
public interface MenuCateReposity extends JpaRepository<MenuCategory, String> {
}
