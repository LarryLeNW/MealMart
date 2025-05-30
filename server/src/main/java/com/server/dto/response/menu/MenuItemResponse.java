package com.server.dto.response.menu;

import java.math.BigDecimal;
import java.util.Set;

import com.server.entity.product.MenuIngredient;

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
public class MenuItemResponse {
	Long id ; 
	String name;
	String description;
	Double calories; 
	BigDecimal price;
	Float discount;
	Integer stars;
	Set<MenuIngredient> ingredients;
}
