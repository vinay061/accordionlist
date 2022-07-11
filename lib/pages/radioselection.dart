import 'package:flutter/material.dart';

class RadioCard extends StatelessWidget {
  const RadioCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: Scaffold(
    //     body: Center(
    //       child: RadioState(),
    //     ),
    //   ),
    // );
    return const SizedBox(
      width: 500,
      height: 300,
      child: Scaffold(
        body: Center(child: RadioState()),
      ),
    );
  }
}

enum AtRest { duringTheDay, wokenFromSleep, onCouchEvening, goingToSleep }

enum PostExertion { walking, showering, dryingHair }

enum EnvironmentPollutants { noise, lightning, crowdedEnvironment }

enum Stress { situationalStress, emotionalStress }

enum ChestPain {
  leftSideOfTheChest,
  rightSideOfTheChest,
  centralToTheChest,
  sharpStabbingPain,
  pressure,
  acheCramping,
  buring
}

enum TakingGtnSprayTable { oneDoseTwoSprays, twoDoses, threeDoses }

enum OtherActions { deepBreathing, rest, meditation }

class RadioState extends StatefulWidget {
  const RadioState({Key? key}) : super(key: key);

  @override
  State<RadioState> createState() {
    return _RadioState();
  }
}

class _RadioState extends State<RadioState> {
  AtRest? _atRest = AtRest.duringTheDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Card(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: const Text('During the day'),
            leading: Radio<AtRest>(
              value: AtRest.duringTheDay,
              groupValue: _atRest,
              onChanged: (AtRest? value) {
                setState(() {
                  _atRest = value;
                });
              },
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: const Text('Woken from sleep'),
            leading: Radio<AtRest>(
              value: AtRest.wokenFromSleep,
              groupValue: _atRest,
              onChanged: (AtRest? value) {
                setState(() {
                  _atRest = value;
                });
              },
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: const Text('On couch evening'),
            leading: Radio<AtRest>(
              value: AtRest.onCouchEvening,
              groupValue: _atRest,
              onChanged: (AtRest? value) {
                setState(() {
                  _atRest = value;
                });
              },
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(5),
          color: Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: const Text('Going to sleep'),
            leading: Radio<AtRest>(
              value: AtRest.goingToSleep,
              groupValue: _atRest,
              onChanged: (AtRest? value) {
                setState(() {
                  _atRest = value;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
