import 'package:flutter/material.dart';
import 'package:accordionlist/pages/reusablecard.dart';

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
          Reusecard(name: 'Drying Hair')
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
