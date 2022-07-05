import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class richtext extends StatelessWidget {
  const richtext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: RichText(text: TextSpan(
          text: 'hii',style:GoogleFonts.alegreyaSans(fontSize: 30,color: Colors.black)
       ,children:[
         TextSpan(
           text: 'Mukesh',style: TextStyle(color: Colors.deepOrange

         ,fontSize:
         40)
         )
        ]  ),

        ),
      ),
    ),
    );
  }
}
