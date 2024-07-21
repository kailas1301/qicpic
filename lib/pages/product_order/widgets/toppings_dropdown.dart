import 'package:flutter/material.dart';

class ToppingsDropdown extends StatefulWidget {
  const ToppingsDropdown({super.key});

  @override
  ToppingsDropdownState createState() => ToppingsDropdownState();
}

class ToppingsDropdownState extends State<ToppingsDropdown> {
  String _selectedTopping = 'Cinnamon';
  final List<String> _toppingOptions = [
    'Cinnamon',
    'Chocolate',
    'Caramel',
    'Whipped Cream',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputDecorator(
          decoration: InputDecoration(
            labelText: 'Toppings',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 10.0), // Adjust padding here
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedTopping,
              icon: const Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Colors.brown,
              ),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedTopping = newValue!;
                });
              },
              items:
                  _toppingOptions.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
