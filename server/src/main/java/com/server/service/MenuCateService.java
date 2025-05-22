package com.server.service;

import java.util.HashSet;
import java.util.List;

import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.server.dto.request.ApiResponse;
import com.server.dto.request.UserUpdateRequest;
import com.server.dto.request.menuCate.MenuCateRequest;
import com.server.dto.request.menuCate.MenuCateUpdateRequest;
import com.server.dto.response.UserResponse;
import com.server.entity.MenuCategory;
import com.server.entity.User;
import com.server.exception.AppException;
import com.server.exception.ErrorCode;
import com.server.mapper.MenuCateMapper;
import com.server.repository.InvalidatedTokenRepository;
import com.server.repository.MenuCateReposity;
import com.server.repository.UserRepository;
import com.server.utils.Helpers;

import jakarta.persistence.EntityNotFoundException;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class MenuCateService {
	MenuCateReposity menuCateRepository;
	MenuCateMapper menuCateMapper;

	public MenuCategory create(MenuCateRequest request) {
		MenuCategory newMenuCate = menuCateMapper.toMenuCategory(request);
		return menuCateRepository.save(newMenuCate);
	}

	public List<MenuCategory> getAll() {
		return menuCateRepository.findAll();
	}

	@PreAuthorize("hasRole('ADMIN')")
	public void delete(String menuCateId) {
		menuCateRepository.deleteById(menuCateId);
	}

	@PostAuthorize("hasRole('ADMIN')")
	public MenuCategory update(String menuCateId, MenuCateUpdateRequest request) {
		MenuCategory menuCateFound = menuCateRepository.findById(menuCateId)
				.orElseThrow(() -> new EntityNotFoundException("Not Found Menu Category"));
		
		Helpers.updateFieldEntityIfChanged(request.getName(), menuCateFound.getName(), menuCateFound::setName);
		Helpers.updateFieldEntityIfChanged(request.getDescription(), menuCateFound.getDescription(), menuCateFound::setDescription);
		
		return menuCateRepository.save(menuCateFound); 
	}		
}
