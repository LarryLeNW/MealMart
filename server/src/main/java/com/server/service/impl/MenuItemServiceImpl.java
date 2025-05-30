package com.server.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.server.dto.request.menu.MenuItemCreation;
import com.server.dto.response.menu.MenuItemResponse;
import com.server.entity.product.MenuItem;
import com.server.mapper.MenuItemMapper;
import com.server.repository.MenuItemReposity;
import com.server.service.MenuItemService;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class MenuItemServiceImpl implements MenuItemService{
	
	MenuItemReposity menuItemReposity; 
	MenuItemMapper menuItemMapper; 
	
	@Override
	public MenuItemResponse create(MenuItemCreation request) {
		MenuItem newMenuItem = menuItemMapper.toMenuItem(request); 
		return menuItemMapper.toMenuItemResponse(menuItemReposity.save(newMenuItem)); 
	}

	@Override
	public List<MenuItem> getAll() {
		return null;
	}

	@Override
	public void delete(Long menuCateId) {
		
	}

	@Override
	public MenuItem update(Long menuCateId, MenuItem request) {
		return null;
	}

}
