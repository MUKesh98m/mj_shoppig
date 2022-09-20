import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class getdata extends StatefulWidget {
  const getdata({Key? key}) : super(key: key);

  @override
  State<getdata> createState() => _getdataState();
}

class _getdataState extends State<getdata> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        controller: _controller,
        decoration:
            InputDecoration(labelText: 'Enter your Name', hintText: 'Name'),
      ),
    );
  }
}