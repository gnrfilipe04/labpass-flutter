import 'package:labpass/app/repositories/PassRepository.dart';
import 'package:mobx/mobx.dart';
part 'newpass_view_model.g.dart';

class NewPassViewModel = _NewPassViewModelBase with _$NewPassViewModel;

abstract class _NewPassViewModelBase with Store {
  PassRepository _passRepository = new PassRepository();

  @observable
  late List<Pass> listOfPass = _passRepository.passwords;

  @action
  setInitialPasswords({required List<Pass> passList}) {
    _passRepository.initializePassList(initPasswordsList: passList);

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
