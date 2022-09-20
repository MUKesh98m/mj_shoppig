import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class baseline extends StatelessWidget {
  const baseline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              padding: EdgeInsets.only(left: 50),
              child: Baseline(
                baselineType: TextBaseline.alphabetic,
                baseline: 50,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: IntrinsicWidth(
                    child: Column(

                      children: [
                        ElevatedButton(onPressed: () {}, child: Text("hiii")),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
