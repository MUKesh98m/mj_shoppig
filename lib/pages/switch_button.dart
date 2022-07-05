import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class switch_button extends StatefulWidget {
  const switch_button({Key? key}) : super(key: key);

  @override
  State<switch_button> createState() => _switch_buttonState();
}

class _switch_buttonState extends State<switch_button> {
  var _isSwitch = false;
  var _isselected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isSwitch ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text("Mj Shopping"),
        actions: [
          Switch(
            value: _isSwitch,
            activeColor: Colors.red,
            activeTrackColor: Colors.teal,
            inactiveThumbColor: Colors.yellow,
            onChanged: (value) {
              setState(() {
                if (_isSwitch = value) {
                } else {}
              });
            },
          ),
        ],
      ),
      body: Scaffold(
        body: Container(
          child: ToggleButtons(
              children: [
                Icon(Icons.house_rounded),
                Icon(Icons.bluetooth_audio),
                Icon(Icons.surround_sound),
              ], isSelected: _isselected, onPressed: (index) {
                setState((){
                  _isselected[index]=!_isselected[index];
                });
          }),
        ),
      ),
    );
  }
}
