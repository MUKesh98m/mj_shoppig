
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radio1 extends StatefulWidget {
  const radio1({Key? key}) : super(key: key);

  @override
  State<radio1> createState() => _radio1State();
}

class _radio1State extends State<radio1> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Male"),
            leading: Radio(
                value: 1,
                groupValue: _value,
                onChanged: (int? value) {
                  setState(() {
                    _value = value!;
                  });
                }),
          ),
          ListTile(
            title: Text("Male"),
            leading: Radio(
                value: 2,
                groupValue: _value,
                onChanged: (int? value) {
                  setState(() {
                    _value = value!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
