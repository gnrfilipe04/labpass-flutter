import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/screens/login/login_view_model.dart';
import 'package:labpass/app/theme/colors.dart';
import 'package:labpass/app/widgets/my_button.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginViewModel _loginViewModel = provider<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    print(_loginViewModel.user);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 35,
              ),
              SvgPicture.asset('assets/LOGO.svg', semanticsLabel: 'Acme Logo'),
              MyButton(
                  onPressed: () => _loginViewModel.onLoginWithGoogle(),
                  title: 'Continuar com google',
                  bgColor: CustomColors.secondary600),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                  onPressed: () => _loginViewModel.onLogout(),
                  title: 'Sair',
                  bgColor: CustomColors.secondary600),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
