import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
    return Scaffold(
        body: Observer(
            builder: (context) => (Stack(
                  children: [
                    AnimatedPositioned(
                        top: MediaQuery.of(context).size.height /
                            (!_loginViewModel.isLogged ? 3 : 25),
                        right: !_loginViewModel.isLogged
                            ? 0
                            : MediaQuery.of(context).size.width / 1.3,
                        left: 20,
                        curve: Curves.easeInBack,
                        child: SvgPicture.asset('assets/LOGO.svg',
                            semanticsLabel: 'Acme Logo'),
                        duration: Duration(milliseconds: 1000)),
                    AnimatedPositioned(
                        top: MediaQuery.of(context).size.height / 2.1,
                        right: !_loginViewModel.isLogged
                            ? 0
                            : -MediaQuery.of(context).size.width,
                        left: !_loginViewModel.isLogged
                            ? 0
                            : MediaQuery.of(context).size.width,
                        child: _text(),
                        duration: Duration(milliseconds: 1000)),
                    AnimatedPositioned(
                        top: MediaQuery.of(context).size.height / 1.78,
                        right: !_loginViewModel.isLogged
                            ? 20
                            : MediaQuery.of(context).size.width,
                        left: !_loginViewModel.isLogged
                            ? 20
                            : -MediaQuery.of(context).size.width,
                        child: MyButton(
                            icon: Icon(
                              CommunityMaterialIcons.google,
                              color: Theme.of(context).primaryColor,
                              size: 30,
                            ),
                            onPressed: () =>
                                _loginViewModel.onLoginWithGoogle(),
                            title: 'Continuar com google',
                            bgColor: CustomColors.secondary600),
                        duration: Duration(milliseconds: 1000)),
                    AnimatedPositioned(
                        top: MediaQuery.of(context).size.height / 1.57,
                        right: !_loginViewModel.isLogged
                            ? 20
                            : -MediaQuery.of(context).size.width,
                        left: !_loginViewModel.isLogged
                            ? 20
                            : MediaQuery.of(context).size.width,
                        child: MyButton(
                            icon: Icon(
                              CommunityMaterialIcons.facebook,
                              color: Theme.of(context).primaryColor,
                              size: 30,
                            ),
                            onPressed: () => {_loginViewModel.onLogout()},
                            title: 'Continuar com facebook',
                            bgColor: CustomColors.secondary600),
                        duration: Duration(milliseconds: 1000)),
                  ],
                ))));
  }
}

_text() {
  return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
          text: 'Gerencie suas senhas\nem ',
          style: TextStyle(
            color: CustomColors.secondary500,
            fontSize: 20,
          ),
          children: <InlineSpan>[
            TextSpan(
                text: 'um só lugar',
                style: TextStyle(
                  color: CustomColors.secondary50,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ))
          ]));
}
