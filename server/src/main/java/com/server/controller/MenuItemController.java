package com.server.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.server.dto.request.common.ApiResponse;
import com.server.dto.request.menu.MenuItemCreation;
import com.server.dto.response.menu.MenuItemResponse;
import com.server.service.MenuItemService;

import jakarta.validation.Valid;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/menu-item")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class MenuItemController {
		
	MenuItemService menuItemService;
	
    @PostMapping
    ApiResponse<MenuItemResponse> create(@RequestBody @Valid MenuItemCreation request) {
        return ApiResponse.<MenuItemResponse>builder()
                .result(menuItemService.create(request))
                .build();
    }
    

    
}
