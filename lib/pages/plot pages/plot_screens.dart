import 'package:flutter/material.dart';

/// *INCOMPLETE*
/// All plot screens are initialized here.

class PlotScreen extends StatelessWidget {
  final String title;
  final Color color;

  PlotScreen(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title, style: TextStyle(color: Colors.white)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
