package com.server.dto.request.menu;

import org.hibernate.validator.constraints.URL;

import jakarta.validation.constraints.NotNull;
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
public class MenuCateRequest {
	
	@NotNull
	String name;

	String description; 
	
	@URL
	String image; 
}
