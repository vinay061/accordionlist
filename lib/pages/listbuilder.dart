import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView.builder",
      home: const ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  'GFG',
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text('List item $index'));
          }),
    );
  }
}
