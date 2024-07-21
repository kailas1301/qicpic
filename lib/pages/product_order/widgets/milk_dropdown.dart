import 'package:flutter/material.dart';

class MilkDropdown extends StatefulWidget {
  const MilkDropdown({super.key});

  @override
  MilkDropdownState createState() => MilkDropdownState();
}

class MilkDropdownState extends State<MilkDropdown> {
  String _selectedMilk = '2% dairy milk';
  final List<String> _milkOptions = [
    '2% dairy milk',
    'No fat milk',
    'Oat beverage',
    'Almond beverage',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputDecorator(
          decoration: InputDecoration(
            labelText: 'Milk',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 10.0), // Adjust padding here
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedMilk,
              icon: const Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Colors.brown,
              ),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedMilk = newValue!;
                });
              },
              items: _milkOptions.map<DropdownMenuItem<String>>((String value) {
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
