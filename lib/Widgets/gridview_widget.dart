import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Const/menu_list.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key, this.onClick});

  final Function(String menu)? onClick;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5
      ), 
      itemCount: menu.length,
      itemBuilder:(context, index) => GestureDetector(
        onTap: () => onClick?.call(menu[index]['menu'] as String),
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
    );
  }
}