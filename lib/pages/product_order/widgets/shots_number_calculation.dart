import 'package:flutter/material.dart';

class EspressoShotsCounter extends StatefulWidget {
  const EspressoShotsCounter({super.key});

  @override
  EspressoShotsCounterState createState() => EspressoShotsCounterState();
}

class EspressoShotsCounterState extends State<EspressoShotsCounter> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 1) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputDecorator(
          decoration: InputDecoration(
            labelText: 'Espresso Shots',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 10.0), // Adjust padding here
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Shots"),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: _decrementCounter,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('$_counter'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: _incrementCounter,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
