import 'package:flutter/material.dart';
import 'package:accordionlist/pages/accordion_pages.dart';
import 'package:accordionlist/pages/anjina_page.dart';
import 'package:accordionlist/pages/home_page.dart';
import 'package:accordionlist/pages/listview.dart';
import 'package:accordionlist/pages/cardlist.dart';
import 'package:accordionlist/pages/listbuilder.dart';
import 'package:accordionlist/pages/scrolllist.dart';
import 'package:accordionlist/pages/radioselection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accordion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScrollList(),
      // home: const RadioCard(),
    );
  }
}
