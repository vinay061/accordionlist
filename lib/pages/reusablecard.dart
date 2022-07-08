import 'package:flutter/material.dart';

class Reusecard extends StatelessWidget {
  String? name;

  Reusecard({required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(5),
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: Icon(Icons.radio_button_unchecked_outlined),
          title: Text('$name'),
        ),
      ),
    );
  }
}
