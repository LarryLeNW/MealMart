package com.server.dto.request.menu;

import java.math.BigDecimal;
import java.util.Set;


import com.server.entity.product.MenuIngredient;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MenuItemUpdate {
	String name;

	String description; 
	
	@Min(value = 1 , message = "calories required than 1 ")
	Double calories;
	
	@Min(value = 1 , message = "price required than 1 ")
	BigDecimal price;
	
	@Max(value = 99)
	@Min(value = 0)
	Float discount;
	
    Set<MenuIngredient> ingredients;
}
