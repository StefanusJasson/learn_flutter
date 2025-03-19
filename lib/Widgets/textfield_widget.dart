import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.text, this.controller, this.obscureText = false});

  final String text;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10,
      children: [
        Text('$text:',
        style: TextStyle(fontSize: 16),),
        SizedBox(
          width: 200,
          height: 50,
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(border: OutlineInputBorder(), labelText: text),
          ),
        )
      ],
    );
  }
}