import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

class dropdownmenu extends StatefulWidget {
  const dropdownmenu({Key? key}) : super(key: key);

  @override
  State<dropdownmenu> createState() => _dropdownmenuState();
}

class _dropdownmenuState extends State<dropdownmenu> {
  List categoryItemlist = [];

  Future getAllCategory() async {
    var baseUrl =
        "https://mj09store.000webhostapp.com/flutter_php_connection/get.php";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  var dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown List"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text('chooseNumber'),
              items: categoryItemlist.map((item) {
                return DropdownMenuItem(
                  value: item['id'].toString(),
                  child: Text(item['name'].toString()),
                );
              }).toList(),
              onChanged: (newVal) {
                setState(() {
                  dropdownvalue = newVal;
                });
              },
              value: dropdownvalue,
            ),
            MultiSelectDialogField(
              items: categoryItemlist
                  .map((e) => MultiSelectItem(e, e['name']))
                  .toList(),
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                categoryItemlist != values;
              },
            ),
            MultiSelectDialogField(
              items: categoryItemlist
                  .map((e) => MultiSelectItem(e, e['name']))
                  .toList(),
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                categoryItemlist = values;
              },
            ),
            MultiSelectChipDisplay(
              items: categoryItemlist
                  .map((e) => MultiSelectItem(e, e['name']))
                  .toList(),
              onTap: (value) {
                setState(() {
                  categoryItemlist.remove(value);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}