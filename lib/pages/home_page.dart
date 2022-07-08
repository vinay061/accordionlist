import 'package:flutter/material.dart';
import 'package:accordionlist/models/task.dart';
//import '../models/task.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight;

  String? _newTaskContent;

  Box? _box;

  _HomePageState();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _HomePageState();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: const Text('TASKLY'),
      ),
      body: _taskView(),
      floatingActionButton: _addTaskButton(),
    );
  }

  Widget _taskView() {
    return FutureBuilder(
        future: Hive.openBox('tasks'),
        builder: (BuildContext context, AsyncSnapshot _snapshot) {
          if (_snapshot.hasData) {
            _box = _snapshot.data;
            return _taskList();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget _taskList() {
    List tasks = _box!.values.toList();
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext _context, int _index) {
        var task = Task.fromMap(tasks[_index]);
        return ListTile(
          title: Text(
            task.content.toString(),
            style: TextStyle(
                decoration: task.done! ? TextDecoration.lineThrough : null),
          ),
          subtitle: Text(
            task.timestamp.toString(),
          ),
          trailing: Icon(
            task.done!
                ? Icons.check_box_outlined
                : Icons.check_box_outline_blank_outlined,
            color: Colors.red,
          ),
          onTap: () {
            task.done = !task.done!;
            _box!.putAt(
              _index,
              task.toMap(),
            );
          },
          onLongPress: () {
            _box!.deleteAt(_index);
            setState(() {});
          },
        );
      },
    );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(
      onPressed: _displayTaskPopup,
      child: const Icon(Icons.add),
    );
  }

  void _displayTaskPopup() {
    showDialog(
        context: context,
        builder: (BuildContext _context) {
          return AlertDialog(
            title: const Text("Add new Task!"),
            content: TextField(
              onSubmitted: (_) {
                if (_newTaskContent != null) {
                  var _task = Task(
                      content: _newTaskContent!,
                      timestamp: DateTime.now(),
                      done: false);
                  _box!.add(_task.toMap());
                  setState(() {
                    _newTaskContent = null;
                    Navigator.pop(context);
                  });
                }
              },
              onChanged: (_value) {
                setState(() {
                  _newTaskContent = _value;
                });
              },
            ),
          );
        });
  }
}

// return ListView(
  //   children: <Widget>[
  //     ListTile(
  //       leading: const Icon(Icons.access_time_filled),
  //       title: const Text(
  //         'TaskOne',
  //         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
  //       ),
  //       subtitle: Text(DateTime.now().toString()),
  //       trailing: const Icon(Icons.check_circle_outline_rounded),
  //     ),
  //     ListTile(
  //       leading: const Icon(Icons.access_time_filled),
  //       title: const Text(
  //         "TaskTwo:",
  //         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
  //       ),
  //       subtitle: Text(DateTime.now().toString()),
  //       trailing: const Icon(Icons.check_circle_outline_rounded),
  //     ),
  //     ListTile(
  //       leading: const Icon(Icons.access_time_filled),
  //       title: const Text(
  //         "TaskThree:",
  //         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
  //       ),
  //       subtitle: Text(DateTime.now().toString()),
  //       trailing: const Icon(Icons.check_circle_outline_rounded),
  //     )
  //   ],
  // );
