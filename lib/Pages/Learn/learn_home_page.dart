import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Const/profile_list.dart';
import 'package:flutter_batch_5/Pages/Learn/learn_profile_page.dart';
import 'package:flutter_batch_5/Utils/Extension/context_extension.dart';
import 'package:flutter_batch_5/Utils/Extension/routes.dart';
import 'package:flutter_batch_5/Widgets/gridview_widget.dart';

class LearnHomePage extends StatefulWidget {
  const LearnHomePage({super.key});

  @override
  State<LearnHomePage> createState() => _LearnHomePageState();
}

class _LearnHomePageState extends State<LearnHomePage> {
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
        final result = await context.push(LearnProfilePage());
        if(result != null){
          setState(() {
            name = result;
          });
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text(
            'Welcome, $name',
            style: TextStyle(fontSize: 18),
          ),
          GridviewWidget(onClick: onClick),
        ],
      )
    );
  }
}