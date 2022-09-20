import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/mult_select_dialog.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

class multpleselection extends StatefulWidget {
  const multpleselection({Key? key}) : super(key: key);

  @override
  State<multpleselection> createState() => _multpleselectionState();
}

class _multpleselectionState extends State<multpleselection> {
  static List<Animal> _animals = [
    Animal(id: 1, name: "Lion"),
    Animal(id: 2, name: "Flamingo"),
    Animal(id: 3, name: "Hippo"),
    Animal(id: 4, name: "Horse"),
    Animal(id: 5, name: "Tiger"),
    Animal(id: 6, name: "Penguin"),
    Animal(id: 7, name: "Spider"),
    Animal(id: 8, name: "Snake"),
    Animal(id: 9, name: "Bear"),
    Animal(id: 10, name: "Beaver"),
    Animal(id: 11, name: "Cat"),
    Animal(id: 12, name: "Fish"),
    Animal(id: 13, name: "Rabbit"),
    Animal(id: 14, name: "Mouse"),
    Animal(id: 15, name: "Dog"),
    Animal(id: 16, name: "Zebra"),
    Animal(id: 17, name: "Cow"),
    Animal(id: 18, name: "Frog"),
    Animal(id: 19, name: "Blue Jay"),
    Animal(id: 20, name: "Moose"),
    Animal(id: 21, name: "Gecko"),
    Animal(id: 22, name: "Kangaroo"),
    Animal(id: 23, name: "Shark"),
    Animal(id: 24, name: "Crocodile"),
    Animal(id: 25, name: "Owl"),
    Animal(id: 26, name: "Dragonfly"),
    Animal(id: 27, name: "Dolphin"),
  ];
  List<Animal> _selectedAnimals = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        MultiSelectDialogField(
          items: _animals.map((e) => MultiSelectItem(e, e.name)).toList(),
          listType: MultiSelectListType.CHIP,
          onConfirm: (values) {
            _selectedAnimals != values;
          },
        ),
      ]),
    );
  }
}

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}