import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  var _ischeck1 = false;
  var _ischeck2 = false;
  var _ischeck3 = false;
  var _ischeck4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                      value: _ischeck1,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          _ischeck1 = value!;
                        });
                      }),
                  Text("Male"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: _ischeck2,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          _ischeck2 = value!;
                        });
                      }),
                  Text("Male"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: _ischeck3,
                      activeColor: Colors.red,
                      onChanged: (value) {
                        setState(() {
                          _ischeck3 = value!;
                        });
                      }),
                  Text("Male"),
                ],
              ),
              CheckboxListTile(
                  value: _ischeck4,
                  secondary: Icon(Icons.account_balance),
                  title: Text("Mukesh"),
                  subtitle: Text("Mahajan"),
                  onChanged: (value) {
                    setState(() {
                      _ischeck4 = value!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
