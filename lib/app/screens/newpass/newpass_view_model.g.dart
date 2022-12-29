// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newpass_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewPassViewModel on _NewPassViewModelBase, Store {
  late final _$listOfPassAtom =
      Atom(name: '_NewPassViewModelBase.listOfPass', context: context);

  @override
  List<Pass> get listOfPass {
    _$listOfPassAtom.reportRead();
    return super.listOfPass;
  }

  @override
  set listOfPass(List<Pass> value) {
    _$listOfPassAtom.reportWrite(value, super.listOfPass, () {
      super.listOfPass = value;
    });
  }

  late final _$_NewPassViewModelBaseActionController =
      ActionController(name: '_NewPassViewModelBase', context: context);

  @override
  dynamic setInitialPasswords({required List<Pass> passList}) {
    final _$actionInfo = _$_NewPassViewModelBaseActionController.startAction(
        name: '_NewPassViewModelBase.setInitialPasswords');
    try {
      return super.setInitialPasswords(passList: passList);
    } finally {
      _$_NewPassViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addPass({required Pass pass}) {
    final _$actionInfo = _$_NewPassViewModelBaseActionController.startAction(
        name: '_NewPassViewModelBase.addPass');
    try {
      return super.addPass(pass: pass);
    } finally {
      _$_NewPassViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removePass({required Pass pass}) {
    final _$actionInfo = _$_NewPassViewModelBaseActionController.startAction(
        name: '_NewPassViewModelBase.removePass');
    try {
      return super.removePass(pass: pass);
    } finally {
      _$_NewPassViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listOfPass: ${listOfPass}
    ''';
  }
}
