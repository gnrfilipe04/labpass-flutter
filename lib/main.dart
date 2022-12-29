import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labpass/app/app_widget.dart';
import 'package:labpass/app/provider.dart';

void main() {
  setupProvider();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));

  runApp(const MyApp());
}
