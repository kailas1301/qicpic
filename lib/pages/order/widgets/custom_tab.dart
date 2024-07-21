import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CustomTab({required this.text, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            color: isSelected
                ? Colors.orange
                : const Color.fromARGB(255, 104, 74, 63),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          '|',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 154, 109, 92),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
