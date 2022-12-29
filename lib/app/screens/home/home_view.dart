import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/screens/login/login_view_model.dart';
import 'package:labpass/app/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final LoginViewModel _loginViewModel = provider<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
          builder: (context) => (_loginViewModel.user != null
              ? CircleAvatar(
                  backgroundColor: CustomColors.primary300,
                  backgroundImage: NetworkImage(_loginViewModel.user!.photo),
                )
              : CircleAvatar(
                  backgroundColor: CustomColors.primary300,
                ))),
    );
  }
}
