import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key, required this.title});

  final String title;

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.teal,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.purple,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}