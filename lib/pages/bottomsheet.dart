import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({Key? key}) : super(key: key);

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet"),),
       body:ElevatedButton(onPressed: (){
         bottomsheet(

         );
       }, child:ListView(

       )) ,
    );
  }
}
