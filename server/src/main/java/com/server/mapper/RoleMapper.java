package com.server.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.server.dto.request.autho.RoleRequest;
import com.server.dto.response.autho.RoleResponse;
import com.server.entity.auth.Role;


@Mapper(componentModel = "spring")
public interface RoleMapper {
    @Mapping(target = "permissions", ignore = true)
    Role toRole(RoleRequest request);

    RoleResponse toRoleResponse(Role role);
}
