import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class floating_button extends StatelessWidget {
  const floating_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating_Button")),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
    );
  }
}
