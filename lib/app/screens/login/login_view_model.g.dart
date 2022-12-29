// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  late final _$userAtom =
      Atom(name: '_LoginViewModelBase.user', context: context);

  @override
  MyUser? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(MyUser? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$onLoginWithGoogleAsyncAction =
      AsyncAction('_LoginViewModelBase.onLoginWithGoogle', context: context);

  @override
  Future onLoginWithGoogle() {
    return _$onLoginWithGoogleAsyncAction.run(() => super.onLoginWithGoogle());
  }

  late final _$onLogoutAsyncAction =
      AsyncAction('_LoginViewModelBase.onLogout', context: context);

  @override
  Future onLogout() {
    return _$onLogoutAsyncAction.run(() => super.onLogout());
  }

  late final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase', context: context);

  @override
  dynamic onLoginFacebook() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.onLoginFacebook');
    try {
      return super.onLoginFacebook();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
