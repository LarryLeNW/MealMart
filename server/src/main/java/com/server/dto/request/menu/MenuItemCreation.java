package com.server.dto.request.menu;

import java.math.BigDecimal;
import java.util.Set;

import com.server.entity.product.MenuIngredient;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.FieldDefaults;

@ToString
@Data
@Getter
@Setter
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MenuItemCreation {
	
	@NotNull
	String name;

	String description; 
	
	@NotNull
	@Min(value = 1 , message = "calories required than 1 ")
	Double calories;
	
	@NotNull
	@Min(value = 1 , message = "price required than 1 ")
	BigDecimal price;
	
	@Max(value = 99)
	@Min(value = 0)
	Float discount;
	
//	@NotNull
    Set<MenuIngredient> ingredients;
	
    
}
