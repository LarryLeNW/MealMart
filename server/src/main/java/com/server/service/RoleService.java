package com.server.service;

import com.server.dto.request.autho.RoleRequest;
import com.server.dto.response.autho.RoleResponse;

import java.util.List;

public interface RoleService {

    RoleResponse create(RoleRequest request);

    List<RoleResponse> getAll();

    void delete(String roleId);
}
