import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Const/profile_list.dart';
import 'package:flutter_batch_5/Utils/Extension/routes.dart';
import 'package:flutter_batch_5/Widgets/gridview_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = profileList[0]['Name'];

  void onClick(String menu) async{
    switch(menu.toLowerCase()){
      case 'home':
        Navigator.pushNamed(
          context, 
          AppRoutes.home
        );
        break;
      case 'profile':
        Navigator.pushNamed(context, AppRoutes.profile);
        break;
      case 'settings':
        Navigator.pushNamed(context, AppRoutes.setting);
        break;
      case 'login':
        Navigator.pushNamed(context, AppRoutes.login);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      // ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          GridviewWidget(onClick: onClick),
        ],
      ),
    );
  }
}