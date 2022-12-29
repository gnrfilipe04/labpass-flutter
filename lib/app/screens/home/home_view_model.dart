import 'package:flutter/material.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/repositories/PassRepository.dart';
import 'package:labpass/app/screens/login/login_view_model.dart';
import 'package:labpass/app/theme/colors.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  PassRepository _passRepository = new PassRepository();
  LoginViewModel _loginViewModel = provider<LoginViewModel>();

  @observable
  late List<Pass> listOfPass = _passRepository.passwords;

  @computed
  CircleAvatar get avatar => _loginViewModel.user != null
      ? CircleAvatar(
          backgroundColor: CustomColors.primary300,
          backgroundImage: NetworkImage(_loginViewModel.user!.photo),
        )
      : CircleAvatar(
          backgroundColor: CustomColors.primary300,
        );

  @action
  setInitialPasswords({required List<Pass> passList}) {
    _passRepository.setPassList(initPasswordsList: passList);

    listOfPass = _passRepository.passwords;
  }

  @action
  addPass({required Pass pass}) {
    _passRepository.addPassword(pass: pass);

    listOfPass = _passRepository.passwords;
  }

  @action
  removePass({required Pass pass}) {
    _passRepository.removePassword(pass: pass);

    listOfPass = _passRepository.passwords;
  }
}
