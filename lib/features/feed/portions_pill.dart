import 'package:flutter/material.dart';
import '../../data/models/kai_event.dart';

class PortionsPill extends StatelessWidget {
  const PortionsPill({super.key, required this.event});

  final KaiEvent event;



String get label {
    if (!event.isActive) {
      return 'Gone';
    }
    if (event.portionsLeft > 10) {
      return 'Plenty';
    }
    if (event.portionsLeft >= 3) {
      return 'Going fast';
    }
    return 'Almost gone';
  }

  Color get backgroundColor {
    if (!event.isActive) {
      return Colors.grey;
    }
    if (event.portionsLeft > 10) {
      return Colors.green;
    }
    if (event.portionsLeft >= 3) {
      return Colors.amber;
    }
    return Colors.red;
  }
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}