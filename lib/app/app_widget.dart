import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:labpass/app/screens/login/login_view.dart';
import 'package:labpass/app/screens/newpass/newpass_view.dart';
import 'package:labpass/app/theme/custom_theme.dart';
import 'package:labpass/firebase_options.dart';

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
      home: const NewPass(),
    );
  }
}
