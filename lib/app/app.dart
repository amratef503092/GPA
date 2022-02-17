import 'dart:async';

import 'package:calculate_gpa/presentation/resources/route_manager.dart';
import 'package:calculate_gpa/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      onGenerateRoute:RouteGenerator.getRoute ,
      initialRoute: Routes.splashRoute,
    );
  }
}
