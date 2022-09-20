import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expansionlist extends StatefulWidget {
  const expansionlist({Key? key}) : super(key: key);

  @override
  State<expansionlist> createState() => _expansionlistState();
}

class _expansionlistState extends State<expansionlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTile(
        title: Text("Languages"),
        children: [
          ListTile(
            title: Text("C"),
          ),
          ListTile(
            title: Text("C++"),
          ),
          ListTile(
            title: Text("Java"),
          ),
          ListTile(
            title: Text("python"),
          ),
        ],
      ),
    );
  }
}