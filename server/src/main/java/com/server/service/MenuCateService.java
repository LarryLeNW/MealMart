package com.server.service;

import com.server.dto.request.menu.MenuCateRequest;
import com.server.dto.request.menu.MenuCateUpdateRequest;
import com.server.entity.product.MenuCategory;

import java.util.List;

public interface MenuCateService {

    MenuCategory create(MenuCateRequest request);

    List<MenuCategory> getAll();

    void delete(String menuCateId);

    MenuCategory update(String menuCateId, MenuCateUpdateRequest request);
}
