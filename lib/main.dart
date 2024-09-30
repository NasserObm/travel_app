import 'package:flutter/material.dart';
import 'package:travel_app/Welcome.dart';

void main() => runApp(const Travel());

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Travel',
      home: Welcome(),
    );
  }
}
