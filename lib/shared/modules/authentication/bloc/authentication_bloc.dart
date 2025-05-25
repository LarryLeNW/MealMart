import 'package:v1_ecommerce/shared/modules/authentication/resources/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authRepository;

  AuthenticationBloc(this._authRepository) : super(Unauthenticated()) {
    on<LoginRequested>((event, emit) async {
      emit(Authenticating());
      try {
        final loginResponse = await _authRepository.login(
          event.username,
          event.password,
        );
        if (loginResponse.result?.authenticated == true) {
          final res = await _authRepository.getUserInfo(
            loginResponse.result!.token,
          );
          print(res.result);
          print("info user ok : ");
          emit(Authenticated(res.result, loginResponse.result!.token));
        } else {
          emit(AuthenticationError('Authentication failed'));
          emit(Unauthenticated());
        }
      } catch (e) {
        emit(AuthenticationError(e.toString()));
        emit(Unauthenticated());
      }
    });

    on<LogoutRequested>((event, emit) {
      emit(Unauthenticated());
    });
  }
}
