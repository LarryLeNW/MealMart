package com.server.mapper;

import org.mapstruct.Mapper;

import com.server.dto.request.menu.MenuCateRequest;
import com.server.entity.product.MenuCategory;

@Mapper(componentModel = "spring")
public interface MenuCateMapper {
	MenuCategory toMenuCategory(MenuCateRequest request) ;
}
