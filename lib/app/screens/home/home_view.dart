import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/screens/home/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeViewModel _homeViewModel = provider<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (context) => (_homeViewModel.avatar)),
    );
  }
}
