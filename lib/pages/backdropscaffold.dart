import 'package:backdrop/backdrop.dart';
import 'package:flutter/cupertino.dart';

class backdrop extends StatelessWidget {
  const backdrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        appBar: BackdropAppBar(
          title: Text("Backdrop"),
        ),
        backLayer: Center(child: Text("Front")),
        frontLayer: Center(child: Text("Front")));
  }
}