import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mj_shopping/pages/hero1.dart';

class hero extends StatefulWidget {
  const hero({Key? key}) : super(key: key);

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Hero(
          tag: 'dash',
          child: InkWell(
            child: Image.asset('assets/images/google.png'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => hero1()));
            },
          )),
    ));
  }
}
