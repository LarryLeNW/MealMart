package com.server.constant;

public class PublicEndpoint {
	public static final String[] PUBLIC_GET_ENDPOINTS = { "/users", "/auth/token", "/auth/introspect", "/auth/logout",
			"/auth/refresh", "/" , "/menu-cate", "/v3/api-docs/**", "/swagger-ui/**"};
	public static final String[] PUBLIC_POST_ENDPOINTS = { "/auth/**",  "/menu-item"  };
	public static final String[] PUBLIC_DELETE_ENDPOINTS = {};
	public static final String[] PUBLIC_PUT_ENDPOINTS = {};

}	
