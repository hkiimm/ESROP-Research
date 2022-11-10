import 'package:flutter/material.dart';

/// *INCOMPLETE*
/// Data being streamed onto each individual screen.

class Plot {
  final String id;
  final String title;
  final Color color;

  const Plot({required this.id, required this.title, this.color = Colors.black});
}
