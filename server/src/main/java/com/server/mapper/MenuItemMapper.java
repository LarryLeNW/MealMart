package com.server.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.server.dto.request.menu.MenuItemCreation;
import com.server.dto.response.menu.MenuItemResponse;
import com.server.entity.product.MenuItem;

@Mapper(componentModel = "spring")
public interface MenuItemMapper {
	@Mapping(target = "ingredients", ignore = true)
	MenuItem toMenuItem(MenuItemCreation request);

	MenuItemResponse toMenuItemResponse(MenuItem menuItem);
}
