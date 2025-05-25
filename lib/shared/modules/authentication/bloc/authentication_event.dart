abstract class AuthenticationEvent {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

class LoginRequested extends AuthenticationEvent {
  final String username;
  final String password;

  const LoginRequested({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}

class LogoutRequested extends AuthenticationEvent {
  const LogoutRequested();
}
