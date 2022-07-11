import 'package:flutter/material.dart';
import 'package:accordionlist/pages/reusablecard.dart';
import 'package:accordionlist/pages/radioselection.dart';
import 'package:accordionlist/pages/radiopostexertion.dart';

class ScrollList extends StatelessWidget {
  const ScrollList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: ScrollBuilder(),
    // );
    return const ScrollBuilder();
  }
}

class ScrollBuilder extends StatelessWidget {
  const ScrollBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scroll List')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            margin: const EdgeInsets.all(5),
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.all(5),
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.all(5),
            color: Colors.amber[400],
            child: const Center(child: Text('Entry C')),
          ),
          //Reusecard(name: 'Test Card One'),
          //Reusecard(name: 'Test Card Two'),
          const ExpansionState()
        ],
      ),
    );
  }
}

class ExpansionState extends StatefulWidget {
  const ExpansionState({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExpansionStateWidget();
  }
}

class _ExpansionStateWidget extends State<ExpansionState> {
  bool _customTileExpanded = false;

  _ExpansionStateWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Card(
        //   margin: const EdgeInsets.all(5),
        //   child: ExpansionTile(
        //     leading: const Icon(Icons.keyboard_double_arrow_left),
        //     title: const Text('Before the Angina Episode'),
        //     trailing: Icon(_customTileExpanded
        //         ? Icons.arrow_drop_down_circle
        //         : Icons.arrow_drop_down),
        //     children: [
        //       Reusecard(name: 'During the day'),
        //       Reusecard(name: 'Woken from sleep'),
        //       Reusecard(name: 'On couch in the evening'),
        //       ExpansionTile(
        //         title: const Text('Environmental Pollutants'),
        //         children: [
        //           Reusecard(name: 'Noise'),
        //           Reusecard(name: 'Lightning'),
        //           Reusecard(name: 'Crowded Environment')
        //         ],
        //       )
        //     ],
        //     onExpansionChanged: (bool expanded) {
        //       setState(() {
        //         _customTileExpanded = expanded;
        //       });
        //     },
        //   ),
        // ),
        // Card(
        //   margin: const EdgeInsets.all(5),
        //   child: ExpansionTile(
        //     leading: const Icon(Icons.edit),
        //     title: const Text('Description'),
        //     trailing: Icon(_customTileExpanded
        //         ? Icons.arrow_drop_down_circle
        //         : Icons.arrow_drop_down),
        //     children: [
        //       Container(
        //         height: 50,
        //         margin: const EdgeInsets.all(5),
        //         color: Colors.blue[400],
        //         child: const Center(
        //           child: Text('Chest Pain'),
        //         ),
        //       ),
        //       ExpansionTile(
        //         title: const Text('Chest Pain'),
        //         collapsedTextColor: Colors.blue[400],
        //         children: [
        //           Reusecard(name: 'Left Side of the Chest'),
        //           Reusecard(name: 'Right side of the Chest'),
        //           Reusecard(name: 'Central to the Chest'),
        //           Reusecard(name: 'Sharp Stabbing Pain'),
        //           Reusecard(name: 'Pressure'),
        //           Reusecard(name: 'Ache/Cramping'),
        //           Reusecard(name: 'Burning')
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        Card(
          margin: const EdgeInsets.all(5),
          child: ExpansionTile(
            leading: const Icon(Icons.keyboard_double_arrow_left),
            title: const Text('Situation Before the Angina Episode'),
            trailing: Icon(_customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down),
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded = expanded;
              });
            },
            children: [
              Card(
                color: Colors.blue[400],
                child: const ExpansionTile(
                  leading: Icon(Icons.bed_rounded),
                  title: Text('At Rest'),
                  children: [RadioCard()],
                  collapsedIconColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Card(
                color: Colors.blue[400],
                child: const ExpansionTile(
                  leading: Icon(Icons.directions_walk_outlined),
                  title: Text('Post Exertion'),
                  children: [RadioPostExertion()],
                  collapsedIconColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              // Card(),
              // Card(),
              // Card(),
              // Card()
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(5),
          child: ExpansionTile(
            leading: const Icon(Icons.alarm),
            title: const Text('Duration of Symptoms'),
            trailing: Icon(_customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down),
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded = expanded;
              });
            },
            children: [RadioCard()],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(5),
          child: ExpansionTile(
            leading: const Icon(Icons.self_improvement),
            title: const Text('How did you relax?'),
            trailing: Icon(_customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down),
          ),
        )
      ],
    );
  }
}
