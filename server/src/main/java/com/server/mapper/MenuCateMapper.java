package com.server.mapper;

import org.mapstruct.Mapper;

import com.server.dto.request.menuCate.MenuCateRequest;
import com.server.entity.MenuCategory;

@Mapper(componentModel = "spring")
public interface MenuCateMapper {
	MenuCategory toMenuCategory(MenuCateRequest request) ;
}
