package com.server.service;

import java.text.ParseException;

import com.nimbusds.jose.JOSEException;
import com.server.dto.request.auth.AuthenticationRequest;
import com.server.dto.request.auth.IntrospectRequest;
import com.server.dto.request.auth.LogoutRequest;
import com.server.dto.request.auth.RefreshRequest;
import com.server.dto.response.auth.AuthenticationResponse;
import com.server.dto.response.common.IntrospectResponse;

public interface AuthenticationService {

    IntrospectResponse introspect(IntrospectRequest request) throws JOSEException, ParseException;

    AuthenticationResponse authenticate(AuthenticationRequest request);

    void logout(LogoutRequest request) throws ParseException, JOSEException;

    AuthenticationResponse refreshToken(RefreshRequest request) throws ParseException, JOSEException;
}
