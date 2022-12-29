import 'package:labpass/app/screens/home/home_view_model.dart';
import 'package:labpass/app/screens/login/login_view_model.dart';

import 'package:get_it/get_it.dart';
import 'package:labpass/app/screens/newpass/newpass_view_model.dart';
import 'package:labpass/app/services/NavigationService.dart';

GetIt provider = GetIt.instance;

void setupProvider() {
  provider.registerLazySingleton(() => NavigationService());
  provider.registerLazySingleton(() => LoginViewModel());
  provider.registerLazySingleton(() => HomeViewModel());
  provider.registerLazySingleton(() => NewPassViewModel());
}
