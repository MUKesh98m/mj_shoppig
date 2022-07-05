import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mj_shopping/pages/bottomsheet.dart';

class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  var ls = ['one', 'two', 'three', 'four'];
  var _currentitem = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DropDownButton"),
        ),
        body: DropdownButton(
            items: ls
                .map((item) => DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    ))
                .toList(),
            value: _currentitem,
            onChanged: (value) {
              setState(() {
                _currentitem = value.toString();
              });
            })
        // DropdownButton(
        //     items: ls
        //         .map((item) => DropdownMenuItem(
        //               child: Text(item),
        //               value: item,
        //             ))
        //         .toList(),
        //     value: _currentitem,
        //     onChanged: (value) {
        //       setState(() {
        //         _currentitem = value.toString();
        //         Fluttertoast.showToast(msg: _currentitem);
        //       });
        //     }),
        );
  }

  void _dropdownmenu() {
    var drop = AlertDialog(
      title: Text("hii"),
    );
  }
}
