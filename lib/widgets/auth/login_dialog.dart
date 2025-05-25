// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:v1_ecommerce/shared/modules/authentication/bloc/authentication_bloc.dart';
// import 'package:v1_ecommerce/shared/modules/authentication/bloc/authentication_bloc_public.dart';
// import 'package:v1_ecommerce/shared/modules/authentication/bloc/authentication_event.dart';
// import 'package:v1_ecommerce/shared/modules/authentication/bloc/authentication_state.dart';

// class LoginDialog extends StatefulWidget {
//   const LoginDialog({Key? key}) : super(key: key);

//   @override
//   State<LoginDialog> createState() => _LoginDialogState();
// }

// class _LoginDialogState extends State<LoginDialog> {
//   final _formKey = GlobalKey<FormState>();

//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   bool _isLoading = false;
//   String? _errorMessage;

//   void _submit() {
//     if (!_formKey.currentState!.validate()) return;

//     final username = _usernameController.text.trim();
//     final password = _passwordController.text.trim();

//     context.read<AuthenticationBloc>().add(LoginRequested(username, password));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthenticationBloc, AuthenticationState>(
//       listener: (context, state) {
//         if (state is Authenticating) {
//           setState(() {
//             _isLoading = true;
//             _errorMessage = null;
//           });
//         } else {
//           setState(() {
//             _isLoading = false;
//           });
//         }

//         if (state is AuthenticationError) {
//           setState(() {
//             _errorMessage = state.message;
//           });
//         }

//         if (state is Authenticated) {
//           setState(() {
//             _errorMessage = null;
//           });
//           Navigator.of(context).pop(true);
//           ScaffoldMessenger.of(
//             context,
//           ).showSnackBar(const SnackBar(content: Text('Chào mừng trở lại')));
//         }
//       },
//       builder: (context, state) {
//         return AlertDialog(
//           title: const Text('Đăng nhập'),
//           content: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextFormField(
//                   controller: _usernameController,
//                   decoration: const InputDecoration(labelText: 'Tên đăng nhập'),
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Vui lòng nhập tên đăng nhập';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: _passwordController,
//                   decoration: const InputDecoration(labelText: 'Mật khẩu'),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value == null || value.trim().isEmpty) {
//                       return 'Vui lòng nhập mật khẩu';
//                     }
//                     if (value.trim().length < 6) {
//                       return 'Mật khẩu ít nhất 6 ký tự';
//                     }
//                     return null;
//                   },
//                 ),
//                 if (_errorMessage != null) ...[
//                   const SizedBox(height: 10),
//                   Text(
//                     _errorMessage!,
//                     style: const TextStyle(color: Colors.red),
//                   ),
//                 ],
//               ],
//             ),
//           ),
//           actions: [
//             if (_isLoading)
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: CircularProgressIndicator(),
//               )
//             else ...[
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('Hủy'),
//               ),
//               ElevatedButton(
//                 onPressed: _submit,
//                 child: const Text('Đăng nhập'),
//               ),
//             ],
//           ],
//         );
//       },
//     );
//   }
// }
