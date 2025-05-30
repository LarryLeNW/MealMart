package com.server.service;

import com.server.dto.request.user.UserCreationRequest;
import com.server.dto.request.user.UserUpdateRequest;
import com.server.dto.response.user.UserResponse;

import java.util.List;

public interface UserService {

    UserResponse createUser(UserCreationRequest request);

    UserResponse getMyInfo();

    UserResponse updateUser(String userId, UserUpdateRequest request);

    void deleteUser(String userId);

    List<UserResponse> getUsers();

    UserResponse getUser(String id);
}
