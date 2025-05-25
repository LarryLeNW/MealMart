class LoginResponse {
  final String token;
  final bool authenticated;

  LoginResponse({required this.token, required this.authenticated});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'] as String,
      authenticated: json['authenticated'] as bool,
    );
  }

  Map<String, dynamic> toJson() => {
    'token': token,
    'authenticated': authenticated,
  };
}
