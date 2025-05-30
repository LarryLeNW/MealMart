package com.server.mapper;

import org.mapstruct.Mapper;

import com.server.dto.request.autho.PermissionRequest;
import com.server.dto.response.autho.PermissionResponse;
import com.server.entity.auth.Permission;


@Mapper(componentModel = "spring")
public interface PermissionMapper {
	Permission toPermission(PermissionRequest request);

    PermissionResponse toPermissionResponse(Permission permission);
}
