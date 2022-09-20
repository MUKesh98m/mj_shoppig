import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class hero1 extends StatefulWidget {
  const hero1({super.key});

  @override
  State<hero1> createState() => _hero1State();
}

class _hero1State extends State<hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Hero(
          tag: 'dash',
          child: InkWell(
            child: Image.asset('assets/images/google.png'),
          )),
    );
  }
}
