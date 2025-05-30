package com.server.service.impl;

import com.server.dto.request.menu.MenuCateRequest;
import com.server.dto.request.menu.MenuCateUpdateRequest;
import com.server.entity.product.MenuCategory;
import com.server.mapper.MenuCateMapper;
import com.server.repository.MenuCateReposity;
import com.server.service.MenuCateService;
import com.server.utils.Helpers;
import jakarta.persistence.EntityNotFoundException;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class MenuCateServiceImpl implements MenuCateService {

    MenuCateReposity menuCateRepository;
    MenuCateMapper menuCateMapper;

    @Override
    public MenuCategory create(MenuCateRequest request) {
        MenuCategory newMenuCate = menuCateMapper.toMenuCategory(request);
        return menuCateRepository.save(newMenuCate);
    }

    @Override
    public List<MenuCategory> getAll() {
        return menuCateRepository.findAll();
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public void delete(String menuCateId) {
        menuCateRepository.deleteById(menuCateId);
    }

    @Override
    @PostAuthorize("hasRole('ADMIN')")
    public MenuCategory update(String menuCateId, MenuCateUpdateRequest request) {
        MenuCategory menuCateFound = menuCateRepository.findById(menuCateId)
                .orElseThrow(() -> new EntityNotFoundException("Not Found Menu Category"));

        Helpers.updateFieldEntityIfChanged(request.getName(), menuCateFound.getName(), menuCateFound::setName);
        Helpers.updateFieldEntityIfChanged(request.getDescription(), menuCateFound.getDescription(), menuCateFound::setDescription);

        return menuCateRepository.save(menuCateFound);
    }
}
