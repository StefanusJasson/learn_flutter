import 'package:flutter/material.dart';

class NewsHeadline extends StatelessWidget {
  const NewsHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Title',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text('This is just a summary for the news. Nothing important here. Please ignore this text')
      ],
    );
  }
}