import 'package:v1_ecommerce/shared/modules/authentication/bloc/authentication_bloc.dart';

import '../resources/authentication_repository.dart';

class AuthenticationBlocController {
  final AuthenticationBloc authenticationBloc;

  AuthenticationBlocController(AuthenticationRepository repository)
    : authenticationBloc = AuthenticationBloc(repository);

  void dispose() {
    authenticationBloc.close();
  }
}
