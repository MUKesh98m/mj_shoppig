import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mj_shopping/pages/home.dart';

class alert extends StatefulWidget {
  const alert({Key? key}) : super(key: key);

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  ElevatedButton(onPressed: (){
        showDialog(context: context, builder:
        (context)=>AlertDialog(alignment: Alignment.topLeft,
        title: Text("hii"),
          content: Text("Are You Shore To delet this Data"),
          actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          IconButton(onPressed: (){}, icon: Icon(Icons.save))
          ],
        )

        );



        // myalert(context);


      }, child: Text("Alert")),
    );


  // void myalert(BuildContext context) {
  //   var alert=AlertDialog(
  //     title: Text("hii user"),
  //     content: Text("Are You Sure To delet this Line"),
  //     actions: [
  //       TextButton(onPressed: (){
  //         Fluttertoast.showToast(msg: "Your data Is Deleted");
  //       }, child: Text("Yes")),
  //       TextButton(onPressed: (){
  //         Fluttertoast.showToast(msg: "Your data Is Not Deleted ");
  //
  //       }, child: Text("No"))
  //     ],
  //   );
  //
  //   showDialog(context: context, builder: (context)=>alert);
  }
}
