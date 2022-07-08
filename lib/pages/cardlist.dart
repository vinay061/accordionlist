import 'package:flutter/material.dart';
import 'package:accordionlist/pages/reusablecard.dart';
import 'package:accordionlist/pages/listbuilder.dart';

class Cardlist extends StatelessWidget {
  Cardlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card List'),
      ),
      body: Column(
        children: <Widget>[
          CardOne(),
          CardTwo(),
          CardThree(),
          Reusecard(name: 'Symptoms'),
          Reusecard(name: 'Drying Hair'),
          Reusecard(name: 'Pain in the left chest'),
          const ExpansionState(),
        ],
      ),
    );
  }
}

// class _CardListPage extends State<Cardlist> {
//   _CardListPage();

//   @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('Card List'),
//   //     ),
//   //     body: Column(
//   //       children: [CardOne(), CardTwo()],
//   //     ),
//   //   );
//   // }

//   Widget _cardView() {
//     return Card(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: const <Widget>[
//           ListTile(
//             leading: Icon(Icons.punch_clock_rounded),
//             title: Text('Resting Time'),
//             trailing: Icon(Icons.radio_button_unchecked_outlined),
//           ),
//           ListTile(
//             leading: Icon(Icons.punch_clock_rounded),
//             title: Text('Walking'),
//             trailing: Icon(Icons.radio_button_unchecked_outlined),
//           )
//         ],
//       ),
//     );
//   }
// }

class CardOne extends StatelessWidget {
  CardOne();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const ListTile(
          leading: Icon(Icons.punch_clock_rounded),
          title: Text('Resting Time'),
          trailing: Icon(Icons.radio_button_unchecked_outlined),
        ),
      ),
    );
  }
}

class CardTwo extends StatelessWidget {
  CardTwo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: const ListTile(
          leading: Icon(Icons.bed_outlined),
          title: Text('Sleep'),
          trailing: Icon(Icons.radio_button_unchecked_outlined),
        ),
      ),
    );
  }
}

class CardThree extends StatelessWidget {
  CardThree();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        margin: EdgeInsets.all(5),
        child: ListTile(
            leading: Icon(Icons.radio_button_unchecked_outlined),
            title: Text('Going to Sleep')),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: ExpansionTile(
            leading: const Icon(
              Icons.keyboard_double_arrow_left,
              color: Colors.black,
            ),
            title: const Text('Before the Angina Episode'),
            subtitle: const Text('click to check the events'),
            trailing: Icon(_customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down),
            children: [
              // const ListTile(
              //   title: Text('Resting'),
              // ),
              // const ListTile(
              //   title: Text('Walking'),
              // ),
              // const ListTile(
              //   title: Text('Sitting on Couch'),
              // ),
              Reusecard(name: 'During the day'),
              Reusecard(name: 'Woken from Sleep'),
              Reusecard(name: 'On couch evening'),
              ExpansionTile(
                title: const Text('Environmental Pollutants'),
                children: [
                  Reusecard(name: 'Noise'),
                  Reusecard(name: 'Lightning'),
                  Reusecard(name: 'Crowded Environment')
                ],
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded = expanded;
              });
            },
          ),
        ),
      ],
    );
  }
}
