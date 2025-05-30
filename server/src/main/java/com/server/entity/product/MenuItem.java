package com.server.entity.product;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Set;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.FieldDefaults;
import jakarta.persistence.JoinColumn;


@ToString
@Entity
@Getter
@Setter
@Table(name = "menu_item")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MenuItem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String name;

	@Column(columnDefinition = "TEXT")
	String description;
	
	Double calories;
	
	BigDecimal price;
	
	@Max(value = 99)
	@Min(value = 0)
	@Column(name = "discount")
	Float discount;

    @Column(name = "stars")
    Integer stars;
    
    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
        name = "menu_item_ingredient",
        joinColumns = @JoinColumn(name = "menu_item_id"),
        inverseJoinColumns = @JoinColumn(name = "ingredientitem_id")
    )
    Set<MenuIngredient> ingredients;
    
    @OneToOne
    MenuCategory menuCate;
    
    @CreationTimestamp
    @Column(name = "created_at")
    LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updated_at")
    LocalDateTime updatedAt;
    
}
