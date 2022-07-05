import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mj_shopping/pages/Date_time_picker.dart';
import 'package:mj_shopping/pages/baseline.dart';
import 'package:mj_shopping/pages/bottomsheet.dart';
import 'package:mj_shopping/pages/carousel.dart';
import 'package:mj_shopping/pages/checkbox.dart';
import 'package:mj_shopping/pages/floating_button.dart';
import 'package:mj_shopping/pages/grid.dart';
import 'package:mj_shopping/pages/login1.dart';
import 'package:mj_shopping/pages/radiobutton.dart';
import 'package:mj_shopping/pages/richtext.dart';
import 'package:mj_shopping/pages/snackbar.dart';
import 'package:mj_shopping/pages/switch_button.dart';

import '../drawer/drawer.dart';
import 'alert.dart';
import 'dropdown.dart';

final _darktheme = ThemeData(
  brightness: Brightness.dark,
);
final _lighttheme = ThemeData(
  brightness: Brightness.dark,
);

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var _isSwitch = false;

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
                  _isSwitch = value;
                  if (_isSwitch = value) {
                    _darktheme;
                  } else {
                    _lighttheme;
                  }
                });
              },
            )
          ],
          // actions: [Icon(CupertinoIcons.scissors_alt,size: 25,),Padding(padding: EdgeInsets.only(right: 20))],
        ),
        drawer: mydrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text(
                          'Snackbar',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => snackbar()));
                        },
                        child: Text(
                          'Snackbar',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => floating_button()));
                        },
                        child: Text(
                          'Floating',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => grid()));
                        },
                        child: Text(
                          'Grid',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => alert()));
                        },
                        child: Text(
                          'Alert',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => date_time()));
                        },
                        child: Text(
                          'Date_time_pi',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => bottomsheet()));
                        },
                        child: Text(
                          'BottomSheet',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => carousel()));
                        },
                        child: Text(
                          'carousel',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => dropdown()));
                        },
                        child: Text(
                          'Dropdown',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => checkbox()));
                        },
                        child: Text(
                          'Checkbox',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => radio1()));
                        },
                        child: Text(
                          'Radio',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => switch_button()));
                        },
                        child: Text(
                          'Switch',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => richtext()));
                        },
                        child: Text(
                          'Richtext',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => baseline()));
                        },
                        child: Text(
                          'Baseline',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
