import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class date_time extends StatefulWidget {
  const date_time({Key? key}) : super(key: key);

  @override
  State<date_time> createState() => _date_timeState();
}

class _date_timeState extends State<date_time> {
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("date_Time_Picker"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Time :- ${time.hour} : ${time.minute}'),
            leading: Icon(Icons.access_time),
            onTap: _openCode,
          ),
          ListTile(
            title: Text('Date :- ${date.day} /${date.month}/ ${date.year}'),
            leading: Icon(Icons.calendar_month),
            onTap: _openCode1,
          ),
        ],
      ),
    );
  }

  void _openTimePicker() async {
    TimeOfDay? t = await showTimePicker(context: context, initialTime: time);
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }

  void _openDatepicker() async {
    DateTime? d = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025));
    if (d != null) {
      setState(() {
        date = d;
      });
    }
  }

  void _openCode() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("TimePicker Code"),
        content: Text('''
          TimeOfDay time = TimeOfDay.now();
        **assign var**ListTile(
        title: Text('Time :- ${time.hour} : ${time.minute}'),
        leading: Icon(Icons.access_time),
        onTap: _openTimePicker,),
        ****New Method**
        void _openTimePicker() async {
    TimeOfDay? t = await showTimePicker(context: context, initialTime: time);
    if (t != null) {
      setState(() {
        time = t;
      });
    }
  }
        ''', textAlign: TextAlign.justify),
        actions: [
          Container(
            child: ListTile(
                title: Text("Output of This Following Code"),
                subtitle: Text('Time :- ${time.hour} : ${time.minute}'),
                onTap: _openTimePicker),
          ),
        ],
      ),
    );
  }

  void _openCode1() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Date Code"),
        content: Text(''' 
  DateTime date = DateTime.now();

        **assign var**
        ListTile(
            title: Text('Date :- ${date.day} /${date.month}/ ${date.year}'),
            leading: Icon(Icons.calendar_month),
            onTap: _openCode1,
          ),
        ****New Method**
        void _openDatepicker() async {
    
    DateTime? d = await showDatePicker(context: context, initialDate: date,
        firstDate: DateTime(2018),
        lastDate: DateTime(2025)););
    if (d != null) {
      setState(() {
        time = t;
      });
    }
  }
        ''', textAlign: TextAlign.left),
        actions: [
          Container(
            child: ListTile(
                title: Text("Output of This Following Code"),
                subtitle:
                    Text('Date :- ${date.day} /${date.month}/ ${date.year}'),
                onTap: _openDatepicker),
          ),
        ],
      ),
    );
  }
}
