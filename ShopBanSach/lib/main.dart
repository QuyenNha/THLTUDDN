
import 'package:flutter/material.dart';
import 'package:tesst/routes.dart';
import 'package:tesst/screens/splash/splash_screen.dart';
import 'package:tesst/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NP3Q',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
