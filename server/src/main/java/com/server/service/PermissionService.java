package com.server.service;

import com.server.dto.request.autho.PermissionRequest;
import com.server.dto.response.autho.PermissionResponse;

import java.util.List;

public interface PermissionService {
    PermissionResponse create(PermissionRequest request);

    List<PermissionResponse> getAll();

    void delete(String permissionId);
}
