package com.server.controller;

import java.awt.Menu;
import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.server.dto.request.ApiResponse;
import com.server.dto.request.UserUpdateRequest;
import com.server.dto.request.menuCate.MenuCateRequest;
import com.server.dto.request.menuCate.MenuCateUpdateRequest;
import com.server.dto.response.UserResponse;
import com.server.entity.MenuCategory;
import com.server.service.MenuCateService;
import com.server.service.PermissionService;

import jakarta.validation.Valid;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/menu-cate")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class MenuCateController {
		
	MenuCateService menuCateService;
	
    @PostMapping
    ApiResponse<MenuCategory> create(@RequestBody @Valid MenuCateRequest request) {
        return ApiResponse.<MenuCategory>builder()
                .result(menuCateService.create(request))
                .build();
    }
    
    @GetMapping
    ApiResponse<List<MenuCategory>> getAll() {
        return ApiResponse.<List<MenuCategory>>builder()
                .result(menuCateService.getAll())
                .build();
    }
	
    @DeleteMapping("/{menuCateId}")
    ApiResponse<String> delete(@PathVariable String menuCateId) {
    	menuCateService.delete(menuCateId);
        return ApiResponse.<String>builder().result("Menu Category has been deleted").build();
    }
    
    @PutMapping("/{menuCateId}")
    ApiResponse<MenuCategory> updateUser(@PathVariable String menuCateId, @RequestBody MenuCateUpdateRequest request) {
        return ApiResponse.<MenuCategory>builder()
                .result(menuCateService.update(menuCateId, request))
                .build();
    }
    
}
