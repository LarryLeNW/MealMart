package com.server.dto.response.user;

import java.time.LocalDate;
import java.util.Set;

import com.server.constant.UserStatus;
import com.server.dto.response.autho.RoleResponse;

import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserResponse {
	String id;
	String username;
	String email;
	LocalDate dob;
	Set<RoleResponse> roles;
	UserStatus status;
}
