import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mj_shopping/pages/home.dart';
import 'package:mj_shopping/pages/mutipleselection.dart';

import 'dropdown_using_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropDownButton',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}