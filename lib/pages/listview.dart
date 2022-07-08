import 'package:flutter/material.dart';
import 'package:accordionlist/models/task.dart';
//import '../models/task.dart';

class ListPage extends StatefulWidget {
  ListPage();

  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  _ListPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIST VIEW'),
      ),
      body: _taskList(),
    );
  }

  Widget _taskList() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            'TaskOne',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.check_circle_outline_rounded),
        ),
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            "TaskTwo:",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.check_circle_outline_rounded),
        ),
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            "TaskThree:",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.radio_button_unchecked_rounded),
        ),
        ListTile(
          leading: const Icon(Icons.access_time_filled),
          title: const Text(
            "TaskFour:",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(Icons.check_circle),
        )
      ],
    );
  }
}
