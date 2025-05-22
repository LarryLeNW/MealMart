package com.server.entity;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "menu_category")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MenuCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    
    @Column(name = "name", columnDefinition = "VARCHAR(255) COLLATE utf8mb4_unicode_ci")
    String name;
    
    @Column(name = "description" ,columnDefinition = "VARCHAR(255) COLLATE utf8mb4_unicode_ci")
    String description; 
    
    String image;
    
    @CreationTimestamp	
	@Column(name = "created_at")
	LocalDateTime createdAt;

	@UpdateTimestamp
	@Column(name = "updated_at")
	LocalDateTime updatedAt;
}
