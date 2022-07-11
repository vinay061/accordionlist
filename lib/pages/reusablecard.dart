import 'package:flutter/material.dart';

class Reusecard extends StatelessWidget {
  String? name;

  Reusecard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(5),
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          leading: const Icon(Icons.radio_button_unchecked_outlined),
          title: Text('$name'),
        ),
      ),
    );
  }
}
