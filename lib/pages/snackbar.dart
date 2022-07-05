import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class snackbar extends StatelessWidget {
  const snackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating_Button")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                        "Thank You Go Back to Work",
                      ),
                      action: SnackBarAction(label: 'undo', onPressed: () {})),
                );
              },
              child: Text("Click User"))),
    );
  }
}
