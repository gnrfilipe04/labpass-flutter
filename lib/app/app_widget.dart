import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:labpass/app/provider.dart';
import 'package:labpass/app/router.dart' as router;
import 'package:labpass/app/services/NavigationService.dart';
import 'package:labpass/app/theme/custom_theme.dart';
import 'package:labpass/firebase_options.dart';
import 'package:labpass/app/constants/route_paths.dart' as routes;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('Initialized default app $app');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeDefault();

    return MaterialApp(
      title: 'labpass',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.darkTheme,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.LoginRoute,
      navigatorKey: provider<NavigationService>().navigatorKey,
    );
  }
}
