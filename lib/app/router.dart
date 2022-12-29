import 'package:flutter/material.dart';
import 'package:labpass/app/constants/route_paths.dart' as routes;
import 'package:labpass/app/screens/home/home_view.dart';
import 'package:labpass/app/screens/login/login_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => Login());
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => Home());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(child: Text('No path for ${settings.name}')),
              ));
  }
}
