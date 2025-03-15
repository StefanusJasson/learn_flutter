import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Page'),
      ),

      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5
        ),
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.yellow,),
          Container(color: Colors.green,),
          Container(color: Colors.brown,),
          Container(color: Colors.purple,),
          Container(color: Colors.grey,),
          Container(color: Colors.teal,),
          Container(color: Colors.pink,),
          Container(color: Colors.orange,),
          Container(color: Colors.cyan,),
          Container(color: Colors.white,),
          Container(color: Colors.indigo,),
        ],
      ),
    );
  }
}