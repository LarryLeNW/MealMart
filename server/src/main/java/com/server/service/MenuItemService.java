package com.server.service;

import java.util.List;

import com.server.dto.request.menu.MenuItemCreation;
import com.server.dto.response.menu.MenuItemResponse;
import com.server.entity.product.MenuItem;

public interface MenuItemService {

	MenuItemResponse create(MenuItemCreation request);

	List<MenuItem> getAll();

	void delete(Long menuCateId);

	MenuItem update(Long menuCateId, MenuItem request);
}
