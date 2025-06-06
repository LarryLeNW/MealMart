package com.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.server.entity.auth.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, String> {}
