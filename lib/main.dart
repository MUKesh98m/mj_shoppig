import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:mj_shopping/pages/home.dart';

final _darktheme = ThemeData(
  brightness: Brightness.dark,
);
final _lighttheme = ThemeData(
  brightness: Brightness.light,
);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _switchvalue = false;
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switchvalue ? _darktheme  : _lighttheme,
      debugShowCheckedModeBanner: false,
      // theme:  ThemeData.dark(),
      home: AnimatedSplashScreen(
        splashIconSize: 300,
        splash: Lottie.asset('assets/gif/loader.json'),
        nextScreen: home(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
