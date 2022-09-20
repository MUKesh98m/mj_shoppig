import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class swip extends StatefulWidget {
  const swip({Key? key}) : super(key: key);

  @override
  State<swip> createState() => _swipState();
}

class _swipState extends State<swip> {
  var ls = List.generate(50, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text("Service")),
              PopupMenuItem(child: Text("Home")),
              PopupMenuItem(child: Text("About")),
            ];
          })
        ],
      ),
      body: ListView.builder(
          itemCount: ls.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(ls[index]),
              child: ListTile(
                title: Text("Item $index"),
              ),
              onDismissed: (der) {
                ls.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Data $index Delete")));
              },
            );
          }),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepOrange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.supervised_user_circle)),
            ),
            Container(
              height: 50,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.supervised_user_circle)),
            ),
            Container(
              height: 50,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.supervised_user_circle)),
            ),
            Container(
              height: 50,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.supervised_user_circle)),
            ),
          ],
        ),
      ),
    );
  }
}