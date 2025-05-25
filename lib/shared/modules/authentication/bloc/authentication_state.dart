import 'package:v1_ecommerce/shared/modules/authentication/models/user_data.dart';

abstract class AuthenticationState {}

class Unauthenticated extends AuthenticationState {}

class Authenticating extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final UserData? user;
  final String token;

  Authenticated(this.user, this.token);
}

class AuthenticationError extends AuthenticationState {
  final String message;

  AuthenticationError(this.message);
}
