package com.server.mapper;

import org.mapstruct.Mapper;

import com.server.dto.request.PermissionRequest;
import com.server.dto.response.PermissionResponse;
import com.server.entity.Permission;


@Mapper(componentModel = "spring")
public interface PermissionMapper {
	Permission toPermission(PermissionRequest request);

    PermissionResponse toPermissionResponse(Permission permission);
}
