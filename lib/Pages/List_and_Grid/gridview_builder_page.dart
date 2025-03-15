import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Const/menu_list.dart';

class GridviewBuilderPage extends StatefulWidget {
  const GridviewBuilderPage({super.key});

  @override
  State<GridviewBuilderPage> createState() => _GridviewBuilderPageState();
}

class _GridviewBuilderPageState extends State<GridviewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Builder Page'),
      ),

      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5
        ), 
        itemCount: menu.length,
        itemBuilder:(context, index) => GestureDetector(
          onTap: () {
            print(menu[index]['menu']);
          },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: menu[index]['icon'] as Widget,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(menu[index]['menu'] as String,)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}