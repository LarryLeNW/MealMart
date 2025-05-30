package com.server.dto.request.menu;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;

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
public class MenuCateUpdateRequest {
	@Length(min = 3 , max = 150)
	String name;

	@Length(min = 3 , max = 255)
	String description; 
	
	@URL
	String image; 
}
