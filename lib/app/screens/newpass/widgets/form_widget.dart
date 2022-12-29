import 'package:flutter/material.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/screens/login/login_view_model.dart';
import 'package:labpass/app/widgets/my_input.dart';

// class FormWidget extends StatelessWidget {
//   FormWidget({Key? key}) : super(key: key);

//   final LoginViewModel _loginViewModel = provider<LoginViewModel>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _loginViewModel.formKey,
//       child: Column(
//         children: [
//           MyInput(
//             label: "E-mail",
//             controller: _loginViewModel.emailController,
//           ),
//           const SizedBox(height: 10),
//           MyInput(
//             label: "Senha",
//             controller: _loginViewModel.passwordController,
//           ),
//         ],
//       ),
//     );
//   }
// }
