import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grid extends StatefulWidget {
  const grid({Key? key}) : super(key: key);

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/json/jsondata.json"),
    builder: (context,snapshot){
    var mydata=json.decode(snapshot.data.toString());
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 5/2,
              crossAxisSpacing: 200,
             ),
          itemCount: mydata.length,
          itemBuilder: (BuildContext ctx, index) {
            return SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/google.png',width: 50,alignment: Alignment.topLeft),
                    Text(mydata["name"],style: TextStyle(color: Colors.white),),
                    Text(mydata["Model"],style: TextStyle(color: Colors.white)),
                    Text(mydata["Description"],style: TextStyle(color: Colors.white)),
                    Text(mydata["Price"]),

                  ],
                ),
                decoration: BoxDecoration(

                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
              ),
            );
          }
          ),
    );

      //print("mydata");
    }

        )
      ),
    );
  }
}
