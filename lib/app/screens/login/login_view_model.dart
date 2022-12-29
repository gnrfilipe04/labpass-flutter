import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:labpass/app/screens/login/service/google_signin_service.dart';
import 'package:mobx/mobx.dart';
import 'package:labpass/app/screens/login/login_model.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  MyUser? user = null;

  @action
  onLoginWithGoogle() async {
    GoogleSigninService googleSigninService = new GoogleSigninService();

    UserCredential userCredential =
        await googleSigninService.signInWithGoogle();

    if (userCredential.user == null) return null;

    User userGoogle = userCredential.user as User;

    user = new MyUser(
        name: userGoogle.displayName as String,
        email: userGoogle.email as String,
        photo: userGoogle.photoURL as String);
  }

  @action
  onLogout() async {
    GoogleSigninService googleSigninService = new GoogleSigninService();

    final GoogleSignInAccount? result = await googleSigninService.signOut();

    user = null;

    return result;
  }
}
