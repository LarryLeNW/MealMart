package com.server.entity;

import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "menu_ingredient")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MenuIngredient {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String name;
	
    @ManyToMany(mappedBy = "ingredients")
    Set<MenuItem> menuItems;

}
