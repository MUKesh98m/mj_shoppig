
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  var _slide = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Column(
          children: [
            Slider(
                value: _slide,
                min: 0,
                max: 100,
                divisions: 5,
                label: _slide.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _slide = value;
                    Fluttertoast.showToast(msg: ' You Complete $_slide %');
                  });
                }),
          ],
        ),
      ),
    );
  }
}
