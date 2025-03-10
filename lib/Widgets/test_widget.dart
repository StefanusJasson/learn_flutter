import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final String name;
  final int age;

  const TestWidget({
    super.key,
    required this.name,
    required this.age
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Nama: $name"),
        Text("Umur: $age"),
      ],
    );
  }
}