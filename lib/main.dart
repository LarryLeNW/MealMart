import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './screens/home_screen.dart';
import './theme/app_theme.dart';
import 'shared/modules/authentication/bloc/authentication_bloc.dart';
import 'shared/modules/authentication/resources/authentication_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthenticationRepository();

    return RepositoryProvider.value(
      value: authRepository,
      child: BlocProvider(
        create: (context) => AuthenticationBloc(authRepository),
        child: MaterialApp(
          title: 'Food Delivery',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
